$(document).on("ready", function (){ 
	console.log("hello");

	$(".js-btn-track").on("click", function (event){
		event.preventDefault()
		console.log("Button was clicked!");
	
		var theTrack = $("#track").val();
    	console.log(theTrack); //this should work in order for the program to be wired

    	// https://api.spotify.com/v1/artists/%7Bid%7D/top-trackslooking 
    	// https://api.spotify.com/v1/artists/ :id   /top-tracks + theTrack
		$.ajax({
			url: `https://api.spotify.com/v1/search?type=track&q=${theTrack}`,
	      
			success: function(theData){
				console.log("It worked!");
				console.log(theData);
				displaySong(theData.tracks.items[0])
				getAudioSource(theData.tracks.items[0]);

			},
			error: function(theError){
				console.log("It failed");
				console.log(theError.responseJSON); 
			}
		})
	});

	$(".js-btn-play").on("click", function(){
		playTrack();
	})
});

//--------------------Function to display track title, artist and image------------
function displaySong(track){
	console.log("me");
	var html=`
		${track.name[0]}
		${track.artists[0]}
		${track.album.images[0]}`

		$(".title").text(track.name) //song of the name 
		$(".artists").text(track.artists[0].name) //name of artist
		$(".js-image").prop('src',track.album.images[0].url)
};
//-----------Function to get track------------------------------------------------


function getAudioSource(track){
	$(".js-audio-play").prop('src',track.preview_url)
}

/// ---- Function to play track -------- //

function playTrack(){
	$(".js-audio-play").trigger('play');
}


//// ----------- Alvaro's function to play and pause track ----///

// function playPauseTrack(the_items){
// 	if ($(".js-play").hasClass('playing') === false){
// 		$('.js-play-audio').trigger('play');
// 		$('.js-play').removeClass('disabled');
// 		$('.js-play').addClass('playing');
// 	} else {
// 		$('.js-play-audio').trigger('pause');
// 		$('.js-play').removeClass('playing');
// 		$('.js-play').addClass('disabled');
// 	}
// }




//--------------Notes-------------------------------------------------------------
// Nizars Explanation on Objects within AJAX:
// var obj = { name: "Sarah", city: "Miami", nationality: "Chile/US" 
//                name           city               nationality
// var arr = [ "Sarah", "Miami", "Chile/US" ]
//             0         1         2
// var settings = { url: ____,   success: _____,  error: _____ }

// function onSuccess () {}
// function onError () {}

// $.ajax({ url: "the url for the API",  success: onSuccess,  error: onError });

// --------------Notes-------------------------------------------------------------
// Nizars Explanation on Objects within AJAX:
// var obj = { name: "Sarah", city: "Miami", nationality: "Chile/US" 
//                name           city               nationality
// var arr = [ "Sarah", "Miami", "Chile/US" ]
//             0         1         2
// var settings = { url: ____,   success: _____,  error: _____ }

// function onSuccess () {}
// function onError () {}

// $.ajax({ url: "the url for the API",  success: onSuccess,  error: onError });




