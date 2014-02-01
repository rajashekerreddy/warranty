// var CC = {
//     get_groups_years: function(type,obj,target){
//       $('#'+target).empty();
//       $.ajax({
//             url: '/all_registrations/get_groups_years',
//             type: "GET",
//             data: { "category": jQuery(obj).val(),'type':type},
//             dataType: "json",
//             success: function (data) {
//             $.each(data, function(i, item) {
//                 $('#'+target).append($("<option></option>").attr("value",i).text(item));
//             });
//             }
//       });
//     }
// }