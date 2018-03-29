<html>
<body>
<h2>Hello World!</h2>
<script type="text/javascript">

var person = {
		name : "Brad"
};

document.write(person.name);
document.write("<hr />");

var obj1 = {user : "John", age : 18 , country: "USA"};
var obj2 = {user : "Chang", age : 24 , country: "China"};
var obj3 = {user : "Pooja", age : 22 , country: "India"};

document.write(obj2.country);
document.write("<hr />");

obj2.country = "Canada";

document.write(obj2.country);
document.write("<hr />");

var jsObj = {user : "Pooja", 
		     age : 22 , 
		     country: "India", 
		     email : function(){ return 'angel.pooja@gmail.com'}};
		     
document.write(jsObj.email);
document.write("<hr />");

document.write(jsObj.email());
document.write("<hr />");

// This is a valid JS object but an invalid JSON as functions are not one of the Data types

var obj4 = {user1 : obj1 , user2 : obj2, user3 : obj3};

document.write(obj4.user2.user + " has migrated to " + obj4.user2.coutry);
document.write("<hr />");

document.write("Another tedious way to write it is:");
document.write("<br>");
document.write(obj4["user2"]["user"] + " has migrated to " + obj4["user2"]["coutry"]);
document.write("<hr />");

var meats = ["pork","lamb","chicken",4];
var fruits = ["orange","mango","apple"];
// again arrays/collections are treated as objects of it's own so they can be used to make more complex objects
var foods = {meat:meats , fruit:fruits};

document.write("In meat I like "+foods.meat[3] + " and in fruits I love"+foods.fruit[1]);
document.write("<hr />");

// This shows how easy it is to access

// To make a JSON object into a Java String (Equivalent to the toString() method in java)

var s = JSON.stringify(obj1);
document.write(s);
document.write("<hr />");

// To make a String back into a jason object

var jsonObj = JSON.parse(s);
document.write(jsonObj.user);
document.write("<hr />");

// Conversion to readable objects is that simple

</script>
</body>
</html>
