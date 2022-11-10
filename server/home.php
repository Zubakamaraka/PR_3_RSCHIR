<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit;
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Главная</title>
		<link href="second.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1>Галерея</h1>
				<a href="home.php"><i class="fas fa-home-alt"></i>Главная</a>
				<a href="profile.php"><i class="fas fa-user-circle"></i>Профиль</a>
                <a href="index.html"><i class="fa-solid fa-circle-info"></i>Информация</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Выйти</a>
			</div>
		</nav>
	
        <div class="content">
			<h2>Главная</h2>
            <?php
		   	$con = mysqli_connect("db", "user", "password", "appDB");
		   	$result=$con->query("SELECT * FROM mesto"); 
		   	while ($row = mysqli_fetch_assoc($result)) 
		   	{
		   		echo "<p>" ."<a>" ."Работа пользователя: "."<b>".$row['mesto_user']."</b>" ."</a>"."<br>". "<br>".$row['mesto_img'] . "</p>";
		   	}
			?>
        </div>
	</body>
</html>