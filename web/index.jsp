<%-- 
    Document   : successPage.jsp
    Created on : Mar 21, 2023, 9:12:54 AM
    Author     : LE ANH TUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/includes/header.jsp"%>
<head>
    <title>FantasticV - Charity Website</title>
</head>

<%@include file="/includes/navbar.jsp"%>

<!-- Carousel Start -->
<div class="carousel" style="background-color: #dcf9fc">
    <div class="container-fluid">
        <div class="owl-carousel">
            <div class="carousel-item">
                <div class="carousel-img" style="height: 39rem">
                    <img src="img/carousel-1.jpg" alt="Image">
                </div>
                <div class="carousel-text">
                    <h1>Let's be kind for children</h1>
                    <p>
                        Let's cherish children's innocence by treating them kindly, fostering empathy and compassion, 
                        and nurturing a better future for all.
                    </p>
                </div>
            </div>
            <div class="carousel-item" >
                <div class="carousel-img" style="height: 39rem">
                    <img src="img/carousel-2.jpg" alt="Image">
                </div>
                <div class="carousel-text">
                    <h1>Get Involved with helping hand</h1>
                    <p>
                        Join helping hand and make a positive impact in your community through volunteering and donations. 
                        Every act of kindness counts.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="carousel-img" style="height: 39rem">
                    <img src="img/carousel-3.jpg" alt="Image">
                </div>
                <div class="carousel-text">
                    <h1>Bringing smiles to millions</h1>
                    <p>
                        Through acts of kindness and generosity, we have the power to bring smiles to the faces of millions 
                        and create a positive impact on the world.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Carousel End -->

<!-- About Start -->
<div class="about">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="about-img" data-parallax="scroll" data-image-src="img/about.jpg"></div>
            </div>
            <div class="col-lg-6">
                <div class="section-header">
                    <p>Learn About Us</p>
                    <h2>Worldwide non-profit charity organization</h2>
                </div>
                <div class="about-tab">
                    <ul class="nav nav-pills nav-justified">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#tab-content-1">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#tab-content-2">Mission</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#tab-content-3">Vision</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div id="tab-content-1" class="container tab-pane active">
                            FantasticV Charity is a non-profit charity organization that accepts online monetary 
                            donations to support their mission of providing food, shelter, and healthcare to disadvantaged 
                            communities in Vietnam.
                            Your contribution will make a difference in the lives of millions of people.
                        </div>
                        <div id="tab-content-2" class="container tab-pane fade">
                            The mission of money donating charity organizations is to provide assistance and support to 
                            those in need. These organizations collect funds from donors and distribute them to various 
                            charitable causes such as poverty alleviation, education, healthcare, disaster relief, and more. 
                            By donating money to our organization, individuals can help make a positive impact on the 
                            world and improve the lives of others. The goal of these organizations is to maximize the 
                            effectiveness of their donations by carefully selecting and vetting the causes they support 
                            to ensure that the funds are used in the most impactful and efficient way possible.
                        </div>
                        <div id="tab-content-3" class="container tab-pane fade">
                            The vision of our organization is to create a better world for everyone. Such organizations 
                            are driven by a passion for helping people and making a positive impact on society. 
                            They aim to address various social, economic, and environmental issues, such as poverty, 
                            hunger, education, healthcare, and climate change. 
                            Their mission is to provide support and resources to individuals and communities in need, 
                            empowering them to live fulfilling and dignified lives. Non-profit charity organizations 
                            rely on the generosity of donors, volunteers, and partners to achieve their vision and make 
                            a meaningful difference in Vietnam.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->


