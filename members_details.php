<?php
session_start();
include("db.php");
?>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="stylesheet" href="css/card.css">

	<?php 
	$id=$_REQUEST['id'];
	// $id = $_GET['id'];
	// $sql = " SELECT * FROM aboutteam WHERE id = $id";
	$result=mysqli_query($con,"select id, fullname, idcard,phone,position,Education,description,imageM,link_fb from aboutteam where id='$id'") or die ("query 2 incorrect.......");
	// where id='$id' :dựa vào id show ra đúng yêu cầu
	// neu de trong vong while(list...) thi se xuat ra tat ca card cua tat ca cac thanh vien trong nhom
	  list($id,$fullname,$idcard,$phone,$position,$education,$desc,$imageM,$fb)= mysqli_fetch_array($result);
	{
		echo "
		<div id='busicard' >
		<div class='menu'>
		<div class='movembar'>
		<a href='#' class='mbut'><div class='mb_ereg_search_regs()'></div></a>
		</div>
		<div class='movegear'>
			<img src='img/ntt.png'style='height: 50px;width:50px;margin-top:22px;margin-right:13px;'/>
		</div>
		</div>
		<!-- hình -->
		<div class='user'>
		 <img src='img/".$imageM."' style='height: 140px;width:140px;'/>
		</div>
		<!-- Tên -->
		<h1> ".$fullname."</h1>

		<ul class='info'>
		<!-- Vai trò -->	
		<li>".$position."</li>
		<span class='hrtop'></span>
		<!-- Học vấn -->
		<a href='https://phongdaotao.ntt.edu.vn/'' target='blank'><li>".$education."</li></a>


		</ul>
		<ul class='contacts'>
		<a href=".$fb." target='blank'><i class='fa fa-facebook-square' aria-hidden='true'></i></a>
		<a href='https://www.instagram.com/'' target='blank'><i class='fa fa-instagram' aria-hidden='true'></i></a>
		<a href='https://twitter.com/?lang=en''><i class='fa fa-twitter-square' aria-hidden='true'></i></a>
		</ul>
		<div class='bfollow'>
		<a href=".$fb.">Follow</a>
		</div>
		<div class='content'>
		<p>".$desc."</p>
		</div>
		</div>";
	}
	    mysqli_close($con); 

		?> 

