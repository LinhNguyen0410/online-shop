<style type="text/css">
	.shop .shop-body .cta-btn:hover
	{
		color:red;
	}
	.shop:after
	{
		content: "";
		position: absolute;
		top: 0;
		bottom: 0;
		left: 1px;
		width: 100%;
		background: #12c2e9;
		/* fallback for old browsers */
		background: -webkit-linear-gradient(to bottom, #99FF99, #b5d349, #99CC99);
		/* Chrome 10-25, Safari 5.1-6 */
		background: linear-gradient(to bottom, #99FF99, #b5d349, #99CC99);
		/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
		opacity: 0.9;
		-webkit-transform: skewX(-45deg) translateX(-100%);
		-ms-transform: skewX(-45deg) translateX(-100%);
		transform: skewX(-45deg) translateX(-100%);
	}
	.shop:before 
	{
		content: "";
		position: absolute;
		top: 0;
		bottom: 0;
		left: 0px;
		width: 60%;
		background: #12c2e9;
		/* fallback for old browsers */
		background: -webkit-linear-gradient(to bottom,#99FF99, #b5d349, #99CC99);
		/* Chrome 10-25, Safari 5.1-6 */
		background: linear-gradient(to bottom, #99FF99, #b5d349, #99CC99);
		/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
		opacity: 0.9;
		-webkit-transform: skewX(-45deg);
		-ms-transform: skewX(-45deg);
		transform: skewX(-45deg);
	}
	.shop .shop-body h3 {
		color: blue;
	}
	.wrap_Clock{
		text-align: center;
		font-family: sans-serif;
		font-weight: 100;
		display: block;
		margin-top:50px ;
	}
	h1{
		color: #396;
		font-weight: bolder;
		font-size: 40px;
		margin: 40px 0px 20px;
		font-family: "Yellowtail", cursive;
		animation-duration: 5s;
		animation-name: colorTitle;
		animation-iteration-count: infinite;
	}
	p{
		color: orange;	
		font-weight: bolder;
		font-size: 20px;
		margin: 20px 0px 20px;
		font-family: "Yellowtail", cursive;
	}
		@keyframes colorTitle {
			0% {
				color: yellow;
			}
			25% {
				color: blue;
			}
			50% {
				color: green;
			}
			100% {
				color: red;
			}
		}
		#clockdiv{
			font-family: sans-serif;
			color: #fff;
			display: inline-block;
			font-weight: 100;
			text-align: center;
			font-size: 30px;
		}

		#clockdiv > div{
			padding: 10px;
			border-radius: 3px;
			background: #00BF96;
			display: inline-block;
		}

		#clockdiv div > span{
			padding: 15px;
			border-radius: 3px;
			background: #00816A;
			display: inline-block;
		}

		.smalltext{
			padding-top: 5px;
			font-size: 16px;
		}
	</style>


	<div class="main main-raised">
		<div class="container mainn-raised" style="width:100%;">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->


				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
						<img src="img/banner4.jpg" alt="Los Angeles" style="width:100%;">

					</div>
					<div class="item">
						<img src="img/baner3.jpg" alt="Los Angeles" style="width:100%;">

					</div>

					<div class="item">
						<img src="img/baner1.jpg" style="width:100%;">

					</div>

					<div class="item">
						<img src="img/baner5.jpg" alt="New York" style="width:100%;">

					</div>
					<div class="item">
						<img src="img/baner6.jpg" alt="New York" style="width:100%;">

					</div>
					<div class="item">
						<img src="img/banner7.jpg" alt="New York" style="width:100%;">

					</div>
					<div class="item">
						<img src="img/banner2.png" alt="New York" style="width:100%;">

					</div>


				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only" >Previous</span>
				</a>
				<a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<!-- SECTION -->
		<div class="section mainn mainn-raised">


			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<a href="product.php?p=78"><div class="shop">
							<div class="shop-img">
								<img src="./img/shop01.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Laptops</h3>
								<a href="product.php?p=78" class="cta-btn">Mua ngay <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div></a>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<a href="product.php?p=85"><div class="shop">
							<div class="shop-img">
								<img src="./img/vmat.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Điện Thoại</h3>
								<a href="product.php?p=85" class="cta-btn">Mua ngay  <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div></a>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<a href="product.php?p=86"><div class="shop">
							<div class="shop-img">
								<img src="./img/sach.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Sách & Báo</h3>
								<a href="product.php?p=86" class="cta-btn">Mua ngay  <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div></a>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->



		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Sản Phẩm Mới</h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab1">Laptops</a></li>
									<li><a data-toggle="tab" href="#tab1">Điện Thoại</a></li>
									<li><a data-toggle="tab" href="#tab1">Máy Ảnh</a></li>
									<li><a data-toggle="tab" href="#tab1">Phụ Kiện</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1" >

										<?php
										include 'db.php';


										$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 70 AND 75";
										$run_query = mysqli_query($con,$product_query);
										if(mysqli_num_rows($run_query) > 0){

											while($row = mysqli_fetch_array($run_query)){
												$pro_id    = $row['product_id'];
												$pro_cat   = $row['product_cat'];
												$pro_brand = $row['product_brand'];
												$pro_title = $row['product_title'];
												$pro_price = $row['product_price'] ;
												$pro_image = $row['product_image'];

												$cat_name = $row["cat_title"];

												echo "



												<div class='product'>
												<a href='product.php?p=$pro_id'><div class='product-img'>
												<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
												<div class='product-label'>
												<span class='new'>NEW</span>
												</div>
												</div></a>
												<div class='product-body'>
												<p class='product-category'>$cat_name</p>
												<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
												<h4 class='product-price header-cart-item-info'>$pro_price VND<del class='product-old-price'></del></h4>
												<div class='product-rating'>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												</div>
												<div class='product-btns'>
												<button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>Yêu thích</span></button>
												<button class='add-to-compare'><i class='fa fa-exchange'></i><span class='tooltipp'>So Sánh</span></button>
												<button class='quick-view'><i class='fa fa-eye'></i><span class='tooltipp'>Xem chi tiết</span></button>
												</div>
												</div>
												<div class='add-to-cart'>
												<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> Thêm vào giỏ</button>
												</div>
												</div>



												";
											}
											;

										}
										?>
										<!-- product -->


										<!-- /product -->


										<!-- /product -->
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		<!-- /HOT DEAL SECTION -->
		<div class="wrap_Clock">
			<h1> SIÊU ƯU ĐÃI ĐÓN NĂM MỚI 2021 </h1>
			<p> BỘ SƯU TẬP MỚI GIẢM GIÁ TỚI 50%</p>
			<div id="clockdiv">
				<div>
					<span class="days"></span>
					<div class="smalltext">Ngày</div>
				</div>
				<div>
					<span class="hours"></span>
					<div class="smalltext">Giờ</div>
				</div>
				<div>
					<span class="minutes"></span>
					<div class="smalltext">Phút</div>
				</div>
				<div>
					<span class="seconds"></span>
					<div class="smalltext">Giây</div>
				</div>
			</div>
		</div>
		<div class="btn"style="margin-left: 650px;margin-top:30px ">
			<a class="primary-btn cta-btn" href="store.php" >Mua Ngay</a>
		</div>

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">SẢN PHẨM BÁN CHẠY</h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab2">Áo Sơ Mi</a></li>
									<li><a data-toggle="tab" href="#tab2">Áo Thun</a></li>
									<li><a data-toggle="tab" href="#tab2">Quần</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
										<?php
										include 'db.php';


										$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 59 AND 65";
										$run_query = mysqli_query($con,$product_query);
										if(mysqli_num_rows($run_query) > 0){

											while($row = mysqli_fetch_array($run_query)){
												$pro_id    = $row['product_id'];
												$pro_cat   = $row['product_cat'];
												$pro_brand = $row['product_brand'];
												$pro_title = $row['product_title'];
												$pro_price = $row['product_price'];
												$pro_image = $row['product_image'];

												$cat_name = $row["cat_title"];

												echo "



												<div class='product'>
												<a href='product.php?p=$pro_id'><div class='product-img'>
												<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
												<div class='product-label'>
												<span class='new'>HOT</span>
												</div>
												</div></a>
												<div class='product-body'>
												<p class='product-category'>$cat_name</p>
												<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
												<h4 class='product-price header-cart-item-info'>$pro_price VND<del class='product-old-price'></del></h4>
												<div class='product-rating'>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												<i class='fa fa-star'></i>
												</div>
												<div class='product-btns'>
												<button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>Yêu Thích</span></button>
												<button class='add-to-compare'><i class='fa fa-exchange'></i><span class='tooltipp'>So sánh</span></button>
												<button class='quick-view'><i class='fa fa-eye'></i>
												<span class='tooltipp'>Xem chi tiết</span></button>
												</div>
												</div>
												<div class='add-to-cart'>
												<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> Thêm vào giỏ</button>
												</div>
												</div>



												";
											}
											;

										}
										?>

										<!-- /product -->
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">SẢN PHẨM THAM KHẢO</h4>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>


						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div id="get_product_home">
								<!-- product widget -->

								<!-- product widget -->
							</div>

							<div id="get_product_home2">
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product01.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">SAMSUNG GALAXY S7 EDGE</a></h3>
										<h4 class="product-price">2.980.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product02.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">TAI NGHE FAKE</a></h3>
										<h4 class="product-price">110.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product03.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">DELL VOSTRO 5568</a></h3>
										<h4 class="product-price">15.910.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title"></h4>
							<div class="section-nav">
								<div id="slick-nav-4" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-4">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">MÁY TÍNH BẢNG SAMSUNG</a></h3>
										<h4 class="product-price">6.380.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product05.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">TAI NGHE SONY</a></h3>
										<h4 class="product-price">780.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product06.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">LAPTOP ASUS 1433</a></h3>
										<h4 class="product-price">14.980.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product07.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">xiaomi redmi 10x</a></h3>
										<h4 class="product-price">12.802.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product08.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">laptop dell inprison 73646</a></h3>
										<h4 class="product-price">9.180.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product09.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">CAMERA BAO SẮC NÉT SONY</a></h3>
										<h4 class="product-price">1.900.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="clearfix visible-sm visible-xs">

					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title"></h4>
							<div class="section-nav">
								<div id="slick-nav-5" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-5">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product01.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">laptop msi gaming</a></h3>
										<h4 class="product-price">31.200.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product02.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">TAI NGHE KHÔNG DÂY</a></h3>
										<h4 class="product-price">980.00 VND <del class="product-old-price"></del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product03.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name"><a href="#">laptop dell vostro 438</a></h3>
										<h4 class="product-price">11.980.00 VND <del class="product-old-price"><del></h4>
										</div>
									</div>
									<!-- product widget -->
								</div>

								<div>
									<!-- product widget -->
									<div class="product-widget">
										<div class="product-img">
											<img src="./img/product04.png" alt="">
										</div>
										<div class="product-body">
											<p class="product-category">Category</p>
											<h3 class="product-name"><a href="#">laptop hp 6438</a></h3>
											<h4 class="product-price">15.980.00 VND <del class="product-old-price"></del></h4>
										</div>
									</div>
									<!-- /product widget -->


									<!-- product widget -->
									<div class="product-widget">
										<div class="product-img">
											<img src="./img/product05.png" alt="">
										</div>
										<div class="product-body">
											<p class="product-category">Category</p>
											<h3 class="product-name"><a href="#">Tai nghe samsung thế hệ mới</a></h3>
											<h4 class="product-price">2.980.00 VND <del class="product-old-price"></del></h4>
										</div>
									</div>
									<!-- /product widget -->

									<!-- product widget -->
									<div class="product-widget">
										<div class="product-img">
											<img src="./img/product06.png" alt="">
										</div>
										<div class="product-body">
											<p class="product-category">Category</p>
											<h3 class="product-name"><a href="#">Laptop HP 833IK</a></h3>
											<h4 class="product-price">12.280.00 VND <del class="product-old-price"></del></h4>
										</div>
									</div>
									<!-- product widget -->
								</div>
							</div>
						</div>

					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /SECTION -->
		</div>

		<script src="js/clock.js">

		</script>