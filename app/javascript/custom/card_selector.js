/*
 * jQuery to allow user to select cards from image
 * keeps track of which cards are selected in the image tags
 *
*/
// updates the hidden fields for the seleceted card
function set_card_fields(card){
    // Grab the cards image
    var card_src = $(card).attr("src");
    console.log(card_src)
    var card_regex = new RegExp("assets\/PNG\/(2|3|4|5|6|7|8|9|10|J|Q|K|A)(H|D|S|C)");
    console.log(card_regex)
    // Grab the suits and ranks from the card_id
    var card_fields = card_regex.exec(card_src)
    console.log(card_fields)
    var card_rank = card_fields[1]
    var card_suit = card_fields[2]
    
    var card_id = $(card).attr("id")
    // use this dict to match to the correct fields
    var card_id_dict = {
        "flop0": 0,
        "flop1": 1,
	"flop2": 2,
	"turn": 3,
	"river": 4
    }
    
    var hidden_field_id = card_id_dict[card_id]
    
    hidden_field_suit = "hand_table_cards_attributes_" + hidden_field_id + "_suit"  
    hidden_field_rank = "hand_table_cards_attributes_" + hidden_field_id + "_rank" 
    
    //get the hidden fields
    var hidden_field_suit_selector = $("#" + hidden_field_suit)
    var hidden_field_rank_selector = $("#" + hidden_field_rank)

    // set the hidden fields
    hidden_field_suit_selector.val(card_suit)
    hidden_field_rank_selector.val(card_rank)

}
$(document).ready(function( ){
    // On an empty board, selected should be the first flop card
    // TODO: handle loading a players deck and preselected cards
    var selected = $('img[data-selected=true]')

    // Switch which card is selected on click
    $("div#board img").on({
        'click': function(){
	    // clear the previously selected card
	    $(selected).attr("data-selected","false")
            $(this).attr("data-selected", "true")
	    selected = this
	}
    });

    // Switch the image of the selected card with the clicked on card
    $("div#deck img").on({
        'click': function(){
            // get the clicked on image
	    var my_img = $(this).attr("src")
	    
	    // if an image was already set for selected,
	    // Set the previously selected card to inplay="false"
	    var prev_card = $(selected).attr("shown-card")
            var new_card = $(this).attr("id")
     
            // Reset previous card
	    $("div#deck img#" + prev_card).attr("in-play", "false")
            // Set the new card
	    $(this).attr("in-play","true")
	    $(selected).attr("shown-card", new_card)
	    $(selected).attr("src", my_img)
            set_card_fields(selected)

	}
    })
});

