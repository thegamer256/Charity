<%-- 
    Document   : successPage.jsp
    Created on : Mar 22, 2023, 10:32:05 AM
    Author     : LE ANH TUAN
--%>

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
                    <h2>Donate Now</h2>
                </div>
                <div class="col-12">
                    <a href="">Home</a>
                    <a href="">Donate</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Donate Start -->
    <div class="donate" data-parallax="scroll" data-image-src="img/donate.jpg">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <div class="donate-content">
                        <div class="section-header">
                            <p>Donate Now</p>
                            <h2>Let's donate to needy people for better lives</h2>
                        </div>
                        <div class="donate-text">
                            <p>
                                Please help those in need by donating to charity. 
                                Your generosity can make a huge difference in someone's life. 
                                Together, we can create positive change and make the world a better place.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 text-center">

                    <c:choose>
                        <c:when test="${sessionScope.user !=null}">
                            <div class="donate-form">
                                <form  onsubmit="return submitFormPrivate()" method="POST" action="donate?action=request&programId=${program.programId}">
                                    <div class="control-group">
                                        <input type="number" class="form-control" name="amount" placeholder="Donate amount" required="required" />
                                        <input type="hidden" class="form-control" name="programName" value="${program.programName}"  required="required" />
                                    </div>
                                    <div class="control-group">
                                        <textarea class="form-control" id="message" style="height: auto" rows="7" placeholder="Message" name="message" required="required" data-validation-required-message="Please enter your message"></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div>
                                        <button class="btn btn-custom" id="privateSubmitBtn" type="submit">Donate Now</button>
                                    </div>
                                </form>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <button style="color: white; padding: 0; height: 3em" class="btn btn-custom" type="submit">
                                <a style="width: 100%; height: 100%; color: white; padding: 5em 1em" href="login">
                                    Login now to donate

                                </a>
                            </button>
                        </c:otherwise>
                    </c:choose>


                </div>
            </div>
        </div>
    </div>
    <!-- Donate End -->

    <%@include file="/includes/footer.jsp"%>

