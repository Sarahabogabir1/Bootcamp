//Javascript

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
	"dead", 		//grab 1st character
	"bygone", 		//grab 2nd character
	"landing",		//grab 3rd
	"cheaply",		//grab 4th
	"assumed",		//grab 5th
	"incorrectly",	//grab 6th
	"attention",	//grab 7th
	"agent",   		//when you get here, start from 1st character again
	];				//message should be dynamite
	
message = decoder (words);
console.log(message);

//need something here


function decoder (words) { //parenthesis is what the function is equal to 
	var index = 0, //initial value
	var secretMessage = "";
	
	for (var i = 0; i < words.lenght; i++ ) {
		if (index === 5) {
			index = 0
		}
		secretMessage += words[i].chartAt(index);
		index++;
	}
	
	return SecretMessage //need to return @ end of function
}


//--------------------------------------------------------------------------
//part 2: declare a sentence and declare a message

var words, message;

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];

// message should be "dynamite"
message = decoder(words);
console.log(message);




