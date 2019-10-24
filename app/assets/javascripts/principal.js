document.addEventListener("resize", function(){
	document.querySelector("#body-wrap").style.paddingBottom = document.querySelector("#footer").offsetHeight + "px";
});

window.addEventListener("load", function(){
	document.dispatchEvent(new Event("resize"));
});
