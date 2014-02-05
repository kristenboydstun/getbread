$(document).ready(function(){

  $(".draggable").draggable({stack: ".draggable"});
  $( ".droppable" ).droppable({
    drop: function( event, ui ) {
      $( this )
        .addClass( "ui-state-highlight" )
        .find( "p" )
          .html( "Dropped!" );
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
