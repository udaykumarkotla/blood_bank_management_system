 <!-- Fixed navbar -->
<html>
	<head>
		<style>
			.navbar nav ul{
				list-style-type:none;
				float:right;
				margin-right:28px;
			}
			.navigation{
				width:40%;
				float:left;
				padding:20px;
			}
			.navbar{
				width:60%;
				padding:10px;
				float:right;
			}
			.navbar nav ul li{
				padding:10px;
				float:left;
			}
			.navbar a{
				color:white;
			}
			.border{
				background-color:crimson;
				height:55px;
				overflow:hidden;
			}
			.navbar nav ul li:hover{
				display:block;
				margin:1px;
				background-color:white;
				border-radius:10px;
			}
			.navigation a{
				color:white;
			}
			.navigation a:hover{
				text-decoration:none;
				color:white;
			}
			.navbar nav ul li a:hover{
				color:red;
				text-decoration:none;
			}
		</style>
	</head>
	<div class="border" >
	<nav class="navigation">
		<ul>
		<a href="HOME.php"><b>BLOOD BANK</b></a>
		<ul>
	</nav>	
	<div class="navbar">
	<nav>	
		<ul>
			<li><a href="donor.php"><b>NEW DONOR</b></a></li>
			<li><a href="home.php"><b>CHECK AVAILABILITY</b></a></li>
			<li><a href="logout.php"><b>LOGOUT</b></a></li>
		</ul>
	</nav>
	</div>
	</div>	
</html>