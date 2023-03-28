<%-- 
    Document   : confirmEmail
    Created on : Mar 26, 2023, 4:20:56 PM
    Author     : LE ANH TUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="/includes/header.jsp"%>
    <head>
        <title>Confirm Email change</title>
    </head>

    <%@include file="/includes/navbar.jsp"%>

    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>Confirmation</h2>
                </div>
                <div class="col-12">
                    <a href="home">Home</a>
                    <a href="">Confirm</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Donate Start -->
    <div class="container">
        <div class="donate" data-parallax="scroll" data-image-src="img/donate.jpg">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <div class="donate-content">
                        <div class="section-header">
                            <p>Confirm your OTP</p>
                            <h2>Thank you for being part of our project</h2>
                        </div>
                        <div class="donate-text">
                            <p>
                                Please help those in need by donating to charity. 
                                Your generosity can make a huge difference in someone's life. 
                                Together, we can create positive change and make the world a better place                             
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="donate-form">
                        <c:if test="${error!=null}">
                            <div class="alert alert-danger">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <strong>${error}</strong>
                            </div>
                        </c:if>
                        <form method="POST" action="user?action=confirmChangeEmail&userId=${userId}">
                            <div class="control-group">
                                <input type="hidden" class="form-control" name="email" value="${email}"/>
                                <input type="hidden" class="form-control" name="userId" value="${userId}"/>
                                <input type="hidden" class="form-control" name="bankAccount" value="${bankAccount}"/>
                                <input type="text" class="form-control" name="otp" placeholder="Confirm your OTP code" required="required" />
                            </div>

                            <div>
                                <button class="btn btn-custom" type="submit">Confirm</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Donate End -->

    <%@include file="/includes/footer.jsp"%>


