<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>文件上传</title>
      <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="css/animate.css" type="text/css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="css/font.css" type="text/css" />
  <link rel="stylesheet" href="css/app.css" type="text/css" />  
  <link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
  <script src="js/jquery.min.js"></script>
 <script>
  $(function() {
    $('#doc-form-file1').on('change', function() {
      var fileNames = '';
      $.each(this.files, function() {
        fileNames += '<span class="am-badge">' + this.name + '</span> ';
      });
      $('#file-list1').html(fileNames);
    });
    $('#doc-form-file2').on('change', function() {
        var fileNames = '';
        $.each(this.files, function() {
          fileNames += '<span class="am-badge">' + this.name + '</span> ';
        });
        $('#file-list2').html(fileNames);
      });
  });
</script>
  </head>
  
  
  <body>
    <form action="/webmusic/UploadHandle" enctype="multipart/form-data" method="post" class="am-form">
    <fieldset>
        歌曲名称：<input type="text" name="songname"><br/>
       歌手名称：<input type="text" name="player"><br/>
        专辑名称：<input type="text" name="album"><br/>
            <div class="am-radio">
      <label>
        <input type="radio" name="type" value="song" checked>
        song
      </label>
    </div>
        <div class="am-radio">
      <label>
        <input type="radio" name="type" value="mv" >
        mv
      </label>
    </div>
      <div class="am-form-group">
      <label for="doc-ta-1">简介</label>
      <textarea class="" rows="5" id="doc-ta-1" name="other"></textarea>
    </div>
    <div class="am-form-group am-form-file">
  <button type="button" class="am-btn am-btn-danger am-btn-sm">
    <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
  <input id="doc-form-file1" type="file"  name="file1">
</div>
    <div class="am-form-group am-form-file">
  <button type="button" class="am-btn am-btn-danger am-btn-sm">
    <i class="am-icon-cloud-upload"></i> 选择要上传的图片</button>
  <input id="doc-form-file2" type="file" name="file2">
</div>
<div id="file-list1"></div>
<div id="file-list2"></div>


       <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
  </fieldset>
    </form>
  </body>
</html>