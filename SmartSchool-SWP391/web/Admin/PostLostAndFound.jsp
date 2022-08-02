<%-- 
    Document   : PostLostAndFound
    Created on : Jul 9, 2022, 9:31:15 PM
    Author     : TrinhNgocBao
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="Admin/assets/images/favicon.svg" type="image/x-icon" />
        <title>Admin</title>

        <!-- ========== All CSS files linkup ========= -->
        <link rel="stylesheet" href="Admin/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="Admin/assets/css/lineicons.css" />
        <link rel="stylesheet" href="Admin/assets/css/materialdesignicons.min.css" />
        <link rel="stylesheet" href="Admin/assets/css/fullcalendar.css" />
        <link rel="stylesheet" href="Admin/assets/css/fullcalendar.css" />
        <link rel="stylesheet" href="Admin/assets/css/main.css" />
        <link rel="stylesheet" href="Admin/assets/css/styles.css" />
        <style>
            .top-selling-table .product{
                min-width: 70px;
            }

            .top-selling-table .product .image {
                height: 100%;
                max-width: 150px;
            }

        </style>
    </head>

    <body>
        <!-- ======== sidebar-nav start =========== -->
        <aside class="sidebar-nav-wrapper">
            <div class="navbar-logo">
                <a href="index.html">
                    <img src="https://upload.wikimedia.org/wikipedia/vi/1/1d/Logo_%C4%90%E1%BA%A1i_h%E1%BB%8Dc_FPT.png"
                         style="width: 150px;" alt="logo" />
                </a>
            </div>
            <nav class="sidebar-nav">
                <ul>
                    <li class="nav-item nav-item-has-children">
                        <a href="#0" class="collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_1" aria-controls="ddmenu_1"
                           aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon">
                                <i class="lni lni-bar-chart" style="font-weight: 700;"></i>
                            </span>
                            <span class="text">Dashboard</span>
                        </a>
                        <ul id="ddmenu_1" class="collapse dropdown-nav">
                            <li>
                                <a href="adminLostAndFound" class="active"> Lost And Found </a>
                            </li>
                            <li>
                                <a href="adminFreelance" class=""> Freelance Job </a>
                            </li>
                        </ul>
                    </li>
                    <span class="divider">
                        <hr />
                    </span>
                    <li class="nav-item nav-item-has-children">
                        <a href="#0" class="collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_2" aria-controls="ddmenu_2"
                           aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon">
                                <i class="lni lni-text-align-justify" style="font-weight: 700;"></i>
                            </span>
                            <span class="text">Category</span>
                        </a>
                        <ul id="ddmenu_2" class="collapse dropdown-nav">
                            <li>
                                <a href="category" class=""> Category Lost & Found </a>
                            </li>
                            <li>
                                <a href="jobCategory" class=""> Category Freelance Job </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-item-has-children">
                        <a href="#0" class="collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_3" aria-controls="ddmenu_3"
                           aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon">
                                <i class="lni lni-add-files" style="font-weight: 700;"></i>
                            </span>
                            <span class="text">Approve Posts</span>
                        </a>
                        <ul id="ddmenu_3" class="collapse dropdown-nav">
                            <li>
                                <a href="listPostToApprove"> Lost & Found Posts </a>
                            </li>
                            <li>
                                <a href="approveJobPost"> Freelance Job Posts </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-item-has-children">
                        <a href="#0" data-bs-toggle="collapse" data-bs-target="#ddmenu_4" aria-controls="ddmenu_4"
                           aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon">
                                <i class="lni lni-empty-file" style="font-weight: 700;"></i>
                            </span>
                            <span class="text">Posts</span>
                        </a>
                        <ul id="ddmenu_4" class="collapse show dropdown-nav">
                            <li>
                                <a href="" class="active"> Lost & Found </a>
                            </li>
                            <li>
                                <a href="adminFreelancePost"> Freelance Job </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-item-has-children">
                        <a href="#0" class="collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_5" aria-controls="ddmenu_5"
                           aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon">
                                <i class="lni lni-remove-file" style="font-weight: 700;"></i>
                            </span>
                            <span class="text">Report Posts</span>
                        </a>
                        <ul id="ddmenu_5" class="collapse dropdown-nav">
                            <li>
                                <a href=""> Lost & Found </a>
                            </li>
                            <li>
                                <a href=""> Freelance Job </a>
                            </li>
                        </ul>
                    </li>
                    <span class="divider">
                        <hr />
                    </span>
                    <li class="nav-item nav-item-has-children">
                        <a href="#0" class="collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_6" aria-controls="ddmenu_6"
                           aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon">
                                <i class="lni lni-users" style="font-weight: 700;"></i>
                            </span>
                            <span class="text">Users</span>
                        </a>
                        <ul id="ddmenu_6" class="collapse dropdown-nav">
                            <li>
                                <a href=""> Manage </a>
                            </li>
                            <li>
                                <a href=""> Banned </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="">
                            <span class="icon">
                                <i class="lni lni-bubble" style="font-weight: 700;"></i>
                            </span>
                            <span class="text">Feedback System</span>
                        </a>
                    </li>
                    <span class="divider">
                        <hr />
                    </span>
                </ul>
            </nav>
            <!-- <div class="promo-box">
                <h3>PlainAdmin Pro</h3>
                <p>Get All Dashboards and 300+ UI Elements</p>
                <a
                  href="https://plainadmin.com/pro"
                  target="_blank"
                  rel="nofollow"
                  class="main-btn primary-btn btn-hover"
                >
                  Purchase Now
                </a>
              </div> -->
        </aside>
        <div class="overlay"></div>
        <!-- ======== sidebar-nav end =========== -->

        <!-- ======== main-wrapper start =========== -->
        <main class="main-wrapper">
            <!-- ========== header start ========== -->
            <header class="header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-6">
                            <div class="header-left d-flex align-items-center">
                                <div class="menu-toggle-btn mr-20">
                                    <button id="menu-toggle" class="main-btn primary-btn btn-hover">
                                        <i class="lni lni-chevron-left me-2"></i> Menu
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-6">
                            <div class="header-right">
                                <!-- profile start -->
                                <div class="profile-box ml-15">
                                    <button class="dropdown-toggle bg-transparent border-0" type="button" id="profile"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                        <div class="profile-info">
                                            <div class="info">
                                                <h6>Admin</h6>
                                                <div class="image">
                                                    <img src="/Admin/assets/images/profile/profile-image.png" alt="" />
                                                    <span class="status"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <i class="lni lni-chevron-down"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profile">
                                        <li>
                                            <a href="/logout"> <i class="lni lni-exit"></i> Sign Out </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- profile end -->
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- ========== header end ========== -->

            <!-- ========== section start ========== -->
            <section class="section">
                <div class="container-fluid">
                    <!-- ========== title-wrapper start ========== -->
                    <div class="title-wrapper pt-30">
                        <div class="row align-items-center">
                            <div class="col-md-6">
                                <div class="title mb-30">
                                    <h2>Posts: Lost And Found</h2>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-md-6">
                                <div class="breadcrumb-wrapper mb-30">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="#0">Posts</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">
                                                Lost And Found
                                            </li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                    </div>
                    <!-- ========== title-wrapper end ========== -->
                    <!-- End Row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-style mb-30">
                                <div class="
                                     title
                                     d-flex
                                     flex-wrap
                                     justify-content-between
                                     align-items-center
                                     ">
                                    <div class="left">
                                        <h6 class="text-medium mb-30">Posts</h6>
                                    </div>
                                    <div class="right">
                                        <div class="title d-flex align-items-center flex-wrap mb-30">
                                            <button type="button" class="main-btn warning-btn btn-hover btn-sm">
                                                <i class="lni lni-empty-file mr-5" style="font-size: 20px;"></i>Total: ${requestScope.TOTALPOST}</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Title -->
                                <div class="table-responsive">
                                    <table class="table top-selling-table">
                                        <thead>
                                            <tr>                    
                                                <th>
                                                    <h6 style="text-align: center" class="text-sm text-medium">Image</h6>
                                                </th>
                                                <th class="min-width">
                                                    <h6 class="text-sm text-medium">Title</h6>
                                                </th>
                                                <th class="min-width">
                                                    <h6 class="text-sm text-medium">Description</h6>
                                                </th>
                                                <th class="min-width">
                                                    <h6 class="text-sm text-medium">Category</h6>
                                                </th>
                                                <th class="min-width">
                                                    <h6 class="text-sm text-medium">User</h6>
                                                </th>
                                                <th class="min-width">
                                                    <h6 class="text-sm text-medium text-center">Type</h6>
                                                </th>
                                                <!--                                                <th class="min-width">
                                                                                                    <h6 class="text-sm text-medium text-center">Detail</h6>
                                                                                                </th>-->
                                                <th class="min-width">
                                                    <h6 class="text-sm text-medium text-center">Action</h6>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.LISTPOST}" var="listPost">
                                                <tr>
                                                    <td>
                                                        <div class="product">
                                                            <div style="height: 90px;width: 100px" class="image">
                                                                <img src="${pageContext.servletContext.contextPath}/item?postId=${listPost.postId}" alt="" />
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="text-sm">${listPost.title}</p>
                                                    </td>
                                                    <td>
                                                        <p style="padding-right: 20px" class="text-sm">${listPost.description}</p>
                                                    </td>
                                                    <td>
                                                        <p class="text-sm">${listPost.categoryName}</p>
                                                    </td>
                                                    <td>
                                                        <p class="text-sm">${listPost.userId}</p>
                                                    </td>
                                                    <td>


                                                        <c:choose> 
                                                            <c:when test="${listPost.type=='0'}">
                                                                <div class="action justify-content-center">
                                                                    <span class="status-btn warning-btn">Lost</span>
                                                                </div>
                                                            </c:when>    
                                                            <c:otherwise>
                                                                <div class="action justify-content-center">
                                                                    <span class="status-btn success-btn">Found</span>
                                                                </div>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <!--                                                    <td>
                                                                                                            <div class="action justify-content-center">
                                                                                                                <button type="button" class="text-gray" style="font-size:23px;" data-bs-toggle="modal"
                                                                                                                        data-bs-target="#ModalDetailPost" 
                                                                                                                        onclick="truyenDataDetail(this.getAttribute('data-idP'), this.getAttribute('data-titleP'), this.getAttribute('data-descP'),
                                                                                                                                        this.getAttribute('data-cateName'), this.getAttribute('data-userId'), this.getAttribute('data-dateP'))"
                                                                                                                        data-idP="${listPost.postId}"
                                                                                                                        data-titleP="${listPost.title}"
                                                                                                                        data-descP="${listPost.description}"
                                                                                                                        data-cateName="${listPost.categoryName}"
                                                                                                                        data-userId="${listPost.userId}"
                                                                                                                        data-dateP="${listPost.date}"
                                                    
                                                                                                                        >
                                                                                                                    <i class="lni lni-eye fw-bold"></i>
                                                                                                                </button>
                                                                                                            </div>
                                                                                                        </td>-->
                                                    <td>
                                                        <div class="action justify-content-center">
                                                            <!--                                                            <button class="text-gray" style="font-size:23px;">
                                                                                                                            <a href="main?action=DeletePost&postId=${listPost.postId}" class="text-danger"><i class="lni lni-trash-can fw-bold"></i></a>
                                                                                                                        </button>-->
                                                            <button class="text-danger" style="font-size:23px;" onclick="truyenIdDelete(this.getAttribute('data-PostId'))" data-bs-toggle="modal"
                                                                    data-bs-target="#ModalDeletePost" data-PostId="${listPost.postId}">
                                                                <i class="lni lni-trash-can fw-bold"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                </c:forEach>
                                        </tbody>
                                    </table>
                                    <!-- End Table -->

                                    <!--Modal Delete-->
                                    <form action="main">
                                        <div class="modal fade" id="ModalDeletePost" tabindex="-1" aria-labelledby="exampleModalLabel"
                                             aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header justify-content-center">
                                                        <h4 class="modal-title text-danger" id="exampleModalLabel">Xóa bài đăng này?</h4>
                                                    </div>
                                                    <div class="modal-footer justify-content-center">
                                                        <button type="button" class="main-btn warning-btn-outline btn-hover btn-sm"
                                                                data-bs-dismiss="modal">Hủy</button>
                                                        <input type="hidden" id="PostId2"  name="postId"/>
                                                        <button type="submit" name="action" value="DeletePost" class="main-btn warning-btn btn-hover btn-sm">Xóa</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End Col -->
                    </div>
                    <!-- End Row -->
                </div>
                <!-- end container -->
            </section>
            <!-- ========== section end ========== -->
            <!--            <div class="modal fade" id="ModalDetailPost" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="exampleModalLabel">Item Information</h4>
                                    </div>
                                    <div class="modal-body">
                                        <input type="hidden" name="jobId" id="IdDe"/>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="content-detail mb-3">
                                                    <div class="d-flex flex-column flex-lg-row justify-content-between mb-3">
                                                        <h4 class="text-gray fw-medium text-truncate"><a class="text-decoration-none" id="titleP" name="title"></a></h4><span
                                                            class="fs-1 fw-medium"></span>
                                                    </div>
                                                    <div class="d-flex align-items-center mb-3">
            
                                                        <h6 id="CateD" name="jobCategoryName"></h6>
                                                    </div>
                                                </div>
                                                <div class="content-detail mb-3">
                                                    <div class="align-items-center mb-2">
                                                        <h6 class="mb-2">Mô tả:</h6>
                                                        <span id="descP" name="description" class="fw-medium" style="font-size: 0.88889rem; line-height: 2.5;"></span>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center mb-3">
                                                    <h6>Danh mục: <span id="cateNameP" name="cateNameP" class="fw-medium" style="font-size: 14px;">
                                                        </span></h6>
                                                </div>
            
                                                <p class="mb-2">Posted by</p>
                                                <div class="d-flex align-items-center top-selling-table mb-3">
                                                    <div class="product">
                                                        <div class="image user-image">
                                                            <img id="imgUser" name="avatar"
                                                                 alt="" width="45px" height="45px"/>
                                                        </div>
                                                        <p id="userP" name="fullname" class="text-sm"></p>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center">
                                                    <span class="fw-medium" style="font-size: 14px;" id="dateP" name="date" > 
                                                        <img src="/Admin/assets/images/clock.svg" style="margin-right: 5px;" width="15" alt="navigation" />
                                                        <img src="/Admin/assets/images/clock.svg"/>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <img id="img" name="imgPost"
                                                     alt=""  width="500px" height="400px" style="border-radius: 10px"/>
                                            </div>
                                        </div>
            
                                    </div>
                                    <div class="modal-footer justify-content-center">
                                        <button type="button" class="main-btn light-btn btn-hover btn-sm" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div-->
            <!-- ========== footer start =========== -->
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 order-last order-md-first">
                            <div class="copyright text-center text-md-start">
                                <p class="text-sm">
                                    FPT SmartSchool
                                    <a href="" rel="nofollow" target="_blank">
                                        Website
                                    </a>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="
                                 terms
                                 d-flex
                                 justify-content-center justify-content-md-end
                                 ">
                                <a href="" class="text-sm">SOS Team</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- ========== footer end =========== -->
        </main>
        <!-- ======== main-wrapper end =========== -->

        <!-- ========= All Javascript files linkup ======== -->
        <script src="Admin/assets/js/bootstrap.bundle.min.js"></script>
        <script src="Admin/assets/js/Chart.min.js"></script>
        <script src="Admin/assets/js/dynamic-pie-chart.js"></script>
        <script src="Admin/assets/js/moment.min.js"></script>
        <script src="Admin/assets/js/fullcalendar.js"></script>
        <script src="Admin/assets/js/jvectormap.min.js"></script>
        <script src="Admin/assets/js/world-merc.js"></script>
        <script src="Admin/assets/js/polyfill.js"></script>
        <script src="Admin/assets/js/main.js"></script>
                <script>
                                                                                function truyenDataDetail(idP, titleP, descP, cateNameP, userP, dateP) {
                                                                                    document.getElementById("titleP").innerHTML = titleP;
                                                                                    document.getElementById("descP").innerHTML = descP;
                                                                                    document.getElementById("cateNameP").innerHTML = cateNameP;
                                                                                    document.getElementById("userP").innerHTML = userP;
                                                                                    document.getElementById("img").setAttribute("src", "/item?postId=" + idP)
                                                                                    document.getElementById("imgUser").setAttribute("src", "/avatar?userId=" + userP);
                                                                                    document.getElementById("dateP").innerHTML = dateP;
                                                                                }
                </script>
        <script>
                                                                function truyenIdDelete(PostId) {
                                                                    document.getElementById("PostId2").value = PostId;
                                                                }
        </script>

        <script>
            // ======== jvectormap activation
            var markers = [
                {name: "Egypt", coords: [26.8206, 30.8025]},
                {name: "Russia", coords: [61.524, 105.3188]},
                {name: "Canada", coords: [56.1304, -106.3468]},
                {name: "Greenland", coords: [71.7069, -42.6043]},
                {name: "Brazil", coords: [-14.235, -51.9253]},
            ];

            var jvm = new jsVectorMap({
                map: "world_merc",
                selector: "#map",
                zoomButtons: true,

                regionStyle: {
                    initial: {
                        fill: "#d1d5db",
                    },
                },

                labels: {
                    markers: {
                        render: (marker) => marker.name,
                    },
                },

                markersSelectable: true,
                selectedMarkers: markers.map((marker, index) => {
                    var name = marker.name;

                    if (name === "Russia" || name === "Brazil") {
                        return index;
                    }
                }),
                markers: markers,
                markerStyle: {
                    initial: {fill: "#4A6CF7"},
                    selected: {fill: "#ff5050"},
                },
                markerLabelStyle: {
                    initial: {
                        fontWeight: 400,
                        fontSize: 14,
                    },
                },
            });
            // ====== calendar activation
            document.addEventListener("DOMContentLoaded", function () {
                var calendarMiniEl = document.getElementById("calendar-mini");
                var calendarMini = new FullCalendar.Calendar(calendarMiniEl, {
                    initialView: "dayGridMonth",
                    headerToolbar: {
                        end: "today prev,next",
                    },
                });
                calendarMini.render();
            });

            // =========== chart one start
            const ctx1 = document.getElementById("Chart1").getContext("2d");
            const chart1 = new Chart(ctx1, {
                // The type of chart we want to create
                type: "line", // also try bar or other graph types

                // The data for our dataset
                data: {
                    labels: [
                        "Day 1",
                        "Day 2",
                        "Day 3",
                        "Day 4",
                        "Day 5",
                        "Day 6",
                        "Day 7",
                    ],
                    // Information about the dataset
                    datasets: [
                        {
                            label: "",
                            backgroundColor: "transparent",
                            borderColor: "#9b51e0",
                            data: [
                                0, 10, 35, 42, 61, 51, 11,
                            ],
                            pointBackgroundColor: "transparent",
                            pointHoverBackgroundColor: "#9b51e0",
                            pointBorderColor: "transparent",
                            pointHoverBorderColor: "#fff",
                            pointHoverBorderWidth: 5,
                            pointBorderWidth: 5,
                            pointRadius: 8,
                            pointHoverRadius: 8,
                        },
                    ],
                },

                // Configuration options
                defaultFontFamily: "Inter",
                options: {
                    tooltips: {
                        callbacks: {
                            labelColor: function (tooltipItem, chart) {
                                return {
                                    backgroundColor: "#ffffff",
                                };
                            },
                        },
                        intersect: false,
                        backgroundColor: "#f9f9f9",
                        titleFontFamily: "Inter",
                        titleFontColor: "#8F92A1",
                        titleFontColor: "#8F92A1",
                        titleFontSize: 12,
                        bodyFontFamily: "Inter",
                        bodyFontColor: "#171717",
                        bodyFontStyle: "bold",
                        bodyFontSize: 16,
                        multiKeyBackground: "transparent",
                        displayColors: false,
                        xPadding: 30,
                        yPadding: 10,
                        bodyAlign: "center",
                        titleAlign: "center",
                    },

                    title: {
                        display: false,
                    },
                    legend: {
                        display: false,
                    },

                    scales: {
                        yAxes: [
                            {
                                gridLines: {
                                    display: false,
                                    drawTicks: false,
                                    drawBorder: false,
                                },
                                ticks: {
                                    padding: 35,
                                    max: 100,
                                    min: 0,
                                },
                            },
                        ],
                        xAxes: [
                            {
                                gridLines: {
                                    drawBorder: false,
                                    color: "rgba(143, 146, 161, .1)",
                                    zeroLineColor: "rgba(143, 146, 161, .1)",
                                },
                                ticks: {
                                    padding: 20,
                                },
                            },
                        ],
                    },
                },
            });

            // =========== chart one end

            // ================== chart two start
            const ctx2 = document.getElementById("Chart2").getContext("2d");
            const chart2 = new Chart(ctx2, {
                // The type of chart we want to create
                type: "bar", // also try bar or other graph types
                // The data for our dataset
                data: {
                    labels: [
                        "Day 1",
                        "Day 2",
                        "Day 3",
                        "Day 4",
                        "Day 5",
                        "Day 6",
                        "Day 7", ],
                    // Information about the dataset
                    datasets: [
                        {
                            label: "",
                            backgroundColor: "#f2994a",
                            barThickness: "flex",
                            maxBarThickness: 8,
                            data: [60, 70, 34, 50, 65, 23, 11],
                        },
                        {
                            label: "",
                            backgroundColor: "#219653",
                            barThickness: "flex",
                            maxBarThickness: 8,
                            data: [69, 74, 72, 50, 45, 90, 31],
                        },
                    ],
                },
                // Configuration options
                options: {
                    borderColor: "#F3F6F8",
                    borderWidth: 15,
                    backgroundColor: "#F3F6F8",
                    tooltips: {
                        callbacks: {
                            labelColor: function (tooltipItem, chart) {
                                return {
                                    backgroundColor: "rgba(104, 110, 255, .0)",
                                };
                            },
                        },
                        backgroundColor: "#F3F6F8",
                        titleFontColor: "#8F92A1",
                        titleFontSize: 12,
                        bodyFontColor: "#171717",
                        bodyFontStyle: "bold",
                        bodyFontSize: 16,
                        multiKeyBackground: "transparent",
                        displayColors: false,
                        xPadding: 30,
                        yPadding: 10,
                        bodyAlign: "center",
                        titleAlign: "center",
                    },

                    title: {
                        display: false,
                    },
                    legend: {
                        display: false,
                    },

                    scales: {
                        yAxes: [
                            {
                                gridLines: {
                                    display: false,
                                    drawTicks: false,
                                    drawBorder: false,
                                },
                                ticks: {
                                    padding: 35,
                                    max: 100,
                                    min: 0,
                                },
                            },
                        ],
                        xAxes: [
                            {
                                gridLines: {
                                    display: false,
                                    drawBorder: false,
                                    color: "rgba(143, 146, 161, .1)",
                                    zeroLineColor: "rgba(143, 146, 161, .1)",
                                },
                                ticks: {
                                    padding: 20,
                                },
                            },
                        ],
                    },
                },
            });
            // =========== chart four end
        </script>
    </body>

</html>
