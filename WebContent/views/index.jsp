<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Musik | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/font.css" type="text/css" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/app.css" type="text/css" />  
    <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xl">
      <a class="navbar-brand block" href="index.html"><span class="h1 font-bold">Musik</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>Sign in to get in touch</strong>
        </header>
        <form action="/webmusic/login" method="get">
          <div class="form-group">
            <input type="email" placeholder="Email" name="email"class="form-control rounded input-lg text-center no-border">
          </div>
          <div class="form-group">
             <input type="password"  name="passwd"placeholder="Password" class="form-control rounded input-lg text-center no-border">
          </div>
          <button type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">Sign in</span></button>
          <div class="text-center m-t m-b"><a href="#"><small>Forgot password?</small></a></div>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>Do not have an account?</small></p>
          <a href="/webmusic/views/register.jsp" class="btn btn-lg btn-info btn-block rounded">Create an account</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2014</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <script src="<%=request.getContextPath()%>/views/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="<%=request.getContextPath()%>/views/js/bootstrap.js"></script>
  <!-- App -->
  <script src="<%=request.getContextPath()%>/views/js/app.js"></script>  
  <script src="<%=request.getContextPath()%>/views/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/views/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/views/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/views/js/jPlayer/demo.js"></script>

</body>
</html>