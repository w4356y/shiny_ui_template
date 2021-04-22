
$(function(){
  //$(document).on('shiny:connected', function(event){
  //  alert('Connected to the server');
    
  //});
 // $(document).getElementById("btn1").style.color = "purple";
  
  $('h2').css({
    "color":"blue",
    "textAlign": "center",
  });
  $('h5').css({
    "textAlign": "center",
    "color": "#e74c3c",
  });
  $('a').css({
    "color": "green",
    });
  $('h4').css({
    "color": "green",
    "font-weight": "bold",
    "font-size": "40px",
    "textAlign": "center",
    });
  $("#btn1").css({
    "color": "blue",
    "background": "maroon",
    "textAlign": "center",
    
  });
  $(".control-label").css({
    "color": "teal",
    
  });
  $(".box-title").css({
    "color": "#3498db",
    "textAlign": "center",
  });
 
  
  $(".irs").css({
    "display": "none",
  });
  
  $("#btn1").on('click', function(e) {
  
    alert("Button Clicked");
    $("#btn1").css({
    "color": "red",
    "background": "white",
    "width": "6%",
    "margin-left": "47%",
    "margin-right": "47%",
      
    });
    
    $('a').css({
      "display": "none",
    });
    
  });
});



 
