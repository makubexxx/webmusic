<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>MV赏析</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="css/animate.css" type="text/css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="css/font.css" type="text/css" />
  <link rel="stylesheet" href="css/app.css" type="text/css" />  
  
  <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
<style>
    .my-head {
      margin-top: 40px;
      text-align: center;
    }
</style>
</head>
<body class="">


      <section class="hbox stretch">
      
        <section id="content">
        
          <section class="vbox">
            <section class="scrollable wrapper-lg">
              <div class="row">
                <div class="col-sm-8">
                  <div class="panel">
                    <!-- video player -->
                    <div id="jp_container_1">
                      <div class="jp-type-single pos-rlt">
                        <div id="jplayer_1" class="jp-jplayer jp-video"></div>
                        <div class="jp-gui">
                          <div class="jp-video-play">
                            <a class="fa fa-5x text-white fa-play-circle"></a>
                          </div>
                          <div class="jp-interface bg-info padder">
                            <div class="jp-controls">
                              <div>
                                <a class="jp-play"><i class="icon-control-play i-2x"></i></a>
                                <a class="jp-pause hid"><i class="icon-control-pause i-2x"></i></a>
                              </div>
                              <div class="jp-progress">
                                <div class="jp-seek-bar dker">
                                  <div class="jp-play-bar dk">
                                  </div>
                                  <div class="jp-title text-lt">
                                    <ul>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
                              <div class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
                              <div class="hidden-xs hidden-sm">
                                <a class="jp-mute" title="mute"><i class="icon-volume-2"></i></a>
                                <a class="jp-unmute hid" title="unmute"><i class="icon-volume-off"></i></a>
                              </div>
                              <div class="hidden-xs hidden-sm jp-volume">
                                <div class="jp-volume-bar dk">
                                  <div class="jp-volume-bar-value lter"></div>
                                </div>
                              </div>
                              <div>
                                <a class="jp-full-screen" title="full screen"><i class="fa fa-expand"></i></a>
                                <a class="jp-restore-screen" title="restore screen"><i class="fa fa-compress text-lt"></i></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="jp-no-solution hide">
                          <span>Update Required</span>
                          To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                        </div>
                      </div>
                    </div>
                    <!-- / video player -->
                    <div class="wrapper-lg">
                      <h2 class="m-t-none text-black" id="mvtitle"></h2>
                      <div class="post-sum">
                        <p id="other"></p>
                      </div>
                    </div>
                  </div>
         <ul class="am-comments-list" id="commentlist">
        </ul>
        <form class="am-form">
  <fieldset>
      <div class="am-form-group">
      <label for="doc-ta-1">吐槽点啥</label>
      <textarea class="" rows="5" id="commenttext"></textarea>
    </div>

    <p><input type="button" class="am-btn am-btn-default" value="提交" id="addcomment"></p>
  </fieldset>
  </form>
                 
                </div>
                <div class="col-sm-4">
                  <div class="panel panel-default">
                    <div class="panel-heading">Suggestions</div>
                    <div class="panel-body" id="videolist">
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
  <script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- App -->
  <script src="js/app.js"></script>  
  <script src="js/slimscroll/jquery.slimscroll.min.js"></script>
  
  <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/mv.js"></script>

</body>
</html>