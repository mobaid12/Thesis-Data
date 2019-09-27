function autoaddcdrAction() {

$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$start_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new IVR_Time(
'End_Time' => $toRow->$end_Time))



$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$start_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new MOP_Time(
'Start_Time' => $toRow->$start_Time))

        
        $getTempTable = $this->ObjectDao->getTempTable();
        
        $reuest = $this->getRequest();
        if($reuest->isPost())
        {
            $post   = $reuest->getPost();
            //
            if(isset($post['respose']))
                $respose_false = $post['respose'];
        }
        //Zend_Debug::dump($getTempTable);
        //die;
        
        foreach($getTempTable as $row)
        {
            $fields = explode(':',$row->data);
            if(isset($fields[1]) && isset($fields[2]))
            {
                //Zend_Debug::dump($fields);die;
                $phone_number       = $fields[0];
                $MOP_reciver_id    = $fields[1];
                $MOP_sender_id     = $fields[2];
                $amount             = $fields[3];
                $type               = $fields[4];
                $method             = $fields[5];
                $account            = $fields[6];
                $currency           = $fields[7];
                
                /**
                 * Phone_Number:MOP_Reciver:MOP_Sender:Amount:Type:Method:Account:Currency:Extension:Trx_way
                 */
                
                if (isset($fields[8]))
                    $extension          = $fields[8];
                else
                    $extension          = '';    
                
                if (isset($fields[9]))
                    $trxWay         = $fields[9];
                else
                    $trxWay         = '';
                /**
                  *  
                  */
                if($extension && is_numeric($extension))
                    $extension      = "extension=$extension";
                else
                    $extension      = '';    
                
                if( !is_numeric($phone_number) || 
                    !is_numeric($MOP_reciver_id) || 
                    !is_numeric($MOP_sender_id) ||
                    !is_numeric($amount)
                  )
                {
                    //$value = number_format(0); 
                    //print($value);
                    //die;
                }
                else
                {
                    $banks = $this->checkBankesAction($MOP_sender_id, $MOP_reciver_id);
                    
                    if(!$account)
                        $account = 1;
                    
                    $clientReceiver = $this->ObjectDao->getClient($MOP_reciver_id);
                    
                    $MOP_receiver    = substr($MOP_reciver_id, 0, 3);
                    $MOP_sender      = substr($MOP_sender_id, 0, 3);
                                
                    if($type == 3 && $method == 3)
                    {//bill trx
                        $type      = 3;
                        $method    = 3;
                        
                        $extension = "$fields[8]";
                    }
                    if($type == 4 && $method == 4)
                    {// mall
                        $type      = 4;
                        $method    = 4;
                        
                        $extension = "$fields[8]";
                    }
                    elseif(isset($clientReceiver->user_type))
                    {//if exist then the trancefer is local
                        $type   = $clientReceiver->user_type;
                        $method = $clientReceiver->user_type;
                    }
                    elseif($MOP_sender != $MOP_receiver)
                    {//if not the trancefer is remetance
                        $type   = 13;
                        $method = 13;
                    }
                    
                    if($MOP_reciver_id && $MOP_sender_id && is_numeric($MOP_reciver_id) && is_numeric($MOP_sender_id))
                        
                    {
                                
                            $transactionLast  = $this->ObjectDao->addcdrclientwaiting($phone_number,
                                                                                      $MOP_reciver_id,
                                                                                      $MOP_sender_id,
                                                                                      $amount,
                                                                                      null,
                                                                                      $type,
                                                                                      $method,
                                                                                      $trxWay,
                                                                                      null,
                                                                                      $banks['issuer_bank'],
                                                                                      $banks['receiver_bank'],
                                                                                      $account,
                                                                                      $currency,
                                                                                      $extension);   
                            
                                                                                      
                            
                            /**
                            * commission 
                            */
                            $this->commissionAction($amount, $type, $banks['client_id_issuer'], $banks['issuer_bank'], $transactionLast);
                            /**
                            * 
                            */
                            
                                if(!$transactionLast)
                                {    
                                    //$value = number_format(0); 
                                    //print($value);
                                }
                                else
                                {
                                    if(!isset($respose_false))
                                    {
                                        $value = number_format($transactionLast); 
                                        print($value);    
                                    }
                                }
                    }
                     
                }
                
                $getTempTable = $this->ObjectDao->deleteTempTable($row->id);
                //$value = number_format(1); 
                //print($value);
                //die;   
            }   
               
        }
        
        //$value = number_format(00); 
        //print($value);
        die;
                    
       
                    
    }