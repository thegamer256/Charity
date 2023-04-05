<%-- 
    Document   : investorUpdate
    Created on : Mar 25, 2023, 4:12:21 PM
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
                <div style="display: flex; justify-content: space-between; align-items: center">
                    <h2 class="text-light "style="display: inline-block">Investor for Program</h2>
                </div>
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
                    <div id="investAvatar-preview-section" class="row">

                    </div>
                    <label for="qualifyImg">Qualify Images</label>
                    <input type="file" class="form-control-file" id="qualifyImg" required accept="image/*">
                    <div id="qualifyImg-preview-section" class="row">

                    </div>
                </div>


            </div>
            <form method="POST" action="/OJTMock/investor?action=update&programId=${param.programId}" id="form" class="container" enctype="multipart/form-data">
                <c:forEach var="item" items="${listInvestor}" varStatus="itemStatus">
                    <div data-schedule-date="investor" id="investor-form-${itemStatus.index + 1}" class="form-group-invest">
                        <div style="display: flex; justify-content: space-between; align-items: center">
                            <h2 class="text-light "style="display: inline-block">Investor for Program</h2>
                            <button style="margin: 0!important" type="button" id="del-form-btn-${itemStatus.index+1}" class="mt-5 btn btn-danger" onclick="deleteRowById(${itemStatus.index+1})">Delete investor</button>
                        </div>
                        <div class="form-group">
                            <label for="investorName">Investor name</label>
                            <input type="text" class="form-control form-control-lg" id="investorName"  value="${item.investorName}" aria-describedby="investorName" name="investorName-${itemStatus.index + 1}" placeholder="Enter Program Name" required>
                            <label for="legalRepresent">Legal Represent</label>
                            <input type="text" class="form-control form-control-lg" id="legalRepresent" value="${item.legalRepresent}" aria-describedby="legalRepresent" name="legalRepresent-${itemStatus.index + 1}" placeholder="Enter legal represent" required>
                            <label for="investorDes">Detail Description</label>
                            <textarea type="text" class="form-control" Jung id="investorDes"  name="investorDes-${itemStatus.index + 1}" aria-describedby="detailDescription" placeholder="Enter Investor Description" style="height: 140px; min-height: 36px" required>${item.investorDes}</textarea>
                            <label for="contact">Contact</label>
                            <input type="number" class="form-control form-control-lg " id="contact" value="${item.contact}" name="contact-${itemStatus.index + 1}" maxlength="10" placeholder="Enter Contact" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" required>
                            <label for="investAvatar-${itemStatus.index + 1}">Investor Images</label>
                            <input type="file" class="form-control-file investorImgCls-${itemStatus.index + 1}" id="investAvatar-${itemStatus.index + 1}" name="investAvatar-${itemStatus.index + 1}" ${item.investorImg != null ? required : ''} accept="image/*">
                            <div id="investAvatar-preview-section-${itemStatus.index + 1}" class="row">
                                <img class="col-sm-12 col-md-6 col-lg-4 image-preview" src="${item.investorImg}">
                            </div>
                            <label for="qualifyImg-${itemStatus.index + 1}">Qualify Images</label>
                            <input type="file" class="form-control-file qualifyImgCls-${itemStatus.index + 1}" id="qualifyImg-${itemStatus.index + 1}" ${item.qualifyImg != null ? required : ''}  name="qualifyImg-${itemStatus.index + 1}" accept="image/*">
                            <div id="qualifyImg-preview-section-${itemStatus.index + 1}" class="row">
                                <img class="col-sm-12 col-md-6 col-lg-4 image-preview" src="${item.qualifyImg}">
                            </div>
                            <input type="hidden" id="investorId-${itemStatus.index+1}" name="investorId-${itemStatus.index + 1}" value="${item.investorId}">
                            <input type="hidden" id="investorId-unchanged-${itemStatus.index+1}" name="investorId-unchanged" value="${item.investorId}">

                        </div>


                    </div>
                </c:forEach>


                <input type="hidden" id="investor-number" name="investor-number" value="${listInvestor.size()}">
                <input type="hidden" value="${param.programId}" name="programId" />
                <button type="submit" id="submit-button" class="mt-5 btn btn-primary container-fluid">Submit</button>
            </form>
        </main>
    </body>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/parallax/parallax.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <<script>
                    let currentSizeForm = ${listInvestor.size()};
                    let i = (currentSizeForm === 0 ? 1 : currentSizeForm);
                    var isFormChanged = false;
                    const investAvatarEl = document.getElementById("investAvatar-1");
                    const qualifyImgEl = document.getElementById("qualifyImg-1");
                    const investAvatarPreviewEl = document.getElementById("investAvatar-preview-section");
                    const qualifyImgPreviewEl = document.getElementById("qualifyImg-preview-section");
                    const formEl = document.getElementById("form");

                    var submitButton = document.getElementById('submit-button');
                    console.log(formEl);
                    var isFormChanged = false;

                    formEl.addEventListener('change', function () {
                        isFormChanged = true;
                    });

                    submitButton.addEventListener('click', function () {
                        if (!isFormChanged) {
                            event.preventDefault();
                            window.alert('Form has been modified');
                        }
                    });

                    const onFileInputChange = (previewElement) => {
                        return (e) => {
                            const {files} = e.target;
                            previewElement.innerHTML = ``;

                            for (const file of files) {
                                const objectUrl = URL.createObjectURL(file);
                                const imagePreviewEl = document.createElement("img");

                                imagePreviewEl.classList.add('col-sm-12', 'col-md-6', 'col-lg-4', 'image-preview');
                                imagePreviewEl.src = objectUrl;

                                previewElement.append(imagePreviewEl);
                            }
                        }
                    }

                    const investorEls = form.querySelectorAll('.form-group-invest');

                    investorEls.forEach((investorEl, index) => {

                        const counter = index + 1;
                        const investAvatarInputEl = investorEl.querySelector(".investorImgCls-" + counter);
                        const qualifyImgInputEl = investorEl.querySelector(".qualifyImgCls-" + counter);
                        const investAvatarPreviewEl = investorEl.querySelector("#investAvatar-preview-section-" + counter);
                        const qualifyImgPreviewEl = investorEl.querySelector("#qualifyImg-preview-section-" + counter);

                        investAvatarInputEl.addEventListener('change', onFileInputChange(investAvatarPreviewEl));
                        qualifyImgInputEl.addEventListener("change", onFileInputChange(qualifyImgPreviewEl));
                    })

                    investAvatarEl.onchange = onFileInputChange(investAvatarPreviewEl);
                    qualifyImgEl.onchange = onFileInputChange(qualifyImgPreviewEl);

                    function formChange(index) {
                        console.log('aaaaaa');
                        var changeValue = $('#investorId-' + index).val();
                        $('#investorId-unchanged-' + index).remove();
                        var hiddenElementIndex = document.createElement("input");
                        hiddenElementIndex.setAttribute("type", "hidden");
                        hiddenElementIndex.setAttribute("name", "changed-investor-id");
                        hiddenElementIndex.setAttribute("id", "changed-investor-id");
                        hiddenElementIndex.setAttribute("value", changeValue);
                        $("#investor-number").after(hiddenElementIndex);
                    }

                    const formGroups = formEl.querySelectorAll('.form-group');

                    formGroups.forEach((formGroup, index) => {
                        const counter = index + 1;
                        const inputEls = formGroup.querySelectorAll('input');
                        const textAreaEl = formGroup.querySelector('textarea');
                        const inputElAndTextArea = [...inputEls, textAreaEl];
                        inputElAndTextArea.forEach(el => {
                            el.onchange = () => {
                                formChange(counter);
                            }
                        })
                    })

    </script>
</html>

