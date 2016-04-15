var fs = require("fs") //declare an object, fs comes with NODE, server side code, backend 

function print (error, content) { //need to define a function, it has two params
	if (error) {					//condition used error, we are checking for its presence
		console.log("oh no! Error!", error); //testing for the parameter error
	} else {
		console.log ("succes!", content);
	}
}
fs.readfile("file.txt", "utf8", print) //reads the file 

function readFile(fileName, encoding, callback){ //call back function
	//file reading code
	//content = something;
callback(null, content);
}

