<?php

////////////////////////////////////////////////////////////////////////////
//
//
//						PHP JSON PRSOR	
//
//															     By: SANI HYNE
//                                        http://www.linkedin.com/in/delickate 
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////// SANI: Global Functions ///////////////////////////////////////////
//SANI: To parse URL
 	function curlBySani($url)
    {
        $ch = curl_init ($url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
        $contents=curl_exec($ch);

        if (curl_errno($ch)) {
            return curl_error($ch);
            return "\n<br />";
            $contents = '';
        } else {
            curl_close($ch);
        }

        if (!is_string($contents) || !strlen($contents)) {
            return "Failed to get contents.";
            $contents = '';
        }

        return $contents;
    }
	
 

	
//SANI: To Post JSON String	
	function curlByHyne($URL, $DataToStore)
	{
		$ch = curl_init();

							curl_setopt($ch, CURLOPT_URL,$URL);
							curl_setopt($ch, CURLOPT_POST, 1);
							/*curl_setopt($ch, CURLOPT_POSTFIELDS,
										"data=value1");*/
							
							// in real life you should use something like:
							 curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($DataToStore));
							
							// receive server response ...
							curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
							
							$server_output = curl_exec ($ch);
							
							curl_close ($ch);
							
							return $server_output;
							// further processing ....
							//if ($server_output == "OK") { echo ""; } else { echo $server_output; }
	}
	
	
////////////////////////////////////////////////////////////////////////////
//
//
//						PHP JSON PRSOR	
//
//															     By: SANI HYNE
//                                        http://www.linkedin.com/in/delickate 
//////////////////////////////////////////////////////////////////////////////	

//SANI: Get Key
$getKeyUrl 		= "http://www.rims.punjab.gov.pk/api/databaseupdate/formkey";
$result_json    = curlBySani($getKeyUrl);

$key_of_day     = json_decode($result_json);

echo $key_of_day->key."<br/>-----------------------<br/>";
print_r($result_json);
exit;

//To see what key we just received
//echo $key_of_day->key;

//SANI: URL to post data
$URL = "http://dev.bapps.pitb.gov.pk/RIMS/api/databaseupdate/formdata";

//SANI: Query string to upload data
$query_string = array('key' => $key_of_day->key, 'data' => '{"pntn":"25251490","branchcode":"BR25251490496","invoice_number":"431-01","invoice_date": "2015-08-04","invoice_time": "02:41","discount_percent": "2","service_charges_percent": "5","tax_percent":"16","table_no": "1","phone": "042456456","customer_name": "Sani","detail":[{"item_code":"34","item":"Piza", "quantity":"1","unit_price":"725"}, {"item_code":"23", "item":"Korma", "quantity":"12", "unit_price":"185"}]}');

$result = curlByHyne($URL, $query_string);
print_r($result);



?>