<!-- Service Start -->
<div class="service">
    <div class="container">
        <div class="section-header text-center">
            <p>What We Do?</p>
            <h2>We believe that we can save more life with you</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="flaticon-diet"></i>
                    </div>
                    <div class="service-text">
                        <h3>Healthy Food</h3>
                        <p>Eating healthy food can have numerous benefits for both physical and mental health, and can improve overall quality of life.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="flaticon-water"></i>
                    </div>
                    <div class="service-text">
                        <h3>Pure Water</h3>
                        <p>Pure Water plays a crucial role in maintaining human health and hydration.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="flaticon-healthcare"></i>
                    </div>
                    <div class="service-text">
                        <h3>Health Care</h3>
                        <p>Health Care also plays an essential role in promoting public health.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="flaticon-education"></i>
                    </div>
                    <div class="service-text">
                        <h3>Primary Education</h3>
                        <p>Education is key to breaking the cycle of poverty. Primary education provides children with the tools they need to become self-sufficient and contribute to society. </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="flaticon-home"></i>
                    </div>
                    <div class="service-text">
                        <h3>Residence Facilities</h3>
                        <p>Residence facilities can offer a convenient, social, secure, and affordable living option for a variety of people, depending on their needs and circumstances.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="flaticon-social-care"></i>
                    </div>
                    <div class="service-text">
                        <h3>Social Care</h3>
                        <p>Social care plays an important role in promoting independence, improving well-being, reducing isolation, and providing respite for caregivers. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->


<!-- Facts Start -->
<div class="facts" data-parallax="scroll" data-image-src="img/facts.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="facts-item">
                    <i class="flaticon-home"></i>
                    <div class="facts-text">
                        <h3 class="facts-plus" data-toggle="counter-up">35</h3>
                        <p>Provinces</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-5 col-md-6">
                <div class="facts-item">
                    <i class="flaticon-kindness"></i>
                    <div class="facts-text">
                        <h3 class="facts-dollar" data-toggle="counter-up">
                            <fmt:formatNumber type = "number" groupingUsed = "false" value = "${totalGoal}"/>
                        </h3>
                        <p>Our Goal</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="facts-item">
                    <i class="flaticon-donation"></i>
                    <div class="facts-text">
                        <h3 class="facts-dollar" data-toggle="counter-up">
                            <fmt:formatNumber type = "number" groupingUsed = "false" value = "${totalRaised}"/>
                        </h3>
                        <p>Raised</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Facts End -->


<!-- Causes Start -->
<div class="causes">
    <div class="container">
        <div class="section-header text-center">
            <p>Our Program</p>
            <h2>Let's know about charity programs in Vietnam</h2>
        </div>
        <div class="owl-carousel causes-carousel">
            <c:forEach var="item" items="${listPrograms}">
                <div class="causes-item">
                    <div class="causes-img">
                        <img src="${item.programDisplayImg}" alt="Image"  style="height: 20em; width: 100%; object-fit: cover;">
                    </div>
                    <div class="causes-progress">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="${(item.raisedAmount/item.goalAmount)*100}" aria-valuemin="0" aria-valuemax="100">
                                <span style="right: -2em">${(item.raisedAmount/item.goalAmount)*100 > 100 ? 100 : (item.raisedAmount/item.goalAmount)*100}%</span>
                            </div>
                        </div>
                        <div class="progress-text">
                            <p><strong>Raised:</strong> ${(item.raisedAmount)} VND</p>
                            <p><strong>Goal:</strong>${(item.goalAmount)} VND</p>
                        </div>
                    </div>
                    <div class="causes-text" style="height: 6em">
                        <h3><a href="program?action=detail&programId=${item.programId}">${item.programName}</a></h3>
                        <p>${item.shortDes}</p>
                    </div>
                    <div class="causes-btn" style="padding: 10px">
                        <a href="program?action=detail&programId=${item.programId}" class="btn btn-custom" style="display: flex; justify-content: center; align-items: center">Learn More</a>


                        <c:if test="${sessionScope.user.role=='2' || sessionScope.user.role=='1'}">
                            <a href="program?action=update&programId=${item.programId}" class="btn btn-custom">Update Program</a>
                            <a class="btn btn-custom" href="operator?programId=${item.programId}&action=update">Update Operator</a>
                        </c:if>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>
<!-- Causes End -->


