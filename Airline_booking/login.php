<?php
session_start();
include_once 'dbconnect.php';

if(isset($_SESSION['user'])!="")
{
	header("Location: homepage.html");
}

// if(isset($_POST['btn-login']))
// {
	
	$username=$_POST['username'];
	$pwd=$_POST['pwd'];
	$res=mysqli_query($conn,"SELECT * FROM passenger WHERE username='$username'");
	$row=mysqli_fetch_array($res);
	if($row['password']==$pwd)
	{
		$_SESSION['user']=$row['username'];
		header("Location: homepage.html");
	}
	else
	{
	
	echo "<script>alert('wrong username or wrong password ');</script>";

	
		
	}
//}


mysqli_close($conn);
?>