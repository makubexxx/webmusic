<%@page import="com.webmusic.model.Mv"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.webmusic.model.Song"%> 
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>MUSIC </title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="alternate icon" type="image/png" href="<%=request.getContextPath()%>/views/assets/i/favicon.png">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/assets/css/amazeui.min.css"/>
  <base target="_blank" />
  <style>
    @media only screen and (min-width: 1200px) {
      .blog-g-fixed {
        max-width: 1200px;
      }
    }

    @media only screen and (min-width: 641px) {
      .blog-sidebar {
        font-size: 1.4rem;
      }
    }

    .blog-main {
      padding: 20px 0;
    }

    .blog-title {
      margin: 10px 0 20px 0;
    }

    .blog-meta {
      font-size: 14px;
      margin: 10px 0 20px 0;
      color: #222;
    }

    .blog-meta a {
      color: #27ae60;
    }

    .blog-pagination a {
      font-size: 1.4rem;
    }

    .blog-team li {
      padding: 4px;
    }

    .blog-team img {
      margin-bottom: 0;
    }

    .blog-content img,
    .blog-team img {
      max-width: 100%;
      height: auto;
    }

    .blog-footer {
      padding: 10px 0;
      text-align: center;
    }
  </style>
</head>
<body>
<header class="am-topbar">
  <h1 class="am-topbar-brand">
    <a href="#">MUSIC</a>
  </h1>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">

    <form class="am-topbar-form am-topbar-left am-form-inline am-topbar-right" role="search">
      <div class="am-form-group">
        <input type="text" class="am-form-field am-input-sm" placeholder="搜索">
      </div>
      <button type="submit" class="am-btn am-btn-default am-btn-sm">搜索</button>
    </form>

  </div>
</header>

<div class="am-g am-g-fixed blog-g-fixed">
  <div class="am-u-md-8">
<div class="am-tabs" data-am-tabs>
  <ul class="am-tabs-nav am-nav am-nav-tabs">
    <li class="am-active"><a href="#tab1">本站音乐</a></li>
    <li><a href="#tab2">视频</a></li>
    <li><a href="#tab3">网络音乐</a></li>
  </ul>

  <div class="am-tabs-bd">
    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
        <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
  am-avg-md-3 am-avg-lg-4 am-gallery-overlay" data-am-gallery="{ pureview: true }" id="musiclist">

  </ul>

    </div>
    <div class="am-tab-panel am-fade" id="tab3">
		<p><iframe width="100%" height="770" src="http://music.flc.ren/" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe></p>
    </div>
    <div class="am-tab-panel am-fade" id="tab2">

       <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
  am-avg-md-3 am-avg-lg-4 am-gallery-overlay" data-am-gallery="{ pureview: true }" id="videolist">

  </ul>
  
     
    </div>
  </div>
</div>

  </div>

  <div class="am-u-md-4 blog-sidebar">
    <div class="am-panel-group">
       <section class="am-panel am-panel-default">
        <div class="am-panel-hd">新歌推荐</div>
        <ul class="am-list blog-list">
          <%
        List <Song> songlist=(List)request.getAttribute("latesonglist");
          
          for(int i=0;i<songlist.size();i++)
          {
            out.print("<li><a href='/webmusic/views/musicdetail.jsp?songid="+songlist.get(i).getSongid()+"'>"+songlist.get(i).getSongname()+"</a></li>");
          }
        %>
        </ul>
  </section>
  
     <section class="am-panel am-panel-default">
        <div class="am-panel-hd">MV推荐</div>
        <ul class="am-list blog-list">
  <%
              List <Mv> mvlist=(List)request.getAttribute("latemvlist");
          
          for(int i=0;i<mvlist.size();i++)
          {
            out.print("<li><a href='/webmusic/views/mvdetail.jsp?mvid="+mvlist.get(i).getMvid()+"'>"+mvlist.get(i).getMvname()+"</a></li>");
          }
        %>
        </ul>
  </section>
    </div>
  </div>

</div>

<footer class="blog-footer">
  <p>blog template<br/>
    <small>© Copyright XXX. by the AmazeUI Team.</small>
  </p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=request.getContextPath()%>/views/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="<%=request.getContextPath()%>/views/assets/js/amazeui.min.js"></script>
<script src="<%=request.getContextPath()%>/views/js/jPlayer/usermain.js"></script>

</body>
</html>
