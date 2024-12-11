<?php

@putenv("TZ=Asia/Karachi");
@date_default_timezone_set("Asia/Karachi");
@ini_set("date.timezone", "Asia/Karachi");
	
/*try
{
    $fp=pfsockopen("172.16.1.65", 9100);

    fputs($fp, "Test Print");
    fclose($fp);

    echo 'Successfully Printed';
}
catch (Exception $e) 
{
    echo 'Caught exception: ',  $e->getMessage(), "\n";
}*/

/////////////////////////////////////////////////////////////
//send data via TCP/IP port : the printer has tcp interface
$port = "9200";
//$host = "172.16.1.65";
$host = "172.16.0.36";
$string = "Test print string....";
$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
if ($socket === false) {
    echo "socket_create() failed: reason: " . socket_strerror(socket_last_error    ()) . "\n";
} else {
    echo "OK.\n";
}
$result = socket_connect($socket, $host, $port);
if ($result === false) {
    echo "socket_connect() failed.\nReason: ($result) " . socket_strerror    (socket_last_error($socket)) . "\n";
} else {
    echo "OK.\n";
}
socket_write($socket, $string, strlen($string));
socket_close($socket);
/*\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/
/*
function fwrite_stream($fp, $string) 
{
    for ($written = 0; $written < strlen($string); $written += $fwrite) {
        $fwrite = fwrite($fp, substr($string, $written));
        if ($fwrite === false) {
            return $written;
        }
    }
    return $written;
}

//$fp = fsockopen("172.16.1.65",9100);
$fp = fsockopen("125.209.75.183",9100);
if (!$fp){
    die("Cannot open socket");
}
//$mytext="Hello this is a test print 13 ";
$string  =  "\n Red Snapper Nikkie demanded rtre ertr rfggfdg 3\n";
$string .=  "Pic Snapper shiki demanded 3\n";
//$string="\x1B@".$mytext."\x1Bd\x07\x1Bi";
$bytes=fwrite_stream($fp, $string);
fclose($fp);
printf('wrote %d bytes',$bytes);*/

/////////////////////////////////////////
/*
$file= file_get_contents("test.txt");
$fp = fsockopen ("125.209.75.185", 9100, $errno, $errstr, 30); 
if (!$fp) { 
    echo "Error (string, then number): $errstr ($errno)<br>\n"; 
} else { 
    echo "port opened successfully, sending file<br><br>"; 
    echo "file returned: $file<br>"; 
    fwrite_stream($fp,$file) or die("can't find $file"); 
}     
fclose($fp);*/