// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("ready", function () {

	$(".js-show-pokemon").on("click", function(event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");
			console.log(pokemonUri);
		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});

//my class
	PokemonApp.Pokemon = function (pokemonUri) {
		this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
	};

	PokemonApp.Pokemon.prototype.render = function () {
		console.log("Rendering Pokemon: #" + this.id);
			
			var self = this;
		$.ajax({
			url:"/api/pokemon/" + this.id,
			success: function (response) {
				self.info = response;
				console.log("Pokemon info:");
				console.log(self.info);

				$(".js-pkmn-name").text(self.info.name);
				$(".js-pkmn-number").text(self.info.pkdx_id);
				$(".js-pkmn-heigth").text(self.info.height);
				$(".js-pkmn-weight").text(self.info.weight);
				$(".js-pkmn-speed").text(self.info.speed);
				$(".js-pkmn-sp_atk").text(self.info.sp_atk);
				$(".js-pkmn-defense").text(self.info.defense);
				$(".js-pkmn-image").image(self.info.picture);
				
				$.ajax({
					url:getUri
					sucess: function() {
					console.log("Image is being displayed")
				}
				
				})

				//-----sending it to the html----//
				$(".js-pokemon-modal").modal("show");


			}
		});

	};

	PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
		var uriSegments = pokemonUri.split("/");
		var secondLast = uriSegments.length - 2;
		return uriSegments[secondLast];
	};

//--------------------Get Uri ------------------------//
	function getUri(image){
		html = 

		append.(html);
		}



//--------------------Get Uri ------------------------//












