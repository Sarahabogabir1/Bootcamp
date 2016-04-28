if (window.PokemonApp === undefined) {
	window.PokemonApp = {}; //global variable is a global scope
}

PokemonApp.init = function () { //puling in other 3rd party code
	//something could go in here eventually
	console.log("Pokemon APP ONLINE");
};

//this executes the functionality of JQuery code only when
// all elements have been loaded 
$(document).on("ready", function () {
	PokemonApp.init();
});