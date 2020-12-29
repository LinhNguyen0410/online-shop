<?php
session_start();
include("db.php");
include "header.php";
?>
<style>

#busicard {
  position: relative;
  background: linear-gradient(to left, #F7FE2E, #FE2E9A);
  border-radius: 35px;
  min-height: 500px;
  max-width: 450px;
  margin: 30px 550px;
  font-family: 'Open Sans', sans-serif;
  font-size: 1.1em;
  text-decoration: none;
  outline: none;
  border: 4px solid black;
  box-sizing: border-box;
  list-style: none;
  text-align: center;
}

#busicard h1 {
	color: #FAEAFF;
}

.movembar {
  display: flex;
    flex-direction: row;
    justify-content: baseline;
    align-items: flex-start;
}

.movegear {
  display: flex;
    flex-direction: row-reverse;
    justify-content: flex-start;
    align-items: flex-start;
  margin-top: -2px;
}

.mbar {
  width: 18px;
  height: 3px;
  background: #FAEAFF;
  position: absolute;
  margin: 35px;
}

.mbar:before {
  content: '';
  width: 12px;
  height: 3px;
  background: #FAEAFF;
  position: absolute;
  top: 6px;
  left: 0;
}

.mbar:after {
  content: '';
  width: 18px;
  height: 3px;
  background: #FAEAFF;
  position: absolute;
  top: 12px;
  left: 0;
}

.mbut:hover .mbar, .mbut:hover .mbar:before, .mbut:hover .mbar:after {
  background: #2F4858;
}

.user {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
user-select: none;
}

.user img {
  border-radius: 100px;
  width: 160px;
  border: 4px solid #FAEAFF;
  margin-top: -20px;
}

.gear {
  background-image:
    radial-gradient(at center center, #00D2C8 23%, #eee 25%, #FAEAFF 57%, transparent 53%),
    linear-gradient(0deg, transparent 43%, #eee 40%, #FAEAFF 60%, transparent 60%),
    linear-gradient(45deg, transparent 43%, #eee 43%, #FAEAFF 57%, transparent 57%),
    linear-gradient(90deg, transparent 40%, #eee 40%, #FAEAFF 60%, transparent 60%),
    linear-gradient(135deg, transparent 43%, #eee 43%, #FAEAFF 57%, transparent 57%);
  width: 22px;
  height: 22px;
  border-radius: 50%;
  margin: 35px;
}

.gear:hover {
  background-image:
    radial-gradient(at center center, #00D2C8 23%, #242424 25%, #2F4858 57%, transparent 53%),
    linear-gradient(0deg, transparent 43%, #242424 40%, #2F4858 60%, transparent 60%),
    linear-gradient(45deg, transparent 43%, #242424 43%, #2F4858 57%, transparent 57%),
    linear-gradient(90deg, transparent 40%, #242424 40%, #2F4858 60%, transparent 60%),
    linear-gradient(135deg, transparent 43%, #242424 43%, #2F4858 57%, transparent 57%);
}

.info li {
  color: #eee;
  font-size: 0.8em;
  display: inline-block;
  margin: 0 6px;
}

.hrtop {
  display: inline-block;
  background-color: #FAEAFF;
  width: 2px;
  height: 22px;
  margin: -2px auto;
}

.contacts {
  min-height: 100px;
}

.contacts i {
  display: inline-block;
  margin: 20px 0;
}

.contacts a {
  margin: 0 6px;
}

.bfollow {
  display: flex;
  flex-direction: column-reverse;
  justify-content: center;
  align-items: center;
  margin: 25px 0 0 0;
}

.bfollow a {
  position: absolute;
  box-shadow: 0 0 15px 1px #000;
  color: #FAEAFF;
  background-color: #2F4858;
  border-radius: 30px;
  padding: 7px 49px;
  transition: 350ms;
    -webkit-transition: all .3s;
}

.bfollow a:hover {
  font-weight: bold;
  color: #2F4858;
  background-color: #FAEAFF;
  padding: 8px 56px;
  transition: 350ms;
    -webkit-transition: all .3s;
}

.content {
  color: #FAEAFF;
  background: linear-gradient(to bottom, #2F4858, #2C687C);
  border-radius: 0 0 30px 30px;
  min-height: 200px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.content p {
  margin: 30px 0 25px 0;

}

.lock {
  width: 26px;
  height: 16px;
  background: #FAEAFF;
  position: relative;
  border-radius: 4px;
  top: 30px;
}

.lock:before {
  content: '';
  width: 6px;
  height: 6px;
  background: transparent;
  border: 6px solid #FAEAFF;
  border-bottom: 0;
  border-radius: 6px 6px 0 0;
  position: absolute;
  bottom: 16px;
  right: 4px;
}

a .fa {
  font-size: 36px;
  transition: 500ms;
}

a:hover .fa {
  color: #2F4858;
  transition: 500ms;
}

a .fa-twitter-square, a .fa-instagram, a .fa-facebook-square {
  color: #FAEAFF;
}

</style>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<!-- <link rel="stylesheet" href="css/card.css"> -->

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
	<div id='busicard'>
	<div class='menu'>
	<div class='movembar'>
	<a href='members.php' class='mbut'><div class='mbar'></div></a>
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
	<h1 style='color:orange;background-color:#000;margin-top:10px'> ".$fullname."</h1>

	<ul class='info'>
	<!-- Vai trò -->	
	<li>".$position."</li>
	<span class='hrtop'></span>
	<li>ID : ".$idcard."</li></a> <br>
	<!-- Học vấn -->
	<a href='https://phongdaotao.ntt.edu.vn/'' target='blank'>
	<li>".$education."</li></a> 


	</ul>
	<ul class='contacts'>
	<a href=".$fb." target='blank'><i class='fa fa-facebook-square' aria-hidden='true'></i></a>
	<a href='https://www.instagram.com/'' target='blank'><i class='fa fa-instagram' aria-hidden='true'></i></a>
	<a href='https://twitter.com/?lang=en'' target='blank'><i class='fa fa-twitter-square' aria-hidden='true'></i></a>
	</ul>
	<div class='bfollow'>
	<a href=".$fb.">Follow</a>
	</div>
	<div class='content' style='color:pink'>
	<p>".$desc."</p>
	</div>
	</div>";
}
mysqli_close($con); 

?> 
<?php
include "footer.php";
?>
