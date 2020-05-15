function openCity(evt, cityName) {
        var i, x, tablinks;
        x = document.getElementsByClassName("city");
        for (i = 0; i < x.length; i++) {
          x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < x.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.firstElementChild.className += " w3-border-red";
        console.log("버튼 눌림"+$("#itemno").val())
  	  	
        $.ajax({
           url: "/item/detail/getreviewphoto",
           type : "post",
         
           data : {
              itemno :$("#itemno").val()
           },
           dataType : "text",
           success : function(result){
        	   console.log("res : "+result)
              let list = JSON.parse(result);
              
              if(list.length == 0){
                 return;
              }
              
              let str = "";
              for(let i = 0; i < list.length; i++){
                 if(i>25){
                    break;
                 }
                 let date = new Date(list[i].replydate);
                
                 
                 str += "<tr>";
                 str += "<td class='text-center' >"+list[i].reviewno+"</td>";
                 str += "<td class='text-center'>"+list[i].title+"</td>";
                 str += "<td class='text-center'>"+list[i].userid+"</td>";
                 str += "<td class='text-center'>"+date.toISOString().slice(0, 10)+" "+date.toTimeString().slice(0, 8)+"</td>";               
                 str += "<td class='text-center'>"+list[i].readcount+"</td>";
                 str += "</tr>";
                 
              }
              $("#review").html(str);

              
           },
           error : function(request,status,error){
              console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
              alert("리뷰조회실패");
           }
        })
}