document.addEventListener("resize", function(){
	document.querySelector("#body-wrap").style.paddingBottom = document.querySelector("#footer").offsetHeight + "px";
	try {
		document.querySelector("#slider").style.height = (document.querySelector("#slider").offsetWidth * 11 / 20) + "px";
	} catch(e) { }
});

window.addEventListener("load", function(){
	document.dispatchEvent(new Event("resize"));
});
