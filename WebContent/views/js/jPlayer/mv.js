$(document).ready(function(){
	
	var mvid=getQueryString("mvid");
	$.getJSON("/webmusic/mvdetail?mvid="+mvid, function(data){
		$("#other").append(data.other);
		  // video

		  $("#jplayer_1").jPlayer({
		    ready: function () {
		      $(this).jPlayer("setMedia", {
		        title: data.mvname,
		        m4v: data.mvsrc,
		        poster: "images/m41.jpg"
		      });
		    },
		    swfPath: "js",
		    supplied: "webmv, ogv, m4v",
		    size: {
		      width: "100%",
		      height: "auto",
		      cssClass: "jp-video-360p"
		    },
		    globalVolume: true,
		    smoothPlayBar: true,
		    keyEnabled: true
		  });
	

	});
	
	$.getJSON("/webmusic/commentlist?fortype=1&&enetityid="+mvid, function(data){
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
	
	$.getJSON("/webmusic/suggestion", function(data){
	      console.log(data.statue);
			if(data.statue==1)
				{
				alert("系統錯誤，获取视频列表失败");
				}
			else{
			     $.each(data.suggetsion, function(i, item) {
			
			    	 $("#videolist").append("<article class=\"media\"><a href=\"/webmusic/views/mvdetail.jsp?mvid="+item.mvid+"\" class=\"pull-left thumb-lg m-t-xs\">"+
                        "<img src=\""+item.img+"\"></a> <div class=\"media-body\"><a href=\"/webmusic/views/mvdetail.jsp?mvid="+item.mvid+"\" class=\"font-semibold\">"+
                        ""+item.mvname+"</a></div></article>");
			});
			}
			});
	

	  $("#addcomment").click(function(){
		  var commenttext =$("#commenttext").val();
		  var songid=getQueryString("songid");
		  if(commenttext!=null){
			$.getJSON("/webmusic/addcomment?fortype=1&&enetityid="+mvid+"&&commentscontext="+commenttext, function(data){
	      console.log(data.statue);
			alert("添加评论成功");
			
			$.getJSON("/webmusic/commentlist?fortype=1&&enetityid="+mvid, function(data){
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