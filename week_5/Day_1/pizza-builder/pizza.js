$(document).on("ready", function() {

	$(".sauce").removeClass("sauce-white");
	$(".crust").removeClass("crust-gluten-free");
	
	$(".btn-sauce").toggleClass("active");
	$(".btn-crust").toggleClass("active");
	
	$("js-whiteSauce").hide();
	$("js-glutenFree").hide();
	
	
	$(".btn-pepperonni").on("click", function() {  //anonymous function:info needs to below
		$(".pep").toggle();
		$(".btn-pepperonni").toggleClass("active");
		$(".js-pepperonni").toggle();
	});

	$(".btn-mushrooms").on("click", function() {
		$(".cap, .stem").toggle();
		$(".btn-mushrooms").toggleClass("active")
		$(".js-mushrooms").toggle();
	});

	$(".btn-green-peppers").on("click", function() {
		$(".green-pepper").toggle();
		$(".btn-green-pepper").toggleClass("active")
		$(".js-pepperoni").toggle
	});

	$(".btn-sauce").on("click", function() {
		$(".sauce").toggleClass("sauce-white");
		$(".btn-sauce").toggleClass("active")
		$(".sauce").toggle
	});

	$(".btn-crust").on("click", function() {
		$(".crust").toggleClass("crust-gluten-free");
		$(".btn-crust").toggleClass("active")
		$(".crust").toggle
	});

});	

function updatePrice(){
	var priceSoFar = 10
}