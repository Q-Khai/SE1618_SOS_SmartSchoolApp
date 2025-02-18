<%-- 
    Document   : FreelanceDetail.jsp
    Created on : Jun 30, 2022, 3:25:24 PM
    Author     : TrinhNgocBao
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <!-- ===============================================-->
        <!--    Document Title-->
        <!-- ===============================================-->
        <title>FPTU Freelance Job </title>


        <!-- ===============================================-->
        <!--    Favicons-->
        <!-- ===============================================-->
        <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/logo-truong-fpt_043152255.ico">
        <link rel="manifest" href="assets/img/favicons/manifest.json">
        <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
        <meta name="theme-color" content="#ffffff">
        <!-- <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" /> -->

        <link rel="stylesheet" href="./assets/css/font-awesome.min.css" type="text/css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@500&family=Roboto:wght@400;500&display=swap"
              rel="stylesheet">


        <!-- ===============================================-->
        <!--Stylesheets-->
        <!-- ===============================================-->
        <link href="./assets/css/theme.css" rel="stylesheet" />
        <link href="./assets/css/main.css" rel="stylesheet" />
        <link href="./assets/css/style.css" rel="stylesheet" />
        <style>
            .list-group-flush>.list-group-item {
                width: 75%;
            }

            .shadow {
                /*                box-shadow: rgba(67, 71, 85, 0.27) 0px 0px 0.25em, rgba(90, 125, 188, 0.05) 0px 0.25em 1em !important;*/
            }

            .card {
                border-radius: 0.5rem;
            }

            .card-body {
                padding: 1.5rem;
            }

            .content-detail {
                border-bottom: 1px solid #EEEEEE !important;
            }

            .breadcrumb-option {
                padding-bottom: 0px;
            }

            .card-footer {
                background-color: #ffffff;
            }

            .btn-block {
                display: block;
                width: 100%;
            }

            .contact {
                padding: 3px;                
            }
            .contact a {
                border-radius: 0.3rem;                
            }
            #hoverCard:hover {
                transform: scale(1.005);
                box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px !important;

            }
            .modal-content {
                border-radius: 0.5rem;
                border: 0;
            }
            .btn-sm {
                border-radius: 0.2rem;
            }

            .modal-header {
                border-top-right-radius:0.5rem;
                border-top-left-radius:0.5rem;             
            }
            .hoverLink:hover {
                color: #F1A501 !important;
            }

            .modal-shadow{
                box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
            }
            .alert {
                border-radius: 0.5rem;
            }
            .alert-primary {
                color: #084298;
                background-color: #cfe2ff;
                border-color: #b6d4fe;
            }
        </style>
    </head>


    <body>

        <!-- ===============================================-->
        <!--    Main Content-->
        <!-- ===============================================-->

        <main class="main" id="top">
            <!-- here  data-navbar-on-scroll="data-navbar-on-scroll"-->
            <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block gradient-custom-2">
                <div class="container"><a class="navbar-brand" href="WelcomePage.jsp"><img
                            src="https://hcmuni.fpt.edu.vn/landing-page/images/logo-top.png" height="46" alt="logo" /></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon">
                        </span></button>
                    <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto pt-2 pt-lg-0 font-base align-items-lg-center align-items-start">
                            <li class="nav-item px-3"><a class="nav-link fw-bold" aria-current="page" href="employerhome">TRANG CHỦ</a>
                            </li>
                            <li class="nav-item px-3"><a class="nav-link fw-bold" aria-current="page" href="main?action=EmployerDashboard&userId=${sessionScope.LOGIN_USER.userId}">DASHBOARD</a>
                            </li>
                            <li class="nav-item px-3 navbar-dropdown dropdown-user dropdown">
                                <a class="btn btn-outline-light order-1 order-lg-0 fw-bold nav-link hide-arrow" id="nameLogin" href=""
                                   data-bs-toggle="dropdown">
                                    <div class="avatar avatar-online">


                                        QUẢN LÝ CÔNG VIỆC


                                    </div>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end">
                                    <li>
                                        <a class="dropdown-item" href="main?action=MyJobPostApprove">
                                            <i class="bx bx-user me-2"></i>
                                            <span class="align-middle"> VIỆC CHỜ PHÊ DUYỆT</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="main?action=MyJobPostProcess">
                                            <i class="bx bx-user me-2"></i>
                                            <span class="align-middle"> VIỆC ĐANG TUYỂN</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="main?action=MyJobPostDone">
                                            <i class="bx bx-user me-2"></i>
                                            <span class="align-middle"> VIỆC ĐÃ TUYỂN XONG</span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="dropdown-divider"></div>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="main?action=UploadJobPost">
                                            <i class="bx bx-user me-2"></i>
                                            <span class="align-middle"> ĐĂNG TUYỂN</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <c:if test="${empty sessionScope.LOGIN_USER}">
                                <li class="nav-item px-3"><a class="btn btn-outline-light order-1 order-lg-0 fw-bold"
                                                             href="login.jsp">ĐĂNG NHẬP /
                                        ĐĂNG KÝ</a></li>
                                    </c:if>
                                    <c:if test="${!empty sessionScope.LOGIN_USER}">
                                <!-- User -->
                                <li class="nav-item px-3 navbar-dropdown dropdown-user dropdown">
                                    <a class="btn btn-outline-light order-1 order-lg-0 fw-bold nav-link hide-arrow"
                                       id="nameLogin" href="" data-bs-toggle="dropdown">
                                        <div class="avatar avatar-online">
                                            <c:choose>
                                                <c:when test="${sessionScope.LOGIN_USER.avatar==null}">
                                                    <img src="https://unloc.online/wp-content/uploads/2020/04/283-2833820_user-icon-orange-png.png?fbclid=IwAR133UMM9dPj2fhzsRFAVrcTvgHaJBLsIbkkwQbqx1dv_3FTf8OQfqcIRcM"
                                                         alt class="w-px-40 rounded-circle"
                                                         style="width: 2rem; height: 2rem" />
                                                    ${sessionScope.LOGIN_USER.fullname}
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${pageContext.servletContext.contextPath}/avatar?userId=${sessionScope.LOGIN_USER.userId}"
                                                         alt class="w-px-40 rounded-circle"
                                                         style="width: 2rem; height: 2rem" />
                                                    ${sessionScope.LOGIN_USER.fullname}
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <div class="d-flex">

                                                    <div class="flex-grow-1">
                                                        <span
                                                            class="fw-semibold d-block">${sessionScope.LOGIN_USER.fullname}</span>
                                                        <small
                                                            class="text-muted">${sessionScope.LOGIN_USER.roleName}</small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="main?action=ProfileDetail">
                                                <i class="bx bx-user me-2"></i>
                                                <span class="align-middle"><i class="fa fa-user" aria-hidden="true"></i>
                                                    Thông tin cá nhân</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a class="dropdown-item" href="main?action=MyPost">
                                                <span class="d-flex align-items-center align-middle">
                                                    <i class="bx bx-user me-2"></i>
                                                    <span class="flex-grow-1 align-middle"><i class="fa fa-list-alt"
                                                                                              aria-hidden="true"></i> Bài viết của tôi</span>
                                                    <span
                                                        class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="main?action=ChangePassword">
                                                <i class="bx bx-user me-2"></i>
                                                <span class="align-middle"><i class="fa fa-key" aria-hidden="true"></i> Đổi
                                                    mật khẩu</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="main?action=FeedbackSystem">
                                                <i class="bx bx-user me-2"></i>
                                                <span class="align-middle"><i class="fa fa-bug" aria-hidden="true"></i> Phản
                                                    hồi hệ thống</span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="main?action=Logout">
                                                <i class="bx bx-user me-2"></i>
                                                <span class="align-middle"><i class="fa fa-sign-out-alt"
                                                                              aria-hidden="true"></i> Đăng xuất</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!--/ User -->
                            </c:if>
                            <li class="nav-item px-3"><a class="btn btn-light order-1 order-lg-0 fw-bold" href="main?action=EmployerUploadJobPost">Đăng tuyển</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Breadcrumb Begin -->
            <div class="breadcrumb-option">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">

                            <a class="text-decoration-none" href="main?action=MyJobPostDone"><i class="fa fa-chevron-left"></i> Việc tuyển xong</a>

                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcrumb End -->

            <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
            </symbol>
            <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
                <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
            </symbol>
            <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
            </symbol>
            </svg>

            <section class="shop" style="min-height: 72vh;">
                <div class="container">                   
                    <div class="row mb-3 justify-content-center text-center">                       
                        <c:if test="${!empty requestScope.ISNOTDONE}">
                            <div class="alert alert-warning d-flex align-items-center col-md-4 justify-content-center" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>                                
                                <div>
                                    ${ISNOTDONE}
                                </div>
                            </div> 
                        </c:if>
                        <c:if test="${!empty requestScope.ISDONE}">
                            <div class="alert alert-success d-flex align-items-center col-md-4 justify-content-center" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>                                
                                <div>
                                    ${ISDONE}
                                </div>
                            </div> 
                        </c:if>
                        <c:if test="${!empty requestScope.APPROVE_SUCCESS}">
                            <div class="alert alert-primary d-flex align-items-center col-md-3 justify-content-center" role="alert">
                                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>                                
                                <div>
                                    ${APPROVE_SUCCESS}
                                </div>
                            </div> 
                        </c:if>
                    </div>
                    <div class="row">
                        <div class="col-lg-9 col-md-9 mb-5">
                            <div class="row mb-3">
                                <div class="card overflow-hidden shadow ">
                                    <div class="card-header bg-white pt-4 pl-10 pr-10 border-bottom d-md-flex">
                                        <h5 class="">THÔNG TIN CÔNG VIỆC</h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="content-detail mb-3">
                                            <div class="d-flex flex-column flex-lg-row justify-content-between mb-2">
                                                <h5 class="text-secondary fw-medium text-truncated"><a
                                                        class="link-901 text-decoration-none " href="#!">${JOBDETAIL.title}</a></h5><span
                                                    class="fs-1 fw-medium"></span>
                                            </div>
                                            <div class="d-flex align-items-center mb-2">
                                                <h6>Lĩnh vực: ${JOBDETAIL.jobCategoryName}</h6>
                                            </div>
                                        </div>
                                        <div class="content-detail mb-3">
                                            <div class="align-items-center mb-2">
                                                <h6>Mô tả công việc:</h6>

                                                <span class="fw-medium" style="font-size: 0.88889rem; line-height: 2.5;">
                                                    ${JOBDETAIL.description}
                                                </span>

                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center mb-2">
                                            <h6>Mức lương: <span class="fw-medium" style="font-size: 14px;">                                                
                                                    <fmt:formatNumber value="${JOBDETAIL.salary}" pattern="#,### VNĐ/giờ"/>
                                                </span></h6>
                                        </div>
                                        <div class="d-flex align-items-center mb-2">
                                            <h6>Số người cần tuyển: <span class="fw-medium" style="font-size: 14px;">${JOBDETAIL.amount}
                                                    người</span></h6>
                                        </div>
                                        <div class="d-flex align-items-center mb-5">
                                            <h6>Thời gian công việc: <span class="fw-medium" style="font-size: 14px;">
                                                    <c:choose> 
                                                        <c:when test="${JOBDETAIL.timeJob==1}">
                                                            Ít hơn 1 tháng
                                                        </c:when> 
                                                        <c:when test="${JOBDETAIL.timeJob==2}">
                                                            1 - 3 tháng
                                                        </c:when>
                                                        <c:when test="${JOBDETAIL.timeJob==3}">
                                                            Hơn 3 tháng
                                                        </c:when> 
                                                    </c:choose></span></h6>
                                        </div>
                                        <div class="d-flex align-items-center"> <span class="fw-medium"
                                                                                      style="font-size: 14px;"> <img src="assets/img/dest/clock.svg"
                                                                           style="margin-right: 5px;" width="15" alt="navigation" /> Đã đăng ${JOBDETAIL.date}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="card overflow-hidden shadow ">
                                    <div class="card-header bg-white pt-4 pl-10 pr-10 border-bottom d-md-flex" style="padding-bottom: 1.4rem;">                                      
                                        <h5 class="">QUẢN LÝ FREELANCER ${ERROR}</h5>                                       
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12">
                                                <div class="row text-center justify-content-end" style="--bs-gutter-x: 0rem;">
                                                    <div class="col-lg-6">                                                      
                                                        <div class="input-group">
                                                            <input type="text" oninput="searchUser(this, this.getAttribute('data-jobId'))" 
                                                                   data-jobId="${JOBDETAIL.jobId}"
                                                                   name="search" value="" class="form-control"  placeholder="Tìm Freelancer..." style="text-indent: 1rem; border-radius: 0.2rem 0 0 0.2rem;">
                                                            <button class="btn btn-primary gradient-custom-2" style="width:7rem;" name="action" value="Search ">
                                                                Tìm kiếm
                                                            </button>
                                                        </div>                                                    
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="content">
                                        <c:forEach items="${requestScope.USER_DOING}" var="userDoing" varStatus="count">

                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="card overflow-hidden shadow">
                                                            <div class="card-body container">
                                                                <div class="row mb-3">
                                                                    <div class="col-md-1"><img
                                                                            src="${pageContext.servletContext.contextPath}/avatar?userId=${userDoing.userId}"
                                                                            alt class="" style="width: 50px; height: 50px; border-radius: 50%;"/>
                                                                    </div>
                                                                    <div class="col-md-8" style="padding-left: 0px;">
                                                                        <div class="d-flex flex-column flex-lg-row justify-content-between">
                                                                            <h5 class="fw-medium text-truncate">${userDoing.fullname}</h5>
                                                                            <span class="fs-1 fw-medium d-flex"></span>
                                                                        </div>
                                                                        <div class="d-flex align-items-center"><span class="fw-medium" style="font-size: 14px;"> Freelancer</span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3 text-end">
                                                                        <a type="button" class="text-secondary text-decoration-none hoverLink" data-bs-toggle="modal" data-bs-target="#ModalAnswer${count.index + 1}"> 
                                                                            <img src="assets/img/dest/form.svg" width="18" alt="navigation" /> Form đăng ký
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <!-- Modal -->
                                                                <div class="modal fade" id="ModalAnswer${count.index + 1}" tabindex="-1" data-bs-backdrop="false" aria-labelledby="exampleModalLabel" aria-hidden="true">

                                                                    <div class="modal-dialog modal-dialog-centered">

                                                                        <div class="modal-content modal-shadow">

                                                                            <div class="modal-header gradient-custom-2" >
                                                                                <h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff;">Câu trả lời của Ứng viên</h5>

                                                                            </div>
                                                                            <div class="modal-body" style="padding: 1.5rem;">
                                                                                <c:forEach items="${requestScope.USER_ANSWER_WAITING}" var="answerWaiting">
                                                                                    <c:if test="${userDoing.userId == answerWaiting.userId}">
                                                                                        <div class="mb-4">
                                                                                            <label for="formGroupExampleInput" class="form-label fw-bold">${answerWaiting.question}</label>                                                                                    
                                                                                            <input type="text" class="form-control" id="formGroupExampleInput" name="answer" value="${answerWaiting.answer}" readonly="">
                                                                                        </div>
                                                                                    </c:if>
                                                                                </c:forEach>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-outline-primary" data-bs-dismiss="modal">Đóng</button>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex align-items-center mb-3"> <span class="fw-medium" style="font-size: 14px;"><i class="fa fa-user" aria-hidden="true"></i> Thông tin liên hệ</span>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6 d-flex align-items-center mb-2"> <h6>Số điện thoại: <span class="fw-medium" style="font-size: 14px;"> ${userDoing.phone}</span></h6>
                                                                    </div>
                                                                    <div class="col-md-6 d-flex align-items-center mb-2"> <h6>Email: <span class="fw-medium" style="font-size: 14px;"> ${userDoing.email} </span></h6>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex align-items-center mb-2"> <h6>Facebook: <span class="fw-medium" style="font-size: 14px;"> <a class="text-decoration-none" href="${userDoing.facebook}">${userDoing.facebook}</a></span></h6></div>
                                                                <div class="d-flex align-items-center mb-2"> 
                                                                    <h6>Trạng thái:
                                                                        <c:choose>
                                                                            <c:when test="${userDoing.status == 'doing'}">
                                                                                <span id="${userDoing.userId}" class="fw-medium fw-bold text-success" style="font-size: 14px; ">Đang làm</span>
                                                                            </c:when>
                                                                            <c:when test="${userDoing.status == 'done'}">
                                                                                <span id="${userDoing.userId}" class="fw-medium fw-bold text-danger" style="font-size: 14px; ">Đã hoàn thành</span>
                                                                            </c:when>
                                                                        </c:choose>
                                                                    </h6>
                                                                </div>

                                                                <c:if test="${JOBDETAIL.process == 'doing'}">
                                                                    <div class="row mb-3 justify-content-end">
                                                                        <div class="col-md-3">                                                                       
                                                                            <select class="form-select fw-bold" onchange="changeStatus(this.getAttribute('data-applyJobId'), this.getAttribute('data-userId'), this)" 
                                                                                    data-applyJobId="${userDoing.applyJobId}"
                                                                                    data-userId="${userDoing.userId}">
                                                                                <option value="doing" ${userDoing.status == 'doing' ? 'selected' : ''}>Đang làm</option>
                                                                                <option value="done" ${userDoing.status == 'done' ? 'selected' : ''}>Đã hoàn thành</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>                                                       
                            </div>

                        </div>


                        <div class="col-lg-3 col-md-3">
                            <div class="card overflow-hidden shadow ">
                                <div
                                    class="card-header bg-white pt-4 pl-10 pr-10 border-bottom d-md-flex justify-content-center">
                                    <h5 class="">TRẠNG THÁI</h5>
                                </div>
                                <div class="card-body">
                                    <div class="row justify-content-center">
                                        <div class="content-detail mb-3">

                                            <div class="d-flex align-items-center">
                                                <h6 style="line-height: 2.5;">Trạng thái công việc:
                                                    <c:choose>
                                                        <c:when test="${JOBDETAIL.process == 'doing'}">
                                                            <span class="fw-medium text-success fw-bold" style="font-size: 14px; "> Đang thực hiện</span>
                                                        </c:when>
                                                        <c:when test="${JOBDETAIL.process == 'done'}">
                                                            <span class="fw-medium text-danger fw-bold" style="font-size: 14px; "> Đã hoàn tất</span>
                                                        </c:when>
                                                    </c:choose>
                                                </h6>
                                            </div>

                                            <div class="d-flex align-items-center">
                                                <h6 style="line-height: 2.5;">Tổng Freelancer: <span id="amountFreelancer" class="fw-medium" style="font-size: 14px; ">${requestScope.AMOUNT_FREELANCER}</span></h6>
                                            </div>

                                        </div>

                                    </div>
                                    <c:if test="${JOBDETAIL.process == 'doing'}">
                                        <div class="row justify-content-center text-center">
                                            <h6 style="line-height: 2.5;">Chuyển trạng thái công việc </h6>
                                            <div class="col-md-8 contact ">
                                                <a href="" class="btn btn-success btn-sm w-100" 
                                                   data-bs-toggle="modal" data-bs-target="#ModalConfirm"
                                                   style="background: linear-gradient(to right, #99df20, #009245 ); border:none;">
                                                    <i class="fa fa-check" aria-hidden="true"></i> Hoàn tất công việc </a>
                                            </div>
                                        </div>
                                    </c:if>
                                    <!-- Modal -->
                                    <div class="modal fade" id="ModalConfirm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

                                        <div class="modal-dialog modal-dialog-centered">

                                            <div class="modal-content">

                                                <div class="modal-header gradient-custom-2 justify-content-center">
                                                    <h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff;">Bạn có chắc công việc đã hoàn tất?</h5>
                                                </div>

                                                <div class="modal-footer justify-content-center">
                                                    <button type="button" class="btn btn-outline-primary" data-bs-dismiss="modal">Đóng</button>
                                                    <a href="main?action=SetJobDone&jobId=${JOBDETAIL.jobId}" type="button" class="btn btn-primary gradient-custom-2">Xác nhận</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </section>

                        <!-- ============================================-->
                        <!-- <section> begin ============================-->
                        <section class="pb-0 pb-lg-4 gradient-custom-2">

                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-3 col-md-7 col-12 mb-4 mb-md-6 mb-lg-0 order-0"> <img class="mb-4"
                                                                                                             src="https://hcmuni.fpt.edu.vn/landing-page/images/logo-top.png" width="150" alt="jadoo" />
                                        <p class="fs--1 text-white mb-0 fw-medium">Giúp bạn tìm kiếm những món đồ không may bị thất lạc
                                        </p>
                                    </div>
                                    <div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-1 order-md-2">
                                        <h4 class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">Company</h4>
                                        <ul class="list-unstyled mb-0">
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">About</a>
                                            </li>
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none"
                                                                href="#!">Careers</a></li>
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none"
                                                                href="#!">Mobile</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-2 order-md-3">
                                        <h4 class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">Contact</h4>
                                        <ul class="list-unstyled mb-0">
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none"
                                                                href="#!">Help/FAQ</a></li>
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Press</a>
                                            </li>
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none"
                                                                href="#!">Affiliate</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-3 order-md-4">
                                        <h4 class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">More</h4>
                                        <ul class="list-unstyled mb-0">
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none"
                                                                href="#!">Airlinefees</a></li>
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none"
                                                                href="#!">Airline</a></li>
                                            <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Low fare
                                                    tips</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-3 col-md-5 col-12 mb-4 mb-md-6 mb-lg-0 order-lg-4 order-md-1">
                                        <div class="icon-group mb-4"> <a class="text-decoration-none icon-item shadow-social"
                                                                         id="facebook" href="#!"><i class="fab fa-facebook-f"> </i></a><a
                                                                         class="text-decoration-none icon-item shadow-social" id="instagram" href="#!"><i
                                                    class="fab fa-instagram"> </i></a><a
                                                class="text-decoration-none icon-item shadow-social" id="twitter" href="#!"><i
                                                    class="fab fa-twitter">
                                                </i></a></div>
                                        <h4 class="fw-medium font-sans-serif text-white mb-3">Discover our app</h4>
                                        <div class="d-flex align-items-center"> <a href="#!"> <img class="me-2"
                                                                                                   src="assets/img/play-store.png" alt="play store" /></a><a href="#!"> <img
                                                    src="assets/img/apple-store.png" alt="apple store" /></a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end of .container-->

                        </section>
                        <!-- <section> close ============================-->
                        <!-- ============================================-->


                        <div class="py-5 text-center">
                            <p class="mb-0 text-secondary fs--1 fw-medium">FPT SmartSchool </p>
                        </div>
                        </main>
                        <!-- ===============================================-->
                        <!--    End of Main Content-->
                        <!-- ===============================================-->
                        <!--- AJAX -->
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                        <script>
                                                                                function changeStatus(applyJobId, userId, selectValue) {

                                                                                    $.ajax({
                                                                                        url: "/changeUserStatusJob",
                                                                                        type: "get",
                                                                                        data: {
                                                                                            applyJobId: applyJobId,
                                                                                            userId: userId,
                                                                                            selectValue: selectValue.value

                                                                                        },
                                                                                        success: function (data) {

                                                                                            if ('Done' === data) {
                                                                                                var row = document.getElementById(userId);
                                                                                                row.classList.remove("text-success");
                                                                                                row.classList.add("text-danger");
                                                                                                row.textContent = "Đã hoàn thành";
                                                                                            } else if ('Doing' === data) {
                                                                                                var row = document.getElementById(userId);
                                                                                                row.classList.remove("text-danger");
                                                                                                row.classList.add("text-success");
                                                                                                row.textContent = "Đang làm";
                                                                                            }

                                                                                        },
                                                                                        error: function (xhr) {
                                                                                            //Do Something to handle error
                                                                                        }
                                                                                    });
                                                                                }



                                                                                function searchUser(param, jobId) {
                                                                                    var txtSearch = param.value;
                                                                                    $.ajax({
                                                                                        url: "/searchUserDoingDone",
                                                                                        type: "get",
                                                                                        data: {
                                                                                            search: txtSearch,
                                                                                            jobId: jobId
                                                                                        },
                                                                                        success: function (data) {

                                                                                            var row = document.getElementById("content");
                                                                                            row.innerHTML = data;

                                                                                        },
                                                                                        error: function (xhr) {
                                                                                            //Do Something to handle error
                                                                                        }
                                                                                    });
                                                                                }

                        </script>
                        <!-- ===============================================-->
                        <!--    JavaScripts-->
                        <!-- ===============================================-->
                        <script src="vendors/@popperjs/popper.min.js"></script>
                        <script src="vendors/bootstrap/bootstrap.min.js"></script>
                        <script src="vendors/is/is.min.js"></script>
                        <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
                        <script src="vendors/fontawesome/all.min.js"></script>
                        <script src="assets/js/theme.js"></script>
                        <script src="assets/js/extention/choices.js"></script>


                        <script>
                                                                                const choices = new Choices('[data-trigger]',
                                                                                        {
                                                                                            searchEnabled: false
                                                                                        });

                        </script>
                        <link
                            href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;family=Volkhov:wght@700&amp;display=swap"
                            rel="stylesheet">
                        </body>

                        </html>
