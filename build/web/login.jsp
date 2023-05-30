
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- basic -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- mobile metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- site metas -->
  <title>Login</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- fevicon -->
  <link rel="icon" href="images/fevicon.png" type="image/gif" />
  <!-- bootstrap css -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- style css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- Responsive-->
  <link rel="stylesheet" href="css/responsive.css">  
  <!-- Scrollbar Custom CSS -->
  <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
  <!-- Tweaks for older IEs-->
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout contineer_page">
 

  <!-- loader  -->
<!--  <div class="loader_bg">
    <div class="loader"><img src="images/loading.gif" alt="#" /></div>
  </div>-->
  <!-- end loader -->
  <!-- header -->
  <header>


    <div class="header">
      <div class="container">
        <div class="row">
          <div class="col-xl-2 col-lg-2 col-md-2 col-sm-3 col logo_section">
            <div class="full">
              <div class="center-desk">
                <div class="logo">
                  <a href="index.html"></a>
                  <img src="images/logo_1.png" alt="#" />
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-10 col-lg-10 col-md-10 col-sm-9">
            
             <div class="menu-area">
              <div class="limit-box">
                <nav class="main-menu ">
                  <ul class="menu-area-main">
<!--                    <li> <a href="#">Manage</a> </li>-->
                    <li> <a href="index.html">Library</a> </li>
                    <li > <a   href="login.jsp">login</a> </li>
                    <!-- <li  > <a  class="last_manu" href="#"><img src="images/search_icon.png" alt="#" /></a> </li> -->
                    <li class="search-toggle">
                      <div class="search-container">
                        <div id="search-group" class="search-group close-search">
                          <div class="toggle-target-container">
                            <div class="toggle-target"><input   type="text" class="search-text" placeholder="Search"></div>
                          </div>
                          <div class="search-button-container">
                            <span class="input-group-addon search-button"><i class="fa fa-search" id="search-icon"></i></span>
                          </div>
                        </div>
                      </div>
                    </li>  
<!--                    <li class="action-profile">
                      <div class="profile" onclick="menuToggle();">
                        <img src="images/123.jpg.png">
                      </div>
                      <div class="menu-profile">
                        <h3>Bao Hieu<br><span>Admin</span></h3>
                        <ul>
                          <li><img src="images/user.png"><a href="account_admin.html">Account</a></li>
                          <li><img src="images/log-out.png"><a href="###">Log out</a></li>
                        </ul>
                      </div>
                    </li>                   -->
                   </ul>
                 </nav>
              
             </div> 
           </div>
         </div>
       </div>
     </div>
   </div>

 
</header>



<!-- Login  -->
<div id="login" class="login">
  <div class="container"> 
        <div class="row">
          <div class="col-md-12">
            <form class="login_bg" action="login" method="post">
          <div class="row">
            <div class="col-md-12">
              <div class="titleepage">
                <h2>Login</h2>
              </div>

              <div class="col-md-12" >
                <input class="loginuser" placeholder="User Name" type="text" name="user">
              </div>
              <div class="col-md-12">
                <input class="loginuser" placeholder="Password" type="password" name="pass">
              </div>
              <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
<!--                <a href="#" class="buttonlogin">Sign in</a>
                <a href="Signup.html" class="buttonlogin">Sign up</a>-->
                <input class="buttonlogin" type="submit" value="LOGIN"/>
                <%
                    if(request.getAttribute("error")!=null) {
                        String er=(String)request.getAttribute("error"); 
                %>
                <h3 style="color: red"><%= er %></h3>
                <%
                    }
                %>
              </div>     



<!--              <form action="login" method="post">
                <input class="loginuser" placeholder="User Name" type="text" name="user"/><br/> comment 
                <input class="loginuser" placeholder="Password" type="password" name="pass"/><br/> comment 
                <input type="submit" value="LOGIN"/><br/> comment 

-->
              <!-- <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <button class="buttonlogin">Sign up</button>
              </div> -->
            </div>

        </div>
      </div>
    </div>
  </div>
</div>
<!-- end Login -->






    <!--  footer -->
<!--    <footr>
      <div class="footer ">
        <div class="container">
          <div class="row">

            </div>
            </form>

            </div>
            <div class="col-md-12 border_top">
              <form class="news">
               <h3>E-mail</h3>
                <input class="newslatter" placeholder="ENTER YOUR MAIL" type="text" name=" ENTER YOUR MAIL">
                <button class="submit">Subscribe</button>
              </form>
            </div>
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 ">
              <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 ">
                  <div class="address">
                    <ul class="loca">
                      <li>
                        <a href="https://www.google.com/maps/place/19+H%E1%BB%93+T%C6%B0%C6%A1ng,+Thanh+Kh%C3%AA+%C4%90%C3%B4ng,+Thanh+Kh%C3%AA,+%C4%90%C3%A0+N%E1%BA%B5ng+550000,+Vietnam/@16.0631575,108.1810338,17z/data=!4m5!3m4!1s0x31421903c1e1af29:0xda107885bb737c88!8m2!3d16.0631575!4d108.1832278"><img src="icon/loc.png" alt="#" /></a>Locations
                   
                        <li>
                          
                            <a href="#"><img src="icon/call.png" alt="#" /></a>+840932542806 </li>
                          <li>
                            <a href="#"><img src="icon/email.png" alt="#" /></a>bh@gmail.com </li>
                          </ul>
                         

                        </div>
                      </div>
                       <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 ">
                           <ul class="social_link">
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                          </ul>
                       </div>
                    </div>
                  </div>

                </div>

              </div>
               <div class="container">
               <div class="copyright">
               
                  <p>Copyright 2019 All Right Reserved By <a href="https://html.design/">Free  html Templates</a></p>
                </div> 
              </div>
            </div>
          </footr>-->
          <!-- end footer -->
          <!-- Javascript files-->
          <script src="js/jquery.min.js"></script>
          <script src="js/popper.min.js"></script>
          <script src="js/bootstrap.bundle.min.js"></script>
          <script src="js/jquery-3.0.0.min.js"></script>
          <script src="js/plugin.js"></script>
          <script src="js/search.js"></script>
          <script src="js/profile-box.js"></script>


          <!-- sidebar -->
          <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
          <script src="js/custom.js"></script>
          <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>




</body>

</html>