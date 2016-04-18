var read = require('read');
// var Question = require('./question.js');

//CLASS->QUESTION
var Question = function (text,answer,id) {
	this.text = text;
	this.answer = answer;
	this.id = id;
};

var question1 = new Question("What is your name?","Sarah Abogabir",1 );
var question2 = new Question("What city are we in?", "Miami", 2);
var question3 = new Question("Where do you study programmig?", "Javascript", 3);
var question4 = new Question("What are you learning right now?", "Call Backs", 4);

questionsArray = [question1,question2,question3];

var i = 0 //var total = 0

options = {
    prompt: "What's your name?\n>" //request users input

};

function getUserInput(err,input){ //function that is used as callback later
	userInput = input.toLowerCase(); //changing the users input to lowercase for better comparison
	if (userInput === questionsArray[i].answer){
		if (i < questionsArray.lenght - 1) {
			i++;
			options = {
				prompt:questionsArray[i].text + "You have" +
					}
			read(options, getUserInput) // loop throught the same process
		} else {
			console.log("You finished the test") /// until there are no more questions
		}
	} else {
		console.log("That's not the correct answer\nTry Again\n"); /// if the answer is incorrect, stay in the same i and ask the same question again
		options = {
				prompt: questionsArray[i].text
			}
			read(options, getUserInput)
	}

}




read(options, getUserInput) //function "getUserInput" is the callback


// var User = function (name,current_points,current_question){
// 	this.name = name
// 	this.current_points = current_points
// 	this.current_question = current_question
// };

// Add a new field to the Question class, with a point value. 
// If the user answers a question correctly, add to a new “total” variable. 
// Keep track of the total points accumulated throughout the quiz,
//  and display it to the user while asking the question. If a user incorrectly answers the question, 
//  make sure to subtract the quizzes point value from the total before repeating.

