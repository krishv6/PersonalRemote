$(function() {   
   console.log( "ready!" );
   $.ajax({
      type:'GET',
      url: "/cgi-bin/listVideos.sh",
      async:false,
      cache:false,
      success:function(data) {
         updateWebpage(data);
         updateCameraStatus();
         updateCameraDefaultStatus();
      }
   });
});

function updateWebpage(data){
   var str=data;
   var liveAppended = false;
   while(true)
   {
      var len=str.length;
      var startPos=str.indexOf("video");
      if(startPos == -1)
      {
         console.log("Breaking since video not found")
         break;
      }
      var endPos=str.indexOf("h264");
      if(endPos == -1)
      {
         console.log("Breaking since h264 not found")
         break;
      }
      var file=str.substr(startPos,endPos+3);
      var filePath = "cctv/"+file;
      var button = $("<button>",{"type":"button","class":"btn btn-primary btn-sm","id":file});
      var font = $("<i>",{"class":"fa fa-download",text:" Download"});
      button.append(font);
      button.click(function(e) {
          e.preventDefault();  //stop the browser from following
          window.location.href = 'cctv/'+$(this).attr("id");
      });
      var li = $("<li>", {"class": "list-group-item",text:file});
      li.append("&nbsp;");
      li.append(button);
      if(liveAppended == false)
      {
         liveAppended = true;
         var livebutton = $("<button>",{"type":"button","class":"btn btn-success btn-sm"});
         var livefont = $("<i>",{"class":"fa fa-bolt",text:" Live"});
         livebutton.append(livefont);
         li.append("&nbsp;");
         li.append(livebutton);
      }
      else
      {
         var deletebutton = $("<button>",{"type":"button","class":"btn btn-danger btn-sm","id":file});
         var deletefont = $("<i>",{"class":"fa fa-times",text:" Delete"});
         deletebutton.append(deletefont);
         li.append("&nbsp;");
         li.append(deletebutton);
         deletebutton.click(function(e) {
            $.ajax({
               type:'POST',
               url: "/cgi-bin/deleteVideo.sh?"+$(this).attr("id"),
               async:false,
               cache:false,
               success:function(data) {
                  location.reload(true);
               }
            });
         });
      }
      $('#video-list').append(li);
      str=str.substr(endPos+4,len);
   }
}

function updateCameraStatus(){
   var cameraRunning=getCameraStatus()
   if(cameraRunning == true )
   {
      $('#start-stop-camera').attr("class","btn btn-success");
      $('#start-stop-camera-i').text(" Camera Running");
   }
}

function updateCameraDefaultStatus(){
   var cameraEnabled=getCameraEnabledStatus()
   if(cameraEnabled == true )
   {
      $('#default-enable-camera').attr("class","btn btn-success");
      $('#default-enable-camera-i').attr("class","fa fa-toggle-on");
      $('#default-enable-camera-i').text(" Camera Default : Enabled");
   }
}

function getCameraStatus(){
   var cameraRunning=false
   $.ajax({
      type:'GET',
      url: "cameraRunning",
      async:false,
      cache:false,
      success:function() {
         cameraRunning=true
      }
      });
   return cameraRunning;
}

function getCameraEnabledStatus(){
   var cameraEnabled=false
   $.ajax({
      type:'GET',
      url: "cameraDefaultEnabled",
      async:false,
      cache:false,
      success:function() {
         cameraEnabled=true
      }
      });
   return cameraEnabled;
}

$('#start-stop-camera').click(function() {
   var cameraRunning=getCameraStatus();
   if(cameraRunning == true)
   {
      $.ajax({
            type:'POST',
            url: "/cgi-bin/stopCamera.sh",
            async:false,
            cache:false,
            success:function(data) {
               $('#start-stop-camera').attr("class","btn btn-warning");
               $('#start-stop-camera-i').text(" Camera Idle");
            }
         });
   }
   else
   {
      $.ajax({
            type:'POST',
            url: "/cgi-bin/startCamera.sh",
            async:false,
            cache:false,
            success:function(data) {
               $('#start-stop-camera').attr("class","btn btn-success");
               $('#start-stop-camera-i').text(" Camera Running");
            }
         });
   }
});

$('#default-enable-camera').click(function() {
   var cameraEnabled=getCameraEnabledStatus();
   if(cameraEnabled == true)
   {
      $.ajax({
            type:'POST',
            url: "/cgi-bin/cameraDefaultDisable.sh",
            async:false,
            cache:false,
            success:function(data) {
               $('#default-enable-camera').attr("class","btn btn-warning");
               $('#default-enable-camera-i').attr("class","fa fa-toggle-off");
               $('#default-enable-camera-i').text(" Camera Default : Disabled");
            }
         });
   }
   else
   {
      $.ajax({
            type:'POST',
            url: "/cgi-bin/cameraDefaultEnable.sh",
            async:false,
            cache:false,
            success:function(data) {
               $('#default-enable-camera').attr("class","btn btn-success");
               $('#default-enable-camera-i').attr("class","fa fa-toggle-on");
               $('#default-enable-camera-i').text(" Camera Default : Enabled");
            }
         });
   }
});
