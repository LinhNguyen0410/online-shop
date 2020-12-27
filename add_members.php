<style>
  .card-title{
    margin-top: 20px;
    font-size: 30px;
   font-family: "Yellowtail", cursive;
  }
  .card-category{
    display: block;
   margin-bottom: 20px ;

  }
  .content{
    background: url(img/bg1.jpg)no-repeat;
    background-size: cover
  }

</style>


<?php
session_start();

include "header.php";
include "homeaction.php";
include("db.php");
if(isset($_POST['btn_save']))
{
$fullname=$_POST['fullname'];
$idcard=$_POST['idcard'];
$phone=$_POST['phone'];
$position=$_POST['position'];
$phone=$_POST['phone'];
$education=$_POST['education'];

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


mysqli_query($con,"insert into aboutteam(fullname, idcard,phone,position,education,imageM) values ('$fullname','$idcard','$phone','$position','$education','$imageM')") 
			or die ("Query 1 is inncorrect........");
      if(mysqli_query($con,$sql)){
        echo "
        <div class='alert alert-success'>
        <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
        <b>Đã thêm thành viên thành công. Vào <a href='members.php'><b>đây</b></a> để xem chi tiết..!</b>
        </div>";
      }

// header("location: members.php"); 

}
mysqli_close($con);
}

?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Thêm Thành Viên</h4>
                  <u class="card-category">Điền vào các thông tin sau đây:</u>
                </div>
                <div class="card-body">
                  <form action="" method="post" name="form" enctype="multipart/form-data">
                    <div class="row">
                      
                      <div class="col-md-3">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Họ và tên</label>
                          <input type="text" id="fullname" name="fullname" class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Mã Số Sinh Viên</label>
                          <input type="text" name="idcard" id="idcard" class="form-control" required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Số Điện Thoại</label>
                          <input type="number" maxlength="11" name="phone" id="phone" class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Vai Trò</label>
                          <input type="text" id="position" name="position" class="form-control" required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Trình Độ Học Vấn</label>
                          <input type="text" name="education" id="education" class="form-control" required>
                        </div>
                      </div>
                     <div class="col-md-4">
                      <div class="">
                        <label for="">Thêm Ảnh</label>
                        <input type="file" name="picture" required class="btn btn-fill btn-success" id="picture" >
                      </div>
                    </div>
                      
                    </div>
                    <a href="members.php">
                       <button type="submit" name="btn_save" id="btn_save" class="btn btn-primary pull">Hoàn Thành</button>
                    </a>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
        </div>
      </div>
      <?php
include "footer.php";
?>

