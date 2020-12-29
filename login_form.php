
<?php
#this is Login form page , if user is already logged in then we will not allow user to access this page by executing isset($_SESSION["uid"])
#if below statment return true then we will send user to their profile.php page
//in action.php page if user click on "ready to checkout" button that time we will pass data in a form from action.php page
if (isset($_POST["login_user_with_product"])) {
	//this is product list array
	$product_list = $_POST["product_id"];
	//here we are converting array into json format because array cannot be store in cookie
	$json_e = json_encode($product_list);
	//here we are creating cookie and name of cookie is product_list
	setcookie("product_list",$json_e,strtotime("+1 day"),"/","","",TRUE);

}
?>
<div class="wait overlay">
	<div class="loader"></div>
</div>
<style>
	.input-borders{
		border-radius:30px;
	}
	.primary-btn{
		/* hieu ung button dich chuyen mau dam nhat tu trai sang phai */
		background: linear-gradient(to right, red 50%,#FF8787 50%);
		background-size: 200% 100%;
		background-position: right bottom;
		transition: all .5s ease-out;
		box-shadow: 4px 4px red;
		color: #fff
	}
	.primary-btn:hover, .primary-btn:focus {
		opacity: 0.9;
		background-position: left bottom;
		cursor: pointer;
		border: 1px solid red;
	}
</style>
<div class="container-fluid">
	<!-- row -->
	

	<div class="login-marg">
		<!-- Billing Details -->
		
		
		<!-- /Billing Details -->
		
		
		<form onsubmit="return false" id="login" class="login100-form ">
			<div class="billing-details jumbotron">
				<div class="section-title">
					<h2 class="login100-form-title p-b-49">ĐĂNG NHẬP</h2>
				</div>
				
				
				<div class="form-group">
					<label for="email">Email</label>
					<input class="input input-borders" type="email" name="email" id="email" placeholder="Email" id="password" required>
				</div>
				
				<div class="form-group">
					<label for="email">Mật Khẩu</label>
					<input class="input input-borders" type="password" name="password" placeholder="Mật Khẩu..." id="password" required>
				</div>
				
				<div class="text-pad" >
					<a href="#">
						Quên Mật Khẩu ?
					</a>
					
				</div>
				
				<input class="primary-btn btn-block"   type="submit"  Value="Đăng Nhập">
				
				<div class="panel-footer"><div class="alert alert-danger"><h4 id="e_msg"></h4></div></div>
				
				
				
				

			</div>
			
		</form>
		
		<!-- Shiping Details -->
		
		<!-- /Shiping Details -->

		<!-- Order notes -->
		
		<!-- /Order notes -->
	</div>

	<!-- Order Details -->
	
	<!-- /Order Details -->
	
	<!-- /row -->
</div>
