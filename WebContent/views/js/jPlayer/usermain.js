$(document).ready(function(){
	
	
	$.getJSON("/webmusic/suggestion", function(data){
	    console.log(data.statue);
		if(data.statue==1)
			{
			alert("系統錯誤，获取视频列表失败");
			}
		else{
		     $.each(data.suggetsion, function(i, item) {
		
		    	 $("#videolist").append("<li><div class=\"am-gallery-item\"><a href=\"/webmusic/views/mvdetail.jsp?mvid="+item.mvid+"\">"
		    			+"<img src=\""+item.img+"\" width=\"400px\" height=\"400px\"><h3 class=\"am-gallery-title\">"+item.mvname+"</h3></a></div></li>" );
		           
		});
		}
		});

	$.getJSON("/webmusic/slider", function(data){
	    console.log(data.statue);
		if(data.statue==1)
			{
			alert("系統錯誤，获取slider错误");
			}
		else{
		     $.each(data.suggetsion, function(i, item) {
		    	 console.log(item.songid);
		           
		    	 $("#musiclist").append("<li><div class=\"am-gallery-item\"><a href=\"/webmusic/views/musicdetail.jsp?songid="+item.songid+"\">"
			    			+"<img src=\""+item.img+"\" width=\"400px\" height=\"400px\"><h3 class=\"am-gallery-title\">"+item.songname+"</h3></a></div></li>" );
		});
		}
		});
	
});	
