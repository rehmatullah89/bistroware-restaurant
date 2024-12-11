<?
	$objCurl = @curl_init('http://119.160.92.2:7700/sendsms_url.html');
	
	@curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
	@curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
	@curl_setopt($objCurl, CURLOPT_POST, TRUE);
	@curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=03224163305&Message=".urlencode("This is a TEST GAIA SMS")));
	@curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);
	
	print $sResponse = @curl_exec ($objCurl);
	print curl_error($objCurl);
	
	@curl_close($objCurl);
?>