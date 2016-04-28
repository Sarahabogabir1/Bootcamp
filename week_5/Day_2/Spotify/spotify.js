
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
        displayInfo(theData.artists.items)
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
    if (the_item.images.length > 0) {
      var html = `
      <li>
        <p>Name: ${the_item.name}</p>
        <img src="${the_item.images[0].url}" width="200px">
        <div><button class="js-album-btn" data-artist-id="${the_item.id}"> Click for Album</button>
        </div>
      </li>`
    } else {
      var html = `
      <li> 
        <p>Name: ${the_item.name}</p>
      </li>`
    } 
    $(".js-artist-list").append(html);
    });
      
      $(".js-artist-list").on("click",".js-album-btn",function(event){
            var btn = event.currentTarget;
            var id = $(btn).data("artist-id");

              $.ajax({
                url:`https://api.spotify.com/v1/artists/${id}/albums`,
                data: id,

                  success: function(Data){
                    console.log("Display information worked");
                    console.log(Data.items);
                    showAlbum(Data.items)    //showAlbum function
                  },
                  error: function(theError){
                    console.log("Failed")
                    console.log(theError.responseJSON); 
                  }
       });
    });
};

function showAlbum(the_array){
  the_array.forEach(function(the_item){
    var htmlAlbum = `
      <li>
          <p>Albums: ${the_item.name} </p>
      </li>`

      $(".js-artists-album").append(htmlAlbum);
    })
}













