if (window.PokemonApp === undefined) {
	window.PokemonApp = {}; //global variable is a global scope
}

PokemonApp.init = function () {
	//3rd party setup code here
	console.log("Pokemon APP ONLINE");
};

$(document).on("ready, function" () {
	PokemonApp.init();
}
