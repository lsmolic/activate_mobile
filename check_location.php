<?


$users_lat = isset($_REQUEST['latitude']) ? $_REQUEST['latitude'] : 0;
$users_long = isset($_REQUEST['longitude']) ? $_REQUEST['longitude'] : 0;

//These need to match where ever the object is
$last_lat = 33.95816970533333;
$last_long = -118.43590301866668;
$maximum_distance_to_object = 2000;

function radians($deg) {  // convert degrees to radians
  return $deg * pi() / 180;
}

function toFeet($lat1, $lon1, $lat2, $lon2)
{
  $R = 6371; // earth's mean radius in km
  $dLat = radians($lat2-$lat1);
  $dLon = radians($lon2-$lon1);
  $lat1 = radians($lat1);
  $lat2 = radians($lat2);

  $a = sin($dLat/2) * sin($dLat/2) + cos($lat1) * cos($lat2) * sin($dLon/2) * sin($dLon/2);
  $c = 2 * atan2(sqrt($a), sqrt(1-$a));
  $d = $R * $c;
  $d2= $d * 3280.8399; 
  return $d2;
}

$feet_to_object = toFeet($last_lat, $last_long, $users_lat, $users_long);
//$ourFileName = "/Users/lsmolic/Sites/activate_mobile/tmp/test.txt";
//$ourFileHandle = fopen($ourFileName, 'w') or die("can't open file");
//fclose($ourFileHandle);
try
{
	if ($feet_to_object < $maximum_distance_to_object)
	{
	/* Script for turning LED on and off */

		// Load the serial port class
		require("php_serial.class.php");

		//Initialize the class

		$serial = new phpSerial();
		//Specify the serial port to use... in this case COM1
		$serial->deviceSet("/dev/cu.usbmodem641");
		//Set the serial port parameters. The documentation says 9600 8-N-1, so
		$serial->confBaudRate(9600); //Baud rate: 9600
	//	$serial->confParity("none");  //Parity (this is the "N" in "8-N-1")
	//	$serial->confCharacterLength(8); //Character length (this is the "8" in "8-N-1")
	//	$serial->confStopBits(1);  //Stop bits (this is the "1" in "8-N-1")

		//Action required
		//Now we "open" the serial port so we can write to it
		$serial->deviceOpen();
		$serial->sendMessage(chr(10)); // start Transmission
		$serial->sendMessage("1"); // turn LED ON
		$serial->sendMessage(chr(13)); // end Transmission

		//We're done, so close the serial port again
		$serial->deviceClose();
		exit(200);
		return "Enjoy!";
	} 
	else 
	{
		exit(401);
		return "Move closer!";
	}
} 
catch (Exception $e)
{
	exit(500);
	throw new Exception("Oh no! Something went wrong!");
}
?>