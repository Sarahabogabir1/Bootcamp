// create a JS CLASS -> var namofclass = function (params1,params2) { something here};
var Episode = function(title, episodeNumber, description, rating){
	// opens here
	this.title = title;
	this.episodeNumber = episodeNumber;
	this.description = description;
	this.rating = rating;
	//ends here
}

Episode.prototype.print = function(){
	console.log(`${this.episodeNumber}: ${this.title}` )
	console.log(`${this.description}` )
	console.log(`${this.rating}` )
}

var EpisodeList = function(episodes){
	this.episodes = episodes;
}

EpisodeList.prototype.printEpisodes = function(){
	this.episodes.forEach(function(episode){
		episode.print();
	})
}

// ---Im creating what I would do in the app.rb file
var episode1 = new Episode("Winter is coming", 1, "It's winter dude...", 8.9);
var episode2 = new Episode("Winter has been here", 2, "Winter came", 8.5)
var my_list = new EpisodeList([episode1, episode2])

my_list.printEpisodes();