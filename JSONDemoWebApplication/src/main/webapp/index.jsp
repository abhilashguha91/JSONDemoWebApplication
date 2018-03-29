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

var obj4 = {user1 : obj1 , user2 : obj2, user3 : obj3};

document.write(obj4.user2.user + " has migrated to " + obj4.user2.coutry);
document.write("<hr />");

document.write("Another tedious way to write it is:");
document.write("<br>");
document.write(obj4["user2"]["user"] + " has migrated to " + obj4["user2"]["coutry"]);
document.write("<hr />");

var meats = ["pork","lamb","chicken"];
var fruits = ["orange","mango","apple"];
// again arrays/collections are treated as objects of it's own so they can be used to make more complex objects
var foods = {meat:meats , fruit:fruits};

document.write("In meat I like "+foods.meat[2] + " and in fruits I love"+foods.fruit[1]);
document.write("<hr />");


</script>
</body>
</html>
