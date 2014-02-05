$(document).ready(function(){

  var change_item = function($url, $item_id, $todo) {
    $.ajax({
      type: "PUT",
      url: $url,
      data: {todo:$todo, item_id:$item_id}
    });
  };

  $(".sortable").sortable();

  $(".draggable").draggable({
    stack: ".draggable",
    start: function() {
      $(".item_trash").removeClass("hidden");
    },
    stop: function() {
      $(".item_trash").addClass("hidden");
    }
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

      var url;
      var claim_id;
      var todo = false;

      if (droppedOn.hasClass("item_trash")) {
        console.log("You're trying to throw that away!");
      }
      else if(droppedOn.hasClass("unclaim_square")) {
        console.log("You put it in the unclaimed square!");
        if (typeof dropped.data("claim_id") == 'undefined') {
          console.log("Oh well. Nothing to do.");
        }
        else {
          console.log("OH NO! We need to unclaim that sucker.");
          todo = "remove";
          url = dropped.data("url");
          change_item(url, dropped.data("item_id"), todo);
        }
      }
      else {
        console.log("You put it in a CLAIM square!");
        if (dropped.data("claim_id") != droppedOn.data("claim_id")) {
          if(typeof dropped.data("claim_id") != 'undefined') {
            console.log("You grabbed that from someone!");
            todo = "remove";
            url = dropped.data("url");
            change_item(url, dropped.data("item_id"), todo);
          }
          todo = "add";
          url = droppedOn.data("url");
          change_item(url, dropped.data("item_id"), todo);
        }
        
      };

      $(dropped).detach().css({top: 0,left: 0}).appendTo(droppedOn);
      $( ".over" ).removeClass( "over" );
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
