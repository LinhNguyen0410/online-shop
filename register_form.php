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
                <!-- row -->
                
                <div class="container-fluid">
                    
                        
                        
                        <!-- /Billing Details -->
                        
                                <form id="signup_form" onsubmit="return false" class="login100-form">
                                    <div class="billing-details jumbotron">
                                    <div class="section-title">
                                        <h2 class="login100-form-title p-b-49" >ĐĂNG KÝ</h2>
                                    </div>
                                    <div class="form-group ">
                                    
                                        <input class="input form-control input-borders" type="text" name="f_name" id="f_name" placeholder="Họ">
                                    </div>
                                    <div class="form-group">
                                    
                                        <input class="input form-control input-borders" type="text" name="l_name" id="l_name" placeholder="Tên">
                                    </div>
                                    <div class="form-group">
                                        <input class="input form-control input-borders" type="email" name="email"  placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <input class="input form-control input-borders" type="password" name="password" id="password" placeholder="Mật Khẩu">
                                    </div>
                                    <div class="form-group">
                                        <input class="input form-control input-borders" type="password" name="repassword" id="repassword" placeholder="Nhập lại Mật Khẩu">
                                    </div>
                                    <div class="form-group">
                                        <input class="input form-control input-borders" type="text" name="mobile" id="mobile" placeholder="Số Điện Thoại">
                                    </div>
                                    <div class="form-group">
                                        <input class="input form-control input-borders" type="text" name="address1" id="address1" placeholder="Địa Chỉ">
                                    </div>
                                    <div class="form-group">
                                        <input class="input form-control input-borders" type="text" name="address2" id="address2" placeholder="Thành Phố">
                                    </div>
                                    
                                    
                                    <div style="form-group">
                                       <input class="primary-btn btn-block"  value="Đăng Ký" type="submit" name="signup_button">
                                    </div>
                                    <div class="text-pad">
                                    <a href="" data-toggle="modal" data-target="#Modal_login">Bạn đã có tài khoản ? Đăng nhập.</a>
                                       
                                    </div>
                                    
                                
                                </form>
                                <div class="login-marg">
                        <!-- Billing Details -->
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8" id="signup_msg">
                                    

                                </div>
                                <!--Alert from signup form-->
                            </div>
                            <div class="col-md-2"></div>
                        </div>

                        
                    </div>
                    </div> 

                    
                
                <!-- /row -->

            
