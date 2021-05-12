//This function calls the "execute" controller action, using its route and also
//passes a "selectingCommand" variable to it
var callExecuter=function(){
  $.ajax({
    type:'GET',
    url:'/students_home_index_path',
    data: { selectingCommand : document.getElementById("CommandSelect"); 
          },
    success:function(){
      //I assume you want to do something on controller action execution success?
      $(this).addClass('done');
      console.log("Execute button clicked");

    }
  });
}

$(document).on("click","#executer-button",callExecuter);