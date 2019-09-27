function changestatusAction()
    {
		$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$start_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new CentralBank_Time(
'Start_Time' => $toRow->$start_Time))
		
		
		
        $request = $this->getRequest();
        
        $postData = $request->getPost();
        
        //$phone = $postData['phone'];
        
        $MOPid = $postData['MOPid'];
       
        $id = $postData['id'];
        
        $status = $postData['status']; 
        
//        $MOPid = '1000056429';
//        $id = '72';
        $callback = $this->ObjectDao->selectcdrclientwaiting(null, null, "src_MOPid = '$MOPid' AND id = '$id' AND (status = '2' OR status = '3') ");
        
        
        
        /**
         * if trx methode = 3 -> the trx to bill bayment :)
         * here the extra data form = agent=[AGENT ID]
         */
        if(isset($callback) && $callback->trx_method == 3)
        {
            $billData = $callback->extra_data;
            $billData = explode('=',$billData);
            
            if(count($billData) == 2)
            {// if count = 2 then there only AgentID
                $conn = MOP_Db_Connection::factory()->getMasterConnection();
    			$agentDao = MOP_Model_Dao_Factory::getInstance()->setModule('agent')->getAgentDao();
    			$agentDao->setDbConnection($conn);
    			
                $agentDetails = $agentDao->getById($billData[1]);
                
                $data = array('agent_id'=> $billData[1]);
                
                $agent = $agentDao->updateAgent($data);
                
                if($agentDetails->conn_type == 4) 
                    $send_data = $this->directconnectionAction($agentDetails->linklink,array('MOP_id'=> $callback->src_MOPid));
                
            }
            elseif(count($billData) == 4 && $billData[2] == 'bill_number')
            {
                $conn = MOP_Db_Connection::factory()->getMasterConnection();
    			$agentDao = MOP_Model_Dao_Factory::getInstance()->setModule('agent')->getAgentDao();
    			$agentDao->setDbConnection($conn);
    			$agentDetails = $agentDao->getById($billData[1]);
                
                $data = array('agent_id'=> $billData[1],'bill_number' => $billData[3],'MOP_id' => $MOPid);
                
                
                $agent = $agentDao->updateAgent($data);
                
                if($agentDetails->conn_type == 4) 
                    $send_data = $this->directconnectionAction($agentDetails->link,$data);
                if($agentDetails->conn_type == 5)
                {
                    $isoMessage = $billData[1].''.$MOPid.''.$billData[3];
                    $data = array('iso'=>$isoMessage);
                    $send_data = $this->directconnectionAction($agentDetails->link,$data);
                } 
                    
            }
            //Zend_Debug::dump();die;
        }
        
        if($callback)
        {
            $changeStauts = $this->ObjectDao->changeStauts($callback->id, $status, $callback->country_id);
            
            if(!isset($callback->amount_sender))
                $callback->amount_sender = 114;
                
            /*$message_sender = "money+transfer+processed+successfully,+$callback->amount_sender+JD+has+been+transfer+from+your+account+to+MOP+account:+$callback->dst_MOPid";
            $message_sender        = trim(str_replace(' ','+',$message_sender));
            
            if($sms_status_extension = file_get_contents("http://172.20.10.106:13013/cgi-bin/sendsms?username=playsms&password=playsms&from=MOP&to=$callback->src&text=$message_sender"))*/
            
            /**
             *  if request Credit send number to the client
             */ 
            //echo 'change status ....1';
            if(isset($callback) && isset($postData) && $postData['status'] == 1 && $callback->trx_method == 4)
            {
                $catID = $callback->extra_data;
                $catID = str_replace('category_id=','',$catID);
                
                
                //Zend_Debug::dump();die;
                 //echo 'HERE change status ....12 HERE ';
                 $this->sendcreditsmsAction($catID,$callback->src);
            }
            //echo 'change status ....2';
            
            if(isset($postData['remittance']))
            {
                    /**
                     *
                    */
                    $country_code_receiver    = substr($callback->dst_MOPid, 0, 3);
                    $getCountry = $this->ObjectDao->getCountry("code = '$country_code_receiver'");
                    if(isset($getCountry->operator_ip))
                    {
                        $operator_ip = $getCountry->operator_ip;
                        $callback->remittance = true;
                        $cdrRecord  = $this->connoperatorAction($callback, $operator_ip);
                        
                        if($cdrRecord == 6)
                        {
                            $changeStauts = $this->ObjectDao->changeStauts($callback->id, 6, $callback->country_id);
                        }
                    }
                    /**
                     *
                    */
                        
            }
            
            
            $value = number_format(1);
            print($value);die;
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


$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$end_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new CentralBank_Time(
'End_Time' => $toRow->$end_Time))	
	
	
	}