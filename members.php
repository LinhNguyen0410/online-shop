 <style>
   .title_about{
    text-align:center;
    font-size:30px;
    margin-top:10px;
    font-family: "Yellowtail", cursive;
    animation-duration: 5s;
    animation-name: colorTitle;
    animation-iteration-count: infinite;
  }
  @keyframes colorTitle {
    0% {
      color: yellow;
    }
    25% {
      color: #000;
    }
    50% {
      color: green;
    }
    100% {
      color: #fff;
    }
  }
  tr:nth-child(even) {
   background-color: #FAAC58;
 }
 .title_info{
   color:green;
   font-family: "Yellowtail", cursive;
   font-size:18px
 }
 .changeInfo{
  padding:15px;
  text-align:center;  
}
.content{
  background:url(img/bg2.jpg)no-repeat;
}
    ``
</style>
<?php
session_start();
include("db.php");
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
  $user_id=$_GET['id'];

  /*this is delet quer*/
  mysqli_query($con,"delete from members where id='$id'")or die("query is incorrect...");
}

include "header.php";
include "homeaction.php";
?>
<!-- End Navbar -->
<div class="content">
  <div class="container-fluid">
   <div class="col-md-14">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="title_about">Đội Ngũ Thành Viên</h4>
      </div>
      <div class="card-body">
        <div class="table-responsive ps">
          <table class="table tablesorter table-hover" id="">
            <thead class=" text-primary">
              <tr>
                <th class= "title_info">Hình Ảnh</th>
                <th class= "title_info">Họ và Tên</th>
                <th class= "title_info">Mã Số Sinh Viên</th>
                <th class= "title_info">Số Điện Thoại</th>
                <th class= "title_info">Học Vấn</th>
                <th class= "title_info">Vai Trò</th>                      
                <!-- <th class= "title_info">Thay đổi</th>                       -->
              </tr>
            </thead>
            <tbody>
              <?php 
              $result=mysqli_query($con,"select id, fullname, idcard,phone,position,Education,imageM from aboutteam")or die ("query 2 incorrect.......");
              while(list($id,$fullname,$idcard,$phone,$position,$education,$imageM)= mysqli_fetch_array($result))
              {
               echo 
               '
               <tr>
               <td data-th="Product" >
               <div class="row">
               
               <div class="col-sm-4 ">
               <a href="#">
               <img src="img/'.$imageM.'" style="height: 100px;width:120px;"/>
               </a>
               </div>
               <td>'.$fullname.'</td>
               <td>'.$idcard.'</td>
               <td>'.$phone.'</td>
               <td>'.$education.'</td>
               <td>'.$position.'</td> ';

               echo"<td>
               <a href='edit_members.php?id=$id' type='button' rel='tooltip' title='' class='btn btn-info btn-sm update' data-original-title='Edit User'>
               <i class='material-icons'>Cập Nhật</i>

               <div class='ripple-container'></div></a>
               <a href='delete_members.php?id=$id.'type='button' rel='tooltip' title='' class='btn btn-danger btn-sm remove' data-original-title='Delete User' name='btn_delete' id ='btn.delete'onclick='alertDelete()'>
               <i class='material-icons'>Xóa</i>

               <div class='ripple-container'></div></a>
               </td></tr>";
            
             }
           
             mysqli_close($con); 
           
             ?>
           </tbody>
         </table>
         <div class="changeInfo">
          <a href="add_members.php" class="btn btn-success">Thêm thành viên</a>
                  <!-- <a href="add_members.php" target=blank class="btn btn-danger">Xóa thành viên</a>
                    <a href="add_members.php" target=blank class="btn btn-info">Thay đổi thông tin</a> -->
                  </div>
                  <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <?php
        include "footer.php";
      
        ?>
        <!-- function hỏi có muốn xóa thành viên hay ko -->
        <script>
          function alertDelete(){
             alert("Thành viên <?php echo'$fullname' ?> này đã bị xóa!");
            return true;
          }
        </script>
