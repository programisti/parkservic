$( document ).ready(function() {
  $('#pack1').click(function() {
    var terms = $('#terms1');
    var valid = $('#valid1');
    var car = $('#car1');


    if(!terms.is(':checked')) {
      alert('გთხოვთ დაეთახმოთ სერვისის მიღების წესებს');
      return;
    }
    if(!valid.is(':checked')){
      alert('გთხოვთ დაადასტუროთ რომ ავტომობილის ნომერი სწორადაა შეყვანილი');
      return;
    }
    if(car.val().length < 6){
      alert('გთხოვთ შეიყვანოთ მანქანის ნომერი');
      return; 
    }

    var purchaseDesc = $("#form1 input[name=PurchaseDesc]"); 
    purchaseDesc.val( purchaseDesc.val() + "&car=" + car.val() );
    
    var data = { "id":1, "car":car.val() }

    $.ajax({
      type: "POST",
      url: "/bank/start",
      data: data,
      dataType: "json",
      success: function(data){
        if(data.status == "ok")
          $('#form1').submit();
      }        
    });
  });

  $('#pack2').click(function() {
    var terms = $('#terms2');
    var valid = $('#valid2');
    var car = $('#car2');


    if(!terms.is(':checked')) {
      alert('გთხოვთ დაეთახმოთ სერვისის მიღების წესებს');
      return;
    }
    if(!valid.is(':checked')){
      alert('გთხოვთ დაადასტუროთ რომ ავტომობილის ნომერი სწორადაა შეყვანილი');
      return;
    }
    if(car.val().length < 6){
      alert('გთხოვთ შეიყვანოთ მანქანის ნომერი');
      return; 
    }

    var purchaseDesc = $("#form2 input[name=PurchaseDesc]"); 
    purchaseDesc.val( purchaseDesc.val() + "&car=" + car.val() );
    
    var data = { "id":2, "car":car.val() }

    $.ajax({
      type: "POST",
      url: "/bank/start",
      data: data,
      dataType: "json",
      success: function(data){
        if(data.status == "ok")
          $('#form2').submit();
      }        
    });
  });

  $('#pack3').click(function() {
    var terms = $('#terms3');
    var valid = $('#valid3');
    var car = $('#car3');


    if(!terms.is(':checked')) {
      alert('გთხოვთ დაეთახმოთ სერვისის მიღების წესებს');
      return;
    }
    if(!valid.is(':checked')){
      alert('გთხოვთ დაადასტუროთ რომ ავტომობილის ნომერი სწორადაა შეყვანილი');
      return;
    }
    if(car.val().length < 6){
      alert('გთხოვთ შეიყვანოთ მანქანის ნომერი');
      return; 
    }

    var purchaseDesc = $("#form3 input[name=PurchaseDesc]"); 
    purchaseDesc.val( purchaseDesc.val() + "&car=" + car.val() );
    
    var data = { "id":3, "car":car.val() }

    $.ajax({
      type: "POST",
      url: "/bank/start",
      data: data,
      dataType: "json",
      success: function(data){
        if(data.status == "ok")
          $('#form3').submit();
      }        
    });
  });


});
