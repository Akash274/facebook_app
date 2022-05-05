<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>FB Companion APP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>

<body bgcolor="lightblue">
<script type="text/javascript">
function logout() {
	FB.logout(function (response) {
		location.reload(true);
	});
}
(function (d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s);
	js.id = id;
	js.src = "https://connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
	<% String user_id = (String) request.getAttribute("user_id"); %>
	<div style="width: 30%; margin: auto; padding-top: 10rem;">
		<h3>Search for the image</h3>	
		<form class="example" action="/Search" style="max-width:300px">
		<input type ="hidden" name="user_id" id = "user_id" value="<%=user_id %>")>
		  <input type="text" placeholder="Search.." id="searchLabel" name="searchLabel" value = "">
		  <button type="submit"><i class="fa fa-search"></i></button>
		</form>
	</div>
	
</body>
</html> 