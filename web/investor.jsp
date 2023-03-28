<%-- 
    Document   : investor
    Created on : Mar 23, 2023, 10:29:56 AM
    Author     : huynh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <%@include file="/includes/header.jsp"%>
    <head>
        <title>Program Register</title>
        <link href="css/program.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <%@include file="/includes/navbar.jsp"%>
        <main>
            <div data-schedule-date="investor" class="investor-form form-group-invest" style="display: none;">
                <h4 class="text-light">Investor for Program</h4>
                <div class="form-group">
                    <label for="investorName">Investor name</label>
                    <input type="text" class="form-control form-control-lg" id="investorName" aria-describedby="investorName" placeholder="Enter Program Name" required>
                    <label for="legalRepresent">Legal Represent</label>
                    <input type="text" class="form-control form-control-lg" id="legalRepresent" aria-describedby="legalRepresent" placeholder="Enter legal represent" required>
                    <label for="investorDes">Detail Description</label>
                    <textarea type="text" class="form-control" Jung id="investorDes" aria-describedby="detailDescription" placeholder="Enter Investor Description" style="height: 140px; min-height: 36px" name="detailDes-1" required></textarea>
                    <label for="contact">Contact</label>
                    <input type="number" class="form-control form-control-lg" id="contact"  maxlength="10" placeholder="Enter Contact" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" required>
                    <label for="investAvatar">Investor Images</label>
                    <input type="file" class="form-control-file" id="investAvatar" required accept="image/*">
                    <label for="qualifyImg">Qualify Images</label>
                    <input type="file" class="form-control-file" id="qualifyImg" required accept="image/*">
                </div>
                <div class="row">

                </div>
                <input type="hidden" value="" name="schedule__date" />
                                            ***              *
            </div>
            <form method="POST" action="/ojt/investor?action=register" id="form" class="container" enctype="multipart/form-data">
                <div data-schedule-date="investor" id="investor-form-1" class="form-group-invest">
                    <h4 class="text-light">Investor for Program</h4>
                    <div class="form-group">
                        <label for="investorName">Investor name</label>
                        <input type="text" class="form-control form-control-lg" id="investorName" aria-describedby="investorName" name="investorName-1" placeholder="Enter Program Name" required>
                        <label for="legalRepresent">Legal Represent</label>
                        <input type="text" class="form-control form-control-lg" id="legalRepresent" aria-describedby="legalRepresent" name="legalRepresent-1" placeholder="Enter legal represent" required>
                        <label for="investorDes">Detail Description</label>
                        <textarea type="text" class="form-control" Jung id="investorDes" name="investorDes-1" aria-describedby="detailDescription" placeholder="Enter Investor Description" style="height: 140px; min-height: 36px" name="detailDes-1" required></textarea>
                        <label for="contact">Contact</label>
                        <input type="number" class="form-control form-control-lg" id="contact" name="contact-1" maxlength="10" placeholder="Enter Contact" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" required>
                        <label for="investAvatar">Investor Images</label>
                        <input type="file" class="form-control-file" id="investAvatar" name="investAvatar-1" required accept="image/*">
                        <label for="qualifyImg">Qualify Images</label>
                        <input type="file" class="form-control-file" id="qualifyImg" name="qualifyImg-1" required accept="image/*">

                    </div>
                    <div class="row">

                    </div>
                    <input type="hidden" value="" name="schedule__date" />
                                                 ***            *
                </div>

                <input type="hidden" id="investor-number" name="investor-number" value="1">
                <input type="hidden" value="" name="programId" />
                <button type="button" class="mt-5 btn btn-primary" onclick="">Add investor</button>
                <button type="button" class="mt-5 btn btn-danger" onclick="">Delete investor</button>
                <button type="submit" class="mt-5 btn btn-primary container-fluid">Submit</button>
            </form>
        </main>
    </body>
</html