
$(document).on("ready", function () {
  $(".js-submit").on("submit", function (event) {
  	event.preventDefault();

  	var theArtist = $("#artist_name").val();
  	console.log(theArtist); //this should work in order for the program to be wired


  	$.ajax({
  		url:"https://api.spotify.com/v1/search?type=artist&query=" +theArtist,
  		success: function(theData){
  			console.log("It worked!");
  			console.log(theData);
  			displayInfo(theData.artists.items) //CALL BACK BITCH
  		},
  		error: function(theError){
  			console.log("It failed");
  			console.log(theError.responseJSON); 
  			//.responseJSON = tells you what TYPE of error
  			}
  		})
 	});
});

function displayInfo(the_array){
	the_array.forEach(function(the_item){
		var html = `
		<li>
			<p>Name: ${the_item.name}</p>
		</li>`;
		$(".js-artist-list").append(html);
	})

}



// //artist list
//     $(".js-artist-list").on("--", . function (event) {
//       	type: "GET"
//       	url: "https://api.spotify.com/v1/search?type=artist&query=SEARCHTERM",
//       	data: artist

//     };

// //album list
//   $(".js-album-list").on("---", .function (event) {
//       	type: "GET"
//       	url: "https://api.spotify.com/v1/search?type=artist&query=SEARCHTERM",
//       	data: album

//     };






