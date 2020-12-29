<footer id="footer">
	<!-- top footer -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Market Mini</h3>
						
						<ul class="footer-links">
							<li><a href="http://niie.edu.vn/en/home/" target = blank ><i class="fa fa-map-marker"></i>Số 458/3F Đường Nguyễn Hữu Thọ,Phường Tân Hưng,Quận 7,Thành Phố Hồ Chí Minh.</a></li>
							<li><a href="#"><i class="fa fa-phone"></i>Liên hệ : 0786907653</a></li>
							<li><a href="#"><i class="fa fa-envelope-o"></i>linh.nttu18@gmail.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 text-center" style="margin-top:80px;">
					<ul class="footer-payments">
						<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
						<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
					</ul>
					<span class="copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script>group02_nguyentatthanhuniversity
					</span>
				</div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Market Mini Cam Kết</h3>
						<ul class="footer-links">
							<li> Nếu sản phẩm của chúng tôi  không giống với mẫu hoặc chất lượng sản phẩm không tốt, chúng tôi sẽ hoàn trả lại tiền cho bạn.</li>
							
						</ul>
					</div>
				</div>

				<div class="clearfix visible-xs"></div>

				
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /top footer -->
	

	<!-- bottom footer -->
	
	<!-- /bottom footer -->
</footer>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script src="js/actions.js"></script>
<script src="js/sweetalert.min"></script>
<script src="js/jquery.payform.min.js" charset="utf-8"></script>
<script src="js/script.js"></script>
<script>var c = 0;
function menu(){
	if(c % 2 == 0) {
		document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu active";    
		document.querySelector('.cont_icon_trg').className = "cont_icon_trg active";    
		c++; 
	}else{
		document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu disable";        
		document.querySelector('.cont_icon_trg').className = "cont_icon_trg disable";        
		c++;
	}
}


</script>
<script type="text/javascript">
	$('.block2-btn-addcart').each(function(){
		var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
		$(this).on('click', function(){
			swal(nameProduct, "is added to cart !", "success");
		});
	});

	$('.block2-btn-addwishlist').each(function(){
		var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
		$(this).on('click', function(){
			swal(nameProduct, "is added to wishlist !", "success");
		});
	});
</script>

