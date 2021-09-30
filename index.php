<?php
require_once 'php/DBConnect.php';
$db = new DBConnect();


$message=NULL;
if(isset($_POST['loginBtn'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $flag = $db->login($username, $password);
    if($flag){
        header("Location: home.php");
    } else {
        $message = "Username of password was incorrect!";
    }
}
$title="Login"; 
?>
<html>
<head>
<style>
	body{
		background:url(bd.png) no-repeat right fixed;
		background-size:900px 900px;
	}
	button{
	background-color:crimson;
	color:white;
	padding:0px 25px;
	width:120px;
	height:32px;
	position:center;
	border-radius:10px 10px 10px 10px;
	left:13px;
	float:center;
	cursor:pointer;
	}
	button[type="submit"]:hover{
	background-color:green;
	}
	h1{
		color:crimson;
	}
	input[type="text"] {
	background-color:crimson;
	color:white;
	width:240px;
	height:30px;
	border:none;
	outline:none;
	left:40px;
	padding:0px 25px;
	border-radius:10px;
	
	}
	input[type="password"] {
	background-color:crimson;
	color:white;
	width:240px;
	height:30px;
	border:none;
	outline:none;
	left:40px;
	padding:0px 25px;
	border-radius:10px;
	
	}
	::placeholder{
		color:white;
		opacity:1;
	}
	.panel{
		position:absolute;
		top:25%;
		left:22%;
	}
	
</style>
</head>
<body>
<div class="container">
<br></br><br></br>
<div class="row">
    <div class="panel">
        <div class="panel-heading">
             <h1><b> Admin Login </b></h1>
        </div>
        <div class="panel-body">
           <form class="form-vertical" role="form" method="post" action="index.php">
            <input type="text" class="form-control" required="true" name="username" placeholder="Username">
			<br> </br>
			<input type="password" required="true" class="form-control" name="password" placeholder="Password"></div>
            <button type="submit" name="loginBtn" class="btn">Login</button>
           </form>
        </div>
    </div>
</div>
</body>
</html>


