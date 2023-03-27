<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="/includes/header.jsp"%>
    <head>
        <title>Donate Now</title>
    </head>

    <%@include file="/includes/navbar.jsp"%>

    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>Sign Up</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Sign Up Start -->
    <div class="container">
        <div class="donate" data-parallax="scroll" data-image-src="img/donate.jpg">            
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="donate-form">
                        <form method="POST" action="signup" enctype="multipart/form-data">
                            <div class="control-group">
                                <input type="text" name="username" class="form-control" placeholder="Username" required="required" value="${userSignUp.getUsername()}" />
                            </div>

                            <div class="control-group">
                                <input type="password" id="password" name="password" onkeyup="check();" class="form-control" minlength="6" value="${userSignUp.getPassword()}" placeholder="Password" required="required" />
                            </div>
                            <div class="control-group">
                                <input type="password" class="form-control" name="passwordConfirm" id="confirm_password" onkeyup="check();" minlength="6"  placeholder="Password confirmation" required="required" />
                                <span id='message'></span>
                            </div>
                            <div class="control-group">
                                <input type="text" name="name" class="form-control" placeholder="Your name" value="${userSignUp.getName()}" required="required" />
                            </div>
                            <div class="control-group">
                                <input type="email" name="email" class="form-control" placeholder="Email" required="required" value="${userSignUp.getEmail()}" />
                            </div>
                            <div class="control-group">
                                <input type="tel" id="phone" name="phoneNumber" class="form-control" name="phoneNumber" value="${userSignUp.getPhoneNumber()}" placeholder="Phone Number" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]">
                            </div>
                            <div class="control-group">
                                <input type="date" id="date" class="form-control" name="dob" placeholder="Date of birth" value="${userSignUp.getDob()}">
                            </div>
                            <div class="control-group">
                                <input type="text" name="city" list="cityName"placeholder="Your City" class="form-control" value="${userSignUp.getCity()}">
                                <datalist id="cityName">
                                    <option value="Boston">
                                    <option value="Cambridge">
                                </datalist>
                            </div>
                            <div class="control-group">
                                <input type="text" name="province" list="provincename"placeholder="Your Province" class="form-control" value="${userSignUp.getProvince()}">
                                <datalist id="provincename">
                                    <option value="Boston">
                                    <option value="Cambridge">
                                </datalist>
                            </div>
                            <div class="control-group">
                                <input type="text" name="address" class="form-control" placeholder="address" value="${userSignUp.getAddress()}" />
                            </div>
                            <div class="control-group">
                                <input type="number" name="bank_account" class="form-control" placeholder="Bank Account" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" value="${userSignUp.getBank_account()}"/>
                            </div>
                            <div class="control-group button-wrap">
                                <label class="button" name="avatar" for="upload">Upload Your Avatar</label>
                                <input id="upload" name="avatar" type="file" accept="image/*" onchange="loadFile(event)">
                               
                                        
                                        <img id="output" style="height: 100%; width: 12em"  />
                            </div>

                            <!--                            <div class="control-group">
                                                            <input type="checkbox" id="rememberme" class="">
                                                            <label for="rememberme" class="remember" style="color: white">Remember me</label><br>
                                                        </div>-->
                            <div>
                                <button class="btn btn-custom" type="submit">Sign Up</button>
                            </div>

                        </form>
                    </div>
                </div>

                <div class="col-lg-7">
                    <div class="donate-content">
                        <div class="section-header">
                            <p>Sign Up Now</p>
                            <h2>Let's donate to needy people for better lives</h2>
                        </div>
                        <div class="donate-text">
                            <p>
                                Please help those in need by donating to charity. 
                                Your generosity can make a huge difference in someone's life. 
                                Together, we can create positive change and make the world a better place                            </p>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <!-- Sign Up End -->

    <%@include file="/includes/footer.jsp"%>