// JS Asynch
//Exercise"setTimeout
//lets implemtent Ruby's sleep but for JS
//Sleep = suspends the current thread for duration
//sleep 1.2 #=>1

//setTimeout
//function called sleep
//sleep will have a parameter describing number of seconds to sleep
//callbacks, possibly as a second parameter
//if statement to know if we callback or not
//precedign and suceeding print statements
//recursions

function sleep (seconds) {
	setTimeout(function () {
	console.log('after sleep');
}, seconds * 1000);

}

console.log('before sleep');
sleep(5);
}, seconds * 1000);

}
