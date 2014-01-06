

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<title>CLICK ME</title>
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js'></script>
<script type='text/javascript'>

function findLocation() 
{
  navigator.geolocation.getCurrentPosition(foundLocation, noLocation);
}

function foundLocation(position)
{
  var lat = position.coords.latitude;
  var long = position.coords.longitude;

  //var value=toFeet(last_lat, last_long, lat, long);

  $.get("check_location.php", "latitude="+lat+"&longitude="+long , function(data,textStatus){
    //alert("data:"+data)
//NEEDS TO RESPECT RESPONSE STATUS. THIS IS NOT WORKING. ALWAYS RETURNS SUCCESS
	if(data < 10)
	{
		alert(textStatus);
	}
	else
	{
		alert(textStatus);
	}
	
  });

  //DEBUG
  //alert(value + "ft: "+ lat + " , " + long + " , " + last_lat + " , " + last_long);
  

//  if(value < 25)
//  {
//    alert("NAILED IT");
//  }
//  last_lat=lat;
//  last_long=long; 
//  var target_lat = 33.9581546837;
//  var target_long = 118.43585638812;



//  alert();
}
function noLocation()
{
  alert('Could not find location');
}
</script>
</head>
<body>
<form>
<a onclick="javascript:findLocation();" href="#">
	<img src='x_button.jpg' width="168px" height="168px" />
</a>
</form>
</body>
</html>
