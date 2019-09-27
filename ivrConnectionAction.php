public function ivrConnectionAction($url, $postdata) {


$conn = MOP_Db_Connection::factory()->getMasterConnection();
$TimeDao = MOP_Model_Dao_Factory::getInstance () ->setModule ('bank')->getBankDao();
$TimeDao->setDbConnection ($conn);
$times = dateTime ("U");
$start_Time = dateTime ("Y-m-d H:i:s",$times);
$this->ObjectDao->update (new IVR_Time(
'Start_Time' => $toRow->$start_Time))

        
        $url = $url.'/ivr/ivr.php';
        $postdata = array('data'=>$postdata);
        
        $useragent= "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)";
        $user_data = http_build_query($postdata);
        
        //Zend_Debug::dump($user_data);die;
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_USERAGENT, $useragent); //set our user agent
        curl_setopt($ch, CURLOPT_POST, count($postdata)); //set how many paramaters
        curl_setopt($ch, CURLOPT_URL,$url); //set the url we want to use
        curl_setopt($ch, CURLOPT_POSTFIELDS, $user_data); //set data to post
    
        ob_start();
        $result= curl_exec ($ch); //execute and get the results
        $response = ob_get_contents();
        
        curl_close ($ch);
        
        return $response;
    }
    
    function smsipAction() {
        
        $record     = $this->settingAction(32, 25);
        $smsIP      = $record->value;
        
        return $smsIP;
        
    }
    
    public function sendSMSAction($phone, $MessageBody)
    {
        $new_time    = time() - 3600;
        $SendingTime = date("Y-m-d",$new_time) . 'T' . date("H:i:s",$new_time);
        
        $UserName    = "moexpress";
        $Password    = "987654321";
        
        $Body        = $MessageBody;
        $Recipients  = $phone;
        
        $Language    = "English";
        
        $new_request = "<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><soap:Body><SendSMS xmlns=\"http://crownit.com/\"><UserName>$UserName</UserName><Password>$Password</Password><SenderID></SenderID><Body>$Body</Body><Recipients>$Recipients</Recipients><SendingTime>$SendingTime</SendingTime><Language>$Language</Language></SendSMS></soap:Body></soap:Envelope>";
        
        //print_r($new_request);die;
        $url = 'http://sms.crownit.com/service/sms.asmx';
        
        $useragent= "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)";
        
        $extraparams1 = "Content-Type: text/xml; charset=utf-8";
        
        $extraparams2 =    "Content-Length: ".strlen($new_request);
        
        $extraparams3 = "SOAPAction: \"http://crownit.com/SendSMS\""."\n";
    
    
           $ch = curl_init();
           curl_setopt($ch, CURLOPT_USERAGENT, $useragent); //set our user agent
           curl_setopt($ch, CURLOPT_URL,$url); //set the url we want to use
           curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE); // incase of a redirect
           curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE); // to get the result it self
           curl_setopt($ch, CURLOPT_POSTFIELDS, ""); //set data to post (Null)
           curl_setopt($ch, CURLOPT_HTTPHEADER, array($extraparams1,$extraparams2,$extraparams3,$new_request)); // Injectiong Request into header
           
           $result= curl_exec ($ch); //execute and get the results
           curl_close ($ch);
           return $result;
    }
    