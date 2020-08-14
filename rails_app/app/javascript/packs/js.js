require("jquery")
require("jquery-validation")

// $(document).ready(function(){
//     $("img").click(function(){
//       $("#modalPhoto").modal("show");
//     });
//   });
//   $(document).ready(function(){
//     $("img").click(function(){
//       $('#idModal1').modal("show");
//     });
// });

// $(document).ready(function(){
//   alert("da");  });


    $(".edit_album").validate({
      rules:{
        "album[title]":{
          required:true
        }
      },
      messages:{
        "album[title]":{
          required: "can't be trong"
        } 
      }
    });

  




