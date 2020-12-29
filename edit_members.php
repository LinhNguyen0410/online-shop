 <style>
   .card-footer button{
    margin-top: 28px;
    width: 170px
  }
  .title{
    margin-top: 20px;
    font-size: 30px;
    font-family: "Yellowtail", cursive;
    color: orange
  }
  label{
    color: orange
    
  }

  .content{
    background: url(img/bgedit.jpg)no-repeat;
    background-size: cover;
    
  }

</style>
<title>Thay đổi thông tin</title>
<?php
session_start();
include "header.php";
include "homeaction.php";
include("db.php");
$id=$_REQUEST['id'];
$result=mysqli_query($con,"select id,fullname,idcard, phone, position,Education,imageM from aboutteam where id='$id'")or die ("query 1 incorrect.......");

list($id,$fullname,$idcard,$phone,$position,$edu,$imageM)=mysqli_fetch_array($result);

if(isset($_POST['btn_save'])) 
{
  $fullname=$_POST['fullname'];
  $idcard=$_POST['idcard'];
  $phone=$_POST['phone'];
  $position=$_POST['position'];
  $edu=$_POST['Education'];


//tải ảnh lên
  $picture_name=$_FILES['picture']['name'];
  $picture_type=$_FILES['picture']['type'];
  $picture_tmp_name=$_FILES['picture']['tmp_name'];
  $picture_size=$_FILES['picture']['size'];

  if($picture_type=="image/jpeg" || $picture_type=="image/jpg" || $picture_type=="image/png" || $picture_type=="image/gif")
  {
    if($picture_size<=50000000)
    // sinh ra 1 ảnh mới
    // $imageM=time()."_".$picture_name;
      $imageM=$picture_name;
    move_uploaded_file($picture_tmp_name,"img/".$imageM);
  }

  mysqli_query($con,"update aboutteam set fullname='$fullname', idcard='$idcard', phone='$phone', 
    position='$position',Education='$edu',imageM='$imageM' where id='$id'")or die("Query 2 is inncorrect..........");
// Xuất thông báo cập nhật thành công
  echo "
  <div class='alert alert-success'>
  <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
  <b>Đã cập nhật thông tin thành viên thành công. Vào <a href='members.php'><b>đây</b></a> để xem chi tiết..!</b>
  </div>";
// Xuất thông báo cập nhật thành công
  


// echo"<script>window.location.href='members.php'</script>";
  mysqli_close($con);
}?>
<!-- End Navbar -->
<div class="content">
  <div class="container-fluid">
    <div class="col-md-5 mx-auto">
      <div class="card">
        <div class="card-header card-header-primary">
          <h5 class="title">Thay Đổi Thông Tin</h5>
        </div>
        <form action="edit_members.php" name="form" method="post" enctype="multipart/form-data">
          <div class="card-body">
            
            <input type="hidden" name="id" id="id" value="<?php echo $id;?>" />
            <div class="col-md-12 ">
              <div class="form-group">
                <label>Họ Và Tên</label>
                <input type="text" id="fullname" name="fullname"  class="form-control" value="<?php echo $fullname; ?>" >
              </div>
            </div>
            <div class="col-md-12 ">
              <div class="form-group">
                <label>Mã Số Sinh Viên</label>
                <input type="text" id="idcard" name="idcard" class="form-control" value="<?php echo $idcard; ?>" >
              </div>
            </div>
            <div class="col-md-12 ">
              <div class="form-group">
                <label for="exampleInputphone1">Số Điện Thoại</label>
                <input type="phone"  id="phone" name="phone" class="form-control" value="<?php echo $phone; ?>">
              </div>
            </div>
            <div class="col-md-12 ">
              <div class="form-group">
                <label >Vai Trò</label>
                <input type="text" name="position" id="position" class="form-control" value="<?php echo $position; ?>">
              </div>
            </div>
            <div class="col-md-12 ">
              <div class="form-group">
                <label for="exampleInputphone1">Trình Độ Học Vấn</label>
                <input type="text"  name="Education" id="Education" class="form-control" value="<?php echo $edu; ?>">
              </div>
            </div>
            <!-- SHOW ẢNH RA Ở VIEW EDIT -->
            <div class="col-sm-4">
              <?php
              echo '
              <a href="#"> 
              <img src="img/'.$imageM.'" style="height: 100px;width:120px;"/>
              </a>
              </div>
              </div>';
              ?>
              
              <div class="col-md-8">
                <div class="">
                  <label for="">Thêm Ảnh</label>
                  <input type="file" name="picture" required class="btn btn-fill btn-success" id="picture" >
                </div>
              </div>
              
              
              
              
            </div>
            <div class="card-footer">
              <button type="submit" id="btn_save" name="btn_save" class="btn btn-fill btn-primary" style="margin-bottom: 20px;margin-left: 90px">Cập Nhật</button>
            </div>
          </form>    
        </div>
      </div>
      
      
    </div>
  </div>
  <?php
  include "footer.php";
  ?>