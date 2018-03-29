<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">

function ajax_get_json(){
    // Create our XMLHttpRequest object
    var hr = new XMLHttpRequest();

	hr.open("GET", "myObject.json", true);
	//hr.open("GET", "myList.json", true);
    
	// Set content type header information with the JSON MIME type
    hr.setRequestHeader("Content-type", "application/json");
	
    // Access the onreadystatechange event for the XMLHttpRequest object
    hr.onreadystatechange = function() {
	    if(hr.readyState == 4 && hr.status == 200) {
		    var return_data = JSON.parse(hr.responseText);
		    var resultDiv = document.getElementById("results");
		    
		    resultDiv.innerHTML = return_data.user + " is " + return_data.age + " years old and lives in "+return_data.country+".";
			
		    /* for(var obj in return_data){
		    	
		    	results.innerHTML += return_data[obj].user + " is in my list. <br />"; 
		     }*/
		    
	    }
    }
    // Sending no value as of now
    hr.send(null); 
    resultDiv.innerHTML = "requesting...";
}


</script>

</head>
<body>

<h2>Hello World!</h2>


<div id="results"></div>
<script type="text/javascript">ajax_get_json();</script>

</body>
</html>