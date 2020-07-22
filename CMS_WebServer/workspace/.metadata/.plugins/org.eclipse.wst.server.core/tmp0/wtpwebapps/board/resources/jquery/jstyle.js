$(".navbar-toggler").click(function () {
	$("#sidebar").toggleClass("open");
	window.location.hash = "#open"; 
	window.onhashchange = function () { 
		if (location.hash != "#open") { 
			history.relaceStae({},document.title, ".");
		} 
	};
});

	

$(".close_button").click(function () { 
	$("#sidebar").toggleClass("open");
	window.onhashchange = function () { 
		if (location.hash != "#open") { 
			$("#menu,.page_cover,html").removeClass("open");  
		} 
	};
});





