<%-- 
    Document   : header
    Created on : Dec 4, 2018, 8:51:06 AM
    Author     : admin
--%>

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
    </head>
    <body>
        <%
            Student student = null;
            if(session.getAttribute("student") != null) {
                student = (Student) session.getAttribute("student");
            }
        %>
        <header id="header">
            <!-- Nav -->
            <div id="nav">
                <!-- Main Nav -->
                <div id="nav-fixed">
                    <div class="container">
                        <!-- logo -->
                        <div class="nav-logo">
                            <a href="index.jsp" class="logo"><img src="${pageContext.request.contextPath}/page/img/logo.png" alt=""></a>
                        </div>
                        <!-- /logo -->

                        <!-- nav -->
                        <ul class="nav-menu nav navbar-nav">
                            <li><a href="category.html">Tin tức</a></li>
                            <li class="cat-1"><a href="mark.jsp">Điểm</a></li>
                            <li class="cat-2"><a href="category.html">TKB</a></li>
                            <li class="cat-3"><a href="category.html">Thông tin cá nhân</a></li>
                            <li class="cat-4"><a href="category.html">Lịch thi</a></li>
                        </ul>
                        <!-- /nav -->

                        <!-- search & aside toggle -->
                        <div class="nav-btns">
                            <% if(student != null) { %>
                            <script type="text/javascript">
                                $(document).ready(function(){
                                    $('.login').remove();
                                });
                            </script>
                            <span>Welcome <%=student.getLastName()%> <%=student.getFirstName()%></span>
                            <% } else { %>
                                <button class="primary-button login" id="primary-button"  onclick="location.href = 'login.jsp';" > Đăng Nhập</button>
                            <% } %>
                            
                            <button class="aside-btn"><i class="fa fa-bars"></i></button>
                            <button class="search-btn"><i class="fa fa-search"></i></button>
                            <div class="search-form">
                                <input class="search-input" type="text" name="search" placeholder="Enter Your Search ...">
                                <button class="search-close"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /search & aside toggle -->
                    </div>
                </div>
                <!-- /Main Nav -->

                <!-- Aside Nav -->
                <div id="nav-aside">
                    <!-- nav -->
                    <div class="section-row">
                        <ul class="nav-aside-menu">
                            <li><a href="./index.jsp">Trang chủ</a></li>
                            <li><a href="#">Tin tức</a></li>
                            <li><a href="#">Thời khóa biểu</a></li>
                            <li><a href="mark.jsp">Điểm</a></li>
                            <li><a href="#">Lịch thi</a></li>
                        </ul>
                    </div>
                    <!-- /nav -->

                    <!-- widget posts -->
                    <div class="section-row">
                        <h3>Recent Posts</h3>
                        <div class="post post-widget">
                            <a class="post-img" href="blog-post.html"><img src="${pageContext.request.contextPath}/page/img/widget-2.jpg" alt=""></a>
                            <div class="post-body">
                                <h3 class="post-title"><a href="blog-post.html">Pagedraw UI Builder Turns Your Website Design Mockup Into Code Automatically</a></h3>
                            </div>
                        </div>

                        <div class="post post-widget">
                            <a class="post-img" href="blog-post.html"><img src="${pageContext.request.contextPath}/page/img/widget-3.jpg" alt=""></a>
                            <div class="post-body">
                                <h3 class="post-title"><a href="blog-post.html">Why Node.js Is The Coolest Kid On The Backend Development Block!</a></h3>
                            </div>
                        </div>

                        <div class="post post-widget">
                            <a class="post-img" href="blog-post.html"><img src="${pageContext.request.contextPath}/page/img/widget-4.jpg" alt=""></a>
                            <div class="post-body">
                                <h3 class="post-title"><a href="blog-post.html">Tell-A-Tool: Guide To Web Design And Development Tools</a></h3>
                            </div>
                        </div>
                    </div>
                    <!-- /widget posts -->

                    <!-- social links -->
                    <div class="section-row">
                        <h3>Follow us</h3>
                        <ul class="nav-aside-social">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                    <!-- /social links -->

                    <!-- aside nav close -->
                    <button class="nav-aside-close"><i class="fa fa-times"></i></button>
                    <!-- /aside nav close -->
                </div>
                <!-- Aside Nav -->
            </div>
            <!-- /Nav -->
        </header>
        <!-- /Header -->
    </body>
</html>
