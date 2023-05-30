<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
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
  <title>Admin</title>
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
  <div class="loader_bg">
    <div class="loader"><img src="images/loading.gif" alt="#" /></div>
  </div>
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
<!--                      <li> <a href="home.jsp">Manage</a> </li>
      
                      <li > <a   href="login.html">login</a> </li>
                       <li  > <a  class="last_manu" href="#"><img src="images/search_icon.png" alt="#" /></a> </li> 
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
                      </li>  -->
                      <li class="action-profile">
                        <div class="profile" onclick="menuToggle();">
                          <img src="images/123.jpg.png">
                        </div>
                        <div class="menu-profile">
                          <h3>Bao Hieu<br><span>Admin</span></h3>
                          <ul>
                            <li><img src="images/user.png"><a href="home.jsp">Manage</a></li>
                            <li><img src="images/log-out.png"><a href="login.jsp">Log out</a></li>
                          </ul>
                        </div>
                      </li>                   
                     </ul>
                   </nav>
                
               </div> 
             </div>
           </div>
         </div>
       </div>
     </div>

   
</header>

<!-- <div class="backgro_mh">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="heding">
           <h2>About</h2>
        </div>
      </div>
    </div>
  </div>
</div> -->

<!-- about  -->
<div id="sform" class="sform">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="about-box">
        <div class="sticky-form">
            <%
                String user_id=(String)request.getParameter("user_id");
                Edit_values obj_Edit_values=new Edit_values();
                User_Bean obj_User_Bean=obj_Edit_values.get_values_of_user(user_id);
            %>
            <div class="mt-6 text-center"><h1>Edit Profile</h1></div>
        <form method="post" action="controller/edit_controller.jsp">
            <input type="hidden" name="user_id" value="<%=obj_User_Bean.getUser_id()%>">
            <h1>User Name:</h1><input class="input_text" type="text" name="user_name" value="<%=obj_User_Bean.getUser_name()%>">
            <h1>Password:</h1><input class="input_text" type="text" name="password" value="<%=obj_User_Bean.getPassword()%>">
            <h1>Name In Game</h1><input class="input_text" type="text" name="name_in_game" value="<%=obj_User_Bean.getName_in_game()%>">
            <h1>Phone</h1><input class="input_text" type="text" name="phone" value="<%=obj_User_Bean.getPhone()%>">
            <h1>Star_amount</h1><input class="input_text" type="text" name="star_amount" value="<%=obj_User_Bean.getStar_amount()%>">
            <div class="mt-6 text-center"><input class="btn btn-primary profile-button" type="submit" value="Edit"></div>
        </form>
            
      </div>
    </div>
          

  </div>
</div>
<!-- end abouts -->

<!-- <div id="stable" class="stable">
    <div class="container">
        <div class="row display_boxflex">
            <div class="sticky-table">
            <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Mobile Number</th>
                    <th>Address</th>
                    <th>Email ID</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div class="user">
                            <img src="images/about.png" alt="">
                            <span>BH</span>
                        </div>
                    </td>
                    <td>content12</td>
                    <td>content13</td>
                    <td>content14</td>
                    <td>content15</td>
                </tr>
                <tr>
                    <td>
                        <div class="user">
                            <img src="images/about.png" alt="">
                            <span>BH</span>
                        </div>
                    </td>
                    <td>content12</td>
                    <td>content13</td>
                    <td>content14</td>
                    <td>content15</td>
                </tr>
                <tr>
                    <td>
                        <div class="user">
                            <img src="images/about.png" alt="">
                            <span>BH</span>
                        </div>
                    </td>
                    <td>content12</td>
                    <td>content13</td>
                    <td>content14</td>
                    <td>content15</td>
                </tr>
                <tr>
                    <td>
                        <div class="user">
                            <img src="images/about.png" alt="">
                            <span>BH</span>
                        </div>
                    </td>
                    <td>content12</td>
                    <td>content13</td>
                    <td>content14</td>
                    <td>content15</td>
                </tr>
            </tbody>
            </table>
        </div>     
        </div>
    </div>
</div> -->




               <div class="copyright">
               
                  <p>Admin Page <a href="#">Admin</a></p>
                </div> 
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