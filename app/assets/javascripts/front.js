$(document).ready(function(){

  $(".sortable").sortable();

  $(".draggable").draggable({
    stack: ".draggable"
  });
  $( ".droppable" ).droppable({
    drop: function( event, ui ) {
      //$( this )
        //.addClass( "ui-state-highlight" )
        //.find( "p" )
        //  .html( "Dropped!" );
      
      var dropped = ui.draggable;
      var droppedOn = $(this);

      console.log("dropped");
      console.log(dropped);
      console.log("droppedOn");
      console.log(droppedOn);
      console.log(dropped.data("url"));

      var add = false;
      var url;
      var claim_id;
      if(typeof dropped.data("claim_id") == 'undefined') {
        add = true;
        url = droppedOn.data("url");
        claim_id = droppedOn.data("claim_id");
        console.log("Adding item to a claim");
        console.log(add);
        console.log(url);
      }
      else {
        add = false;
        console.log("You grabbed that from someone!");
        url = dropped.data("url");
        claim_id = dropped.data("claim_id");
      }


      $.ajax({
        type: "PUT",
        url: url,
        data: {add:add, item_id:dropped.data("item_id"), claim_id:claim_id}
      });

      $(dropped).detach().css({top: 0,left: 0}).appendTo(droppedOn);
    },
    over: function(event, elem) {
              $(this).addClass("over");
              console.log("over");
           },
    out: function(event, elem) {
              $(this).removeClass("over");
           }
  });

});
