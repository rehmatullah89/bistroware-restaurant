<?
	// http://rims.punjab.gov.pk/Documentation/index.html
	
	
	function getToken($bLive = true)
	{
		$sApiUrl = (($bLive == true) ? "http://www.rims.punjab.gov.pk/api/databaseupdate/formkey/" : "http://dev.bapps.pitb.gov.pk/RIMS/api/databaseupdate/formkey/");
		
		
		$ch = curl_init ($sApiUrl);
		
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST,0);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER,0);
		curl_setopt($ch, CURLOPT_PROXY, '203.99.52.126:8080');
		curl_setopt($ch, CURLOPT_TIMEOUT, 10);
		
		$sRawResponse = curl_exec($ch);
/*
		print "<pre>";
		
		if (curl_errno($ch))
		{
			print curl_errno($ch)." - ".curl_error($ch);
			print "<hr />";
		}
		
		print $sRawResponse;
		print "</pre>";
		print "<hr />";
*/
		if (curl_errno($ch))
			return "";
		
		curl_close($ch);

		if (!is_string($sRawResponse) || !strlen($sRawResponse))
			return "";

		
		$sResponse = @json_decode($sRawResponse);
		
		return $sResponse->key;
	}
					

	function postOrder($sToken, $sOrderParams, $sOrderDetails, $bLive = true)
	{
		$sOrderData = $sOrderParams;
		
		if (@is_array($sOrderDetails))
			$sOrderParams["detail"] = $sOrderDetails;

		
		$sData   = array("key" => $sToken, "data" => @json_encode($sOrderData));
		$sApiUrl = (($bLive == true) ? "http://www.rims.punjab.gov.pk/api/databaseupdate/formdata/" : "http://dev.bapps.pitb.gov.pk/RIMS/api/databaseupdate/formdata/");
		
		
		$ch = curl_init($sApiUrl);

		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($sData));
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST,0);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER,0);
		curl_setopt($ch, CURLOPT_PROXY, '203.99.52.126:8080');	
		curl_setopt($ch, CURLOPT_TIMEOUT, 10);
		
		$sRawResponse = curl_exec($ch);
/*
		print "<pre>";
		
		if (curl_errno($ch))
		{
			print curl_errno($ch)." - ".curl_error($ch);
			print "<hr />";
		}
		
		print $sRawResponse;
		print "</pre>";
		print "<hr />";		
*/
		
		if (curl_errno($ch))
			return curl_error($ch);
		
		curl_close($ch);

		if (!is_string($sRawResponse) || !strlen($sRawResponse))
			return "Failed to get contents";

		
		$sResponse = @json_decode($sRawResponse, true);
		
		if ($sResponse["success"] != "")
			return str_replace("Data saved successfully for following #id.", "", $sResponse["success"]);
			
		return $sResponse["error"];
	}
					
				
				
	// Get Token
	$sToken = getToken( );

	If ($sToken != "")
	{
		print "RIMS Key: {$sToken}<br /><br />";
		
		
		
		// Query string to upload data
		$sOrderDetails = array( );
		
		$sOrderDetails[] = array( "item_code"  => 34,
								  "item"       => "Piza",
								  "quantity"   => 1,
								  "unit_price" => 725 );
						  
		$sOrderDetails[] = array( "item_code"  => 12,
								  "item"       => "Korma",
								  "quantity"   => 12,
								  "unit_price" => 185 );
		
		
		
		$sOrderParams = array("key"                     => $sToken, 
							  "pntn"                    => "25251490",
							  "branchcode"              => "BR25251490496",
							  "invoice_number"          => 1,
							  "invoice_date"            => "2015-08-04",
							  "invoice_time"            => "02:41 PM",
							  "table_no"                => 1,
							  "phone"                   => "04231234567",
							  "customer_name"           => "RIMS Test",
							  "total_invoice_amount"    => 2945,
							  "discount_percent"        => 0,
							  "discount_amount"         => 445,
							  "service_charges_percent" => 5,
							  "service_charges_amount"  => 0,
							  "tax_percent"             => 16,
							  "total_amount"            => 3025,
							  "total_tax_amount"        => 400,
							  "business_date"           => "2015-08-04 02:41:00");

		$sResponse = postOrder($sToken, $sOrderParams, $sOrderDetails);
		
		if (@is_numeric($sResponse))
			print "Order Posted in RIMS, ID: {$sResponse}";
		
		else 
			print "Error: {$sResponse}";
	}
	
	else
		print "ERROR: Unable to get the RIMS Token";
?>