<!-- Operator Start -->
<div class="event">
    <div class="container">
        <div class="section-header text-center">
            <p>Program Operators</p>
            <h2>Check activities of programs here</h2>
        </div>
        <div class="row">
            <c:forEach var="item" items="${operators}">
                <div class="col-lg-6" style="margin-bottom: 5em">
                    <div class="event-item" style="height: 100% !important">
                        <div class="carousel" style="margin-bottom: 0">
                            <div class="container-fluid">
                                <div class="owl-carousel">
                                    <!-- News images -->
                                    <c:forEach items="${item.activiesImgs}" var="activity">
                                        <div class="owl-carousel-item"> 
                                            <div class="carousel-img">
                                                <img src="${activity.path}" alt="Image" style="height: 360px; width: 100%">
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="event-content">
                            <div class="event-meta">
                                <p><i class="fa fa-calendar-alt"></i>${item.operatorDate}</p>
                                <p><i class="fa fa-map-marker-alt"></i>${item.city}</p>
                                <p><i class="fa fa-map-marker-alt"></i>${item.province}</p>
                                <p><i class="fa fa-map-marker-alt"></i>${item.address}</p>
                            </div>
                            <div class="event-text">
                                <h3>Activities</h3>
                                <p class="description">
                                    ${item.operatorDetailDes.replaceAll("\\r\\n", "<br>")}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- Operator End -->

<!-- Investor Start -->
<div class="testimonial">
    <div class="container">
        <div class="section-header text-center">
            <p>Investor</p>
            <h2>Investor Foundation</h2>
        </div>
        <div class="owl-carousel testimonials-carousel">
            <c:forEach var="item" items="${investors}">
                <div class="testimonial-item">
                    <img src="${item.investorImg}" alt="Image">
                    <div class="testimonial-name">
                        <h3>${item.investorName}</h3>
                        <p>Legal Represent: ${item.legalRepresent}</p>
                        <p>Contact: ${item.contact}</p>
                        <p>
                            ${item.investorDes}
                        </p>
                    </div>

                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- Investor End -->


<!-- Team Start -->
<div class="team">
    <div class="container">
        <div class="section-header text-center">
            <p>Meet Our Team</p>
            <h2>Awesome guys behind our charity activities</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="img/team.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Le Anh Tuan</h2>
                        <p>Founder & Leader</p>
                        <div class="team-social">
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="img/team.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Nguyen Dang Cuong Quoc</h2>
                        <p>Founder & Sub Leader</p>
                        <div class="team-social">
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="img/team.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Nguyen Dinh Trung</h2>
                        <p>Founder</p>
                        <div class="team-social">
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="img/team.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Nguyen Huynh Duc</h2>
                        <p>Founder</p>
                        <div class="team-social">
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="team-item">
                    <div class="team-img">
                        <img src="img/team.jpg" alt="Team Image">
                    </div>
                    <div class="team-text">
                        <h2>Nguyen Manh Tu</h2>
                        <p>Founder</p>
                        <div class="team-social">
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Team End -->

<!-- Blog Start -->
<div class="blog">
    <div class="container">
        <div class="section-header text-center">
            <p>Our Blog</p>
            <h2>Latest news & articles directly from our blog</h2>
        </div>
        <div class="row">
            <c:forEach var="item" items="${getListNews}">
                <div class="col-lg-4">
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="${item.backGroundImg}" alt="Image">
                        </div>
                        <div class="blog-text">
                            <h3><a href="news?action=single&newsId=${item.newsId}">${item.newsTitle}</a></h3>
                            <p>
                                ${item.shortDes}
                            </p>
                        </div>
                        <div class="blog-meta">
                            <p><i class="fa fa-user"></i><a href="news?action=single&newsId=${item.newsId}">Watch more</a></p>

                            <c:if test="${sessionScope.user.role=='2' || sessionScope.user.role=='1'}">
                                <p><i class="fa fa-wrench"></i><a href="news?action=update&newsId=${item.newsId}">Edit News</a></p>

                                <form method="POST" id="delete-news-${item.newsId}" action="news-manage?action=delete&newsId=${item.newsId}" style="padding-left: 2em">
                                    <p onclick="document.getElementById(`delete-news-${item.newsId}`).submit()">
                                        <i class="fa fa-times"></i>
                                        <a 
                                            style="cursor: pointer;"
                                            onmouseover="this.style.color = '#FDBE33';"
                                            onmouseout="this.style.color = '#4a4c70';"
                                            onclick="document.getElementById('delete-news-${item.newsId}').submit();"
                                            >
                                            Delete News
                                        </a>
                                    </p>
                                </form>

                            </c:if>

                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>
<!-- Blog End -->    



<%@include file="/includes/footer.jsp"%>
