<?
	ini_set("display_errors", 1);
	error_reporting(E_ALL);

	//$payload['aps'] = array('alert' => 'Test alert', 'badge' => 1, 'sound' => 'default');
	$payload['aps'] = array('alert' => array('title' => 'Test alert', 'body' => 'This is a test push notification'), 'badge' => 1, 'sound' => 'default');
	$payload = json_encode($payload);
	

	$deviceToken = "c7e86ae036d64b590077e088c714c6492b3f8c257eef100baa39697220997d81";
	$apnsHost = 'gateway.sandbox.push.apple.com';
	$apnsPort = 2195;
	$apnsCert = 'ios.pem';
	$entrustCert = "ios.cer";

//	chdir(__DIR__);
	
	$streamContext = stream_context_create();
	stream_context_set_option($streamContext, 'ssl', 'local_cert', $apnsCert);
	stream_context_set_option($streamContext, 'ssl', 'passphrase', 'yntree');
	stream_context_set_option($streamContext, 'ssl', 'cafile', $entrustCert);

	$apns = stream_socket_client('ssl://' . $apnsHost . ':' . $apnsPort, $error, $errorString, 2, STREAM_CLIENT_CONNECT, $streamContext);

	if (!$apns)
			exit("Failed to connect: $error $errorString");	

	$apnsMessage = chr(0) . chr(0) . chr(32) . pack('H*', str_replace(' ', '', $deviceToken)) . chr(0) . chr(strlen($payload)) . $payload;
	
	$result = fwrite($apns, $apnsMessage, strlen($apnsMessage));

	@socket_close($apns);
	@fclose($apns);
	
		if (!$result)
			print 'Message not delivered' . PHP_EOL;
		else
			print 'Message successfully delivered' . PHP_EOL;	
		
?>