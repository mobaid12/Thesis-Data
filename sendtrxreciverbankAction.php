function sendtrxreciverbankAction() {

$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$end_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new MOP_Time(
'End_Time' => $toRow->$end_Time))
        
		
		$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$start_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new Bank_Time(
'Start_Time' => $toRow->$start_Time))






        $request    = $this->getRequest();
        $postData   = $request->getPost();
        
        if($postData['MOPid'])
        {
            $getClient = $this->ObjectDao->getClient($postData['MOPid']);
            
            $cdr_id     = $postData['id'];
            
            $phoneDao   = MOP_Model_Dao_Factory::getInstance()->setModule('client')->getLogDao();
        	$phoneDao->setDbConnection($this->conn);
            //$cdrRecord  = $phoneDao->getById($cdr_id, true);
            $cdrRecord  = $phoneDao->getRecorde($cdr_id);
            
            $MOP_sender = $cdrRecord->src_MOPid;
            
            $country_code_receiver    = substr($postData['MOPid'], 0, 3);
            $country_code_sender      = substr($MOP_sender, 0, 3);
            
            //Zend_Debug::dump($cdrRecord);die('d52828d');
            
            if($country_code_receiver != $country_code_sender)
            //if(1)
            {
                $getCountry = $this->ObjectDao->getCountry("code = '$country_code_receiver'");
                
                if(isset($getCountry->operator_ip))
                {
                    //$getRecord  = $phoneDao->getRecorde($cdr_id);
                    
                    $operator_ip = $getCountry->operator_ip;
                    $cdrRecord  = $this->connoperatorAction($cdrRecord, $operator_ip);
                }
                //Zend_Debug::dump($getCountry);die('dd');
            }
            else
                $this->connectiontoserverAction($cdrRecord, $getClient->issuer_bank_ip);
            
            /**
            *  to Correspondent Bank ...
            */
            /*$cdrRecord->correspondent_bank = 1;
            
            $bank = $this->ObjectDao->banks(null, true);   
            if(isset($bank->ip))
                $bankCoo = $this->connectiontoserverAction($cdrRecord, $bank->ip);
            */
            $value = number_format(1); 
            print($value);die;
        }
        else
        {
            $value = number_format(0); 
            print($value);die;
        }
        
        //print($ip);die;
    }