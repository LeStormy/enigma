(function() {
  var draw = false;
  var found = false;
  $("#trigger").click(function(){found=!found;});
  $(document).mousedown(function(){draw=true;});
  $(document).mouseup(function(){draw=false;});
  $(document).mousemove(function(e) {
    if(draw==true && found==true){
      pointer = $('<span>').css({
        'position':'absolute',
        'background-color':'#111144',
        'width':'100px',
        'height':'100px',
        'z-index': 1,
        top: e.pageY - 50,    //offsets
        left: e.pageX - 50  //offsets
      });
      $(document.body).append(pointer);
    }
  });
})();
