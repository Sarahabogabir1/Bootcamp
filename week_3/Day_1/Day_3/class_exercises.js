//Javascript

// var sample_array = [2, -5 , 10, 5, 4, -10, 0];

// var results = process(exampleArray);
// console.log(results);
// }

// function process(data){
// 	var positions=[];
// 	data.forEach (function (a, i) {
// 		data.forEach(function (b, j) {
// 			if(a + b === 0) {positions.push(i +","+ j )}
// 		});
// 	});
// 	return positions;
// }

// process(sample_array);

//why is the option adding two more pairs?
//=>because its looping though the fist array and obtaining double values
//would have to add a conditional statement 


//Exercise 2:
//write a function that decodes a secret message hidden
//in an array of words.
//Each word contains one letter of the message
//go through the words in orer an retrieve one character form each of them
// steps: 
// (1)create a funciton called decoder
// (2)function takes an argument:the list of words
// (3)index to retrieve the 1,2dn,3rd,4th,5th character from the word

words = [
	"dead", 	//grab 1st character
	"bygone", 	//grab 2nd character
	"landing",
	"cheaply",
	"assumed",
	"incorrectly",
	"attention",
	"agent",   //when you get here, start from 1st character again
	];
	//message should be dynamite

function decoder (words) { //parenthesis is what the function is equal to 
	var index = 0, //initial value
	var secretMessage = "";
	
	for (var i = 0; i < words.lenght; i++ ) {
		if (index ===6){
			index = 0
		}
		secretMessage +=
		words[i].chartAt(index);
		index++;
	}
	return SecretMessage //need to return @ end of function
}






