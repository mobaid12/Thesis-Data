function callbackAction()
    {
	
	
	




        $request = $this->getRequest();
        $op = $request->getParam('op');
        /**
        * if op = "id" return id from cdr table
        * if op = number then op = mymoID and return call back for this mymoid
        */
        if($op == 'id')
            $callback = $this->ObjectDao->selectcdrclientwaiting(null,"status = '2' ", null,'id');
        elseif(is_numeric($op))
            $callback = $this->ObjectDao->selectcdrclientwaiting(null,"p.status = '2' AND p.src_mymoid = '$op' ", null, null);
        else
            $callback = 0;                       
        
        echo $callback;die;  
        //die('callback');
    }
	
    function changestatusAction()
    {
        $request = $this->getRequest();
        
        /**
        * SMS IP ...
        */
        $smsip = $this->smsipAction();
        
        $mymoid = $request->getParam('mymoid');
        //$phone  = $request->getParam('phone');
        $id     = $request->getParam('id');
        $op     = $request->getParam('op');
        
        if($op == 'lostphone')
            $callback = $this->ObjectDao->selectcdrclientwaiting(null, null, "id = '$id' AND src_mymoid = '$mymoid' AND status='4'",'lostphone');
        else
            $callback = $this->ObjectDao->selectcdrclientwaiting(null, null, "id = '$id' AND src_mymoid = '$mymoid' AND (status = '2' OR status = '3') ");            
        
        //Zend_Debug::dump($op);die('d');
        
        if($callback)
        {
            if($op == 'waiting')
            {
                $status = 3;    
                $changeStauts = $this->ObjectDao->changeStauts($callback->id, $status, null,$callback->country_id);
                $statusServer = $this->connectiontoserverAction($mymoid, $status, $id);
            }
            elseif($op == 'error') //----- error or cancelling call ------   
            {
                $status = 0;
                $changeStauts = $this->ObjectDao->changeStauts($callback->id, $status, null,$callback->country_id);
                $statusServer = $this->connectiontoserverAction($mymoid, $status, $id);
            }
            elseif($op == 'lostphone') //---------------------------------   
            {
                $status = 4;
                
                $getDstMymoAcc = $this->ObjectDao->getDstMymoAcc($mymoid);
                
                //Zend_Debug::dump($getDstMymoAcc);die('s');
                
                if(isset($getDstMymoAcc->client_id))
                {
                     $id = $this->ObjectDao->inActiveClient($getDstMymoAcc->client_id);
                     $statusServer = $this->connectiontoserverAction($mymoid, $status, $id, 'lostphone');   
                }
                die;
            }  
            else    
            {
                /**
                 *  -------------------- payment successfully --------------------
                 */
                if($op == 'froud') 
                    $status = 7;
                else
                    $status = 1;   
                                     
                $changeStauts = $this->ObjectDao->changeStauts($callback->id, $status,null,$callback->country_id);
                
//******************************************** XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// old type to change status in the operator   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//$statusServer = $this->connectiontoserverAction($mymoid, $status, $id); XXXXXXXXXXXX
//******************************************** XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                
                /**
                * SMS To Sender
                */
                if($changeStauts && $callback->src)
                {
                    //echo 'here message';
                    //$currency = $this->ObjectDao->currency($callback->currency);
                    $srcPhoneNumber = $callback->src;
                    $message_sender = "money+transfer+processed+successfully,+$callback->amount_sender+JD+has+been+transfer+from+your+account+to+MYMO+account:+$callback->dst_mymoid";
                    
                    // alaa
                    /*$clientNew = $this->ObjectDao->getClient($callback->src_mymoid);
                    $newlimit = array('amount'=>$callback->amount_sender, 'client_id'=>$clientNew->client_id);
                    $updatLimit = $this->ObjectDao->updateLimitNew($newlimit);*/
                    // alaa
                }
                
                /**
                * SMS To Receiver if the MyMo in the same bank
                */
                $sms_status_extension = false;
                $sms_status_main      = false;
                
                $extension = $callback->extra_data;
                $extension = explode('=',$extension);
                
                $checkExtrasim = $this->ObjectDao->checkExtrasim($callback->dst_mymoid);
                
                if(count($extension) && isset($extension[1]) && $extension[0] == 'extension' && $checkExtrasim)
                {
                    if(count($checkExtrasim))
                    {
                        $getDstMymoAcc = $checkExtrasim[$extension[1]-1];
                    }
                }
                
                // send to extension ..
                if(isset($getDstMymoAcc) && $getDstMymoAcc && $getDstMymoAcc->phone)
                {
                    $srcPhoneNumber = $getDstMymoAcc->phone;
//                    $message        = "you+have+received+amount:'.$callback->amount_receiver.'+JD+from:+$callback->src_mymoid";
                    $message        = "you+have+received+amount:+$callback->amount_receiver+JD+from+:+$callback->src_mymoid";
//                    $message        = trim(str_replace(' ','+',$message));
                   
                    //if($sms_status_extension = file_get_contents("http://172.20.10.106:13013/cgi-bin/sendsms?username=playsms&password=playsms&from=MyMo&to=$srcPhoneNumber&text=$message"))
                    if($sms_status_extension = file_get_contents("http://$smsip/sms/sendsms.php?to=$srcPhoneNumber&text=$message"))
                    //if(1)
                            $sms_status_extension = true;
                    else
                            $sms_status_extension = false;                       
                }
                // send to main phone ..
                $getDstMymoAcc = $this->ObjectDao->getDstMymoAcc($callback->dst_mymoid);
                $decPhoneNumber = $getDstMymoAcc->phone;
                
                if($getDstMymoAcc && $getDstMymoAcc->phone)
                //if(1)
                {
                    //$sendISO = $this->isoAction($callback->id,'recevier');
                    /**
                    *   start
                    * - Commented check iso to receiver  - 08-02-2014 -
                    *   replace the iso message and add amf table in the client with status field
                    *       status:         depends on banking customer account.
                    *       sms_receiver:   status sms receiver.
                    *       sms_sender:     status sms sender. 
                    */
                    //$iso = $this->isoAction($checkIfRowExist->id);
                    $iso = $this->ObjectDao->amfCheck($callback->id);
                    if (isset($iso->status) && $iso)
                    {
                        $sendISO = $iso->status;
                    }
                    /**
                     *  end
                     */
                    
                    //Zend_Debug::dump($sendISO);die('ISO');
                    $srcPhoneNumber = $getDstMymoAcc->phone;
                    //$message        = "you+have+received+amount:+$callback->amount_receiver+from:+$callback->src_mymoid";
                    $message        = "you+have+received+amount:+$callback->amount_receiver+JD+from:+$callback->src_mymoid";
                    //$message        = trim(str_replace(' ','+',$message));
                    
                    
                    
                    //if($sms_status_main = file_get_contents("http://172.20.10.106:13013/cgi-bin/sendsms?username=playsms&password=playsms&from=MyMo&to=$srcPhoneNumber&text=$message"))
                    $sms_status_main = file_get_contents("http://$smsip/sms/sendsms.php?to=$decPhoneNumber&text=$message");
                    if(is_numeric($sms_status_main))
                    //if(1)
                    {
                        $sms_status_main = true;
                        $cdr = $this->ObjectDao->amfUpdate($callback->id,'sms_receiver',1);
                    }
                    else
                    {
                        $sms_status_main = false;
                        $cdr = $this->ObjectDao->amfUpdate($callback->id,'sms_receiver',0);
                        /**
                         * call back if the SMS not delivered
                        */
                        $this->createClientFileAction($callback->id, $decPhoneNumber, '10');
                    }
                    
                    if($sendISO)
                    {
                        // change in the operator ....
                        $statusServer = $this->connectiontoserverAction($mymoid, $status, $id);    
                    }
                    else
                    {
                        $changeStauts = $this->ObjectDao->changeStauts($callback->id, 6,null,$callback->country_id);
                        // change in the operator ....
                        $statusServer = $this->connectiontoserverAction($mymoid, 6, $id);
                    }
                }
                
                //$send_sms = file_get_contents("http://172.20.10.106/sms/sendsms.php?to=$callback->src&text=Test+$message_sender");
                //$send_sms = file_get_contents("http://172.20.10.106:13013/cgi-bin/sendsms?username=playsms&password=playsms&from=MyMo&to=$callback->src&text=$message_sender");
                //echo 'after sending sms ...';
                
                if(isset($sendISO) && !$sendISO)
                {
                    $changeStauts = $this->ObjectDao->changeStuts($callback->id, 6, null, $callback->country_id);
                    // status operator
                    $statusServer = $this->connectiontoserverAction($mymoid, 6, $id);
                }
                elseif(isset($sendISO) && $sendISO)
                {
                    if(!$sms_status_main && !$sms_status_extension)
                    {
                            /**
                             * HERE WILL CREATE CALL BACK FILE TO SUCCESSFULLY............
                             *    
                             */    
                    }
                    
                    $message_sender = trim(str_replace(' ','+',$message_sender));
                    // sender
                    
                    //$send_sms = file_get_contents("http://172.20.10.106:13013/cgi-bin/sendsms?username=playsms&password=playsms&from=MyMo&to=$callback->src&text=$message_sender");
                    $send_sms = file_get_contents("http://$smsip/sms/sendsms.php?to=$callback->src&text=$message_sender");
                    if(is_numeric($send_sms))
                        $cdr = $this->ObjectDao->amfUpdate($callback->id,'sms_sender',1);
                    else
                    {
                        $cdr = $this->ObjectDao->amfUpdate($callback->id,'sms_sender',0);
                        $this->createClientFileAction($dataForm->id, $callback->src, '9');
                    }      
                }
                //Zend_Debug::dump($sendISO);
                //echo '1 - here after sms ....';    
                /**
                * IF $getDstMymoAcc == NULL then the Receiver in another bank
                * Send transaction record to the receiver bank
                */
                //Zend_Debug::dump($callback);die('ddd');
                if(!$getDstMymoAcc)
                //if(1)
                {
                    //echo 'here another bank';
                    //die;
                    $callback->status = 1;
                    $callback->sender_bank_ip = Mymo_Config::getConfig()->web->bankip;
                    
                    $this_cb = $this->ObjectDao->correspondentBank();
                    //echo $this_cb->ip;echo '<br/>';
                    $callback->correspondent_bank = 1;
                    $getBankIp = $this->connectiontoserverAction($callback,null,$callback->id,null,$this_cb->ip);
                    
                    if($getBankIp!=111111)
                    {
                        //$sms_Status = file_get_contents("http://172.20.10.106:13013/cgi-bin/sendsms?username=playsms&password=playsms&from=MyMo&to=$callback->src&text=The+operation+Cant+be+completed+,Please+Try+later");

                        $MESSAGE = "The+operation+can+not+be+completed+,+Please+try+later";
                        
                        $sms_Status = file_get_contents("http://$smsip/sms/sendsms.php?to=$callback->src&text=$MESSAGE");
                        $changeStauts = $this->ObjectDao->changeStuts($callback->id, 6, null, $callback->country_id);
                        $value = number_format(0); 
                        print($value);die;
                    }
                    else
                        $sms_Status = file_get_contents("http://$smsip/sms/sendsms.php?to=$callback->src&text=$message_sender");
                        //$sms_Status = file_get_contents("http://172.20.10.106:13013/cgi-bin/sendsms?username=playsms&password=playsms&from=MyMo&to=$callback->src&text=$message_sender");  
                }
                /**
                * 
                */
            }
            
            //$value = number_format(1);
            //print($value);
            die;
        }
        else
        {
            $value = number_format(0); 
            print($value);die;
        }
$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$end_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new Bank_Time(
'End_Time' => $toRow->$end_Time))  





  }