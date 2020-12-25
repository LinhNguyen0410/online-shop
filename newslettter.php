
<style>
			.newsletter{
				color: #000;  
				 animation-duration: 5s;
			    animation-name: colorTitle;
			    animation-iteration-count: infinite;
			    font-family: "Yellowtail", cursive;
	

			}

			.newsletter p{
				font-size: 30px
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
</style>
        

        <div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
					
						<div class="newsletter">
							<p>Đăng ký tài khoản <a href="index.php">Market Mini</a> để có cơ hội nhận nhiều ưu đãi.</p>
							<form id="offer_form" onsubmit="return false">
								<input class="input" type="email" id="email" name="email" placeholder="Nhập Email của bạn...">
								<button class="newsletter-btn" value="Sign Up" name="signup_button" type="submit"><i class="fa fa-envelope"></i> Gửi</button>
							</form>
							<div class="" id="offer_msg">
                                <!--Alert from signup form-->
                            </div>
							<ul class="newsletter-follow">
								<li>
									<a href="https://www.facebook.com/linh04102000"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
