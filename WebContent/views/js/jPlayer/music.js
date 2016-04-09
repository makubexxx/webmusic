$(document).ready(function(){
	
	var songid=getQueryString("songid");
	$.getJSON("/webmusic/musicdetail?songid="+songid, function(data){
		$("#songname").append(data.songname);
		$("#songplayer").append(data.player);
		$("#other").append(data.other);
		console.log(data.img);
		$("#img").attr("src",data.img);
		var arr=data.songsrc.split("/"); 
		$("#down").attr("href","/webmusic/DownLoadServlet?filename="+arr[3]);
		
		
		var myPlaylist = new jPlayerPlaylist({
		    jPlayer: "#jplayer_N",
		    cssSelectorAncestor: "#jp_container_N"
		  }, [
		    {
		      title:data.songname,
		      artist:data.player,
		      mp3:data.songsrc,
		      poster: "images/m0.jpg"
		    },
		  ], {
		    playlistOptions: {
		      enableRemoveControls: true,
		      autoPlay: true
		    },
		    swfPath: "js/jPlayer",
		    supplied: "webmv, ogv, m4v, oga, mp3",
		    smoothPlayBar: true,
		    keyEnabled: true,
		    audioFullScreen: false
		  });
		  
		  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
		    $('.musicbar').removeClass('animate');
		    $('.jp-play-me').removeClass('active');
		    $('.jp-play-me').parent('li').removeClass('active');
		  });

		  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
		    $('.musicbar').addClass('animate');
		  });

		  $(document).on('click', '.jp-play-me', function(e){
		    e && e.preventDefault();
		    var $this = $(e.target);
		    if (!$this.is('a')) $this = $this.closest('a');

		    $('.jp-play-me').not($this).removeClass('active');
		    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

		    $this.toggleClass('active');
		    $this.parent('li').toggleClass('active');
		    if( !$this.hasClass('active') ){
		      myPlaylist.pause();
		    }else{
		      var i = Math.floor(Math.random() * (1 + 7 - 1));
		      myPlaylist.play(i);
		    }
		    
		  });


	});
	
	$.getJSON("/webmusic/commentlist?fortype=0&&enetityid="+songid, function(data){
	      console.log(data.statue);
			if(data.statue==1)
				{
				alert("系統錯誤，獲取評論失敗");
				}
			else{
			     $.each(data.comments, function(i, item) {
			
			    	 $("#commentlist").append("<li class=\"am-comment\"><a href=\"#link-to-user-home\"><img src=\"/webmusic/upload/toux.jpg\" class=\"am-comment-avatar\" width=\"48\" height=\"48\">"+
			            "</a><div class=\"am-comment-main\"><header class=\"am-comment-hd\"><div class=\"am-comment-meta\"><a href=\"#link-to-user\" class=\"am-comment-author\">"+item.username+"</a> 评论于 <time datetime=\"2013-07-27T04:54:29-07:00\" title=\"2013年7月27日 下午7:54 格林尼治标准时间+0800\">"+item.commentsdate+"</time>"+
			             "</div></header><div class=\"am-comment-bd\">"+item.commentscontext+"</p></div></div></li>");});
			}
			});
	
	
	  $("#addcomment").click(function(){
		  var commenttext =$("#commenttext").val();
		  var songid=getQueryString("songid");
		  if(commenttext!=null){
			$.getJSON("/webmusic/addcomment?fortype=0&&enetityid="+songid+"&&commentscontext="+commenttext, function(data){
	      console.log(data.statue);
			alert("添加评论成功");
			
			$.getJSON("/webmusic/commentlist?fortype=0&&enetityid="+songid, function(data){
			      console.log(data.statue);
					if(data.statue==1)
						{
						alert("系統錯誤，獲取評論失敗");
						}
					else{
						$("#commentlist").empty();
						$("#commenttext").val("");
					     $.each(data.comments, function(i, item) {

					    	 $("#commentlist").append("<li class=\"am-comment\"><a href=\"#link-to-user-home\"><img src=\"/webmusic/upload/toux.jpg\" class=\"am-comment-avatar\" width=\"48\" height=\"48\">"+
							            "</a><div class=\"am-comment-main\"><header class=\"am-comment-hd\"><div class=\"am-comment-meta\"><a href=\"#link-to-user\" class=\"am-comment-author\">"+item.username+"</a> 评论于 <time datetime=\"2013-07-27T04:54:29-07:00\" title=\"2013年7月27日 下午7:54 格林尼治标准时间+0800\">"+item.commentsdate+"</time>"+
							             "</div></header><div class=\"am-comment-bd\">"+item.commentscontext+"</p></div></div></li>");
					     });
					}
					});
			});
		  }
		  else
			  {
			  alert("親，請先評論");
			  }
});
	


});


function getQueryString(name) { 
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r != null) return unescape(r[2]); return null; 
	} 