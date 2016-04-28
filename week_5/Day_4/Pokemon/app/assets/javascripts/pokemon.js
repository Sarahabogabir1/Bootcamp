// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on("ready", function () {

	$(".js-show-pokemon").on("click, function"(event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

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
	}
		$.ajax({
			url:"/api/pokemon/" + this.id,
			success: function (response) {
				console.log("Pokemon info:");
				console.log(response);
			}
		})


	PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
		var uriSegments = pokemonUri.split("/");
		var secondLast = uriSegments.lenght - 2;
		return uriSegments[secondLast];
	};

	PokemonApp.Pokemon.prototype.render = function () {
		console.log("Rendering pokemon: #" + this.id);

		$.ajax ({
			url:"/api/pokemon/" + this.id,
			success: function (response) {
				console.log("Pokemon info:");
				console.log(response);
			}
		});
	};

















