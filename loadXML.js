function w3_open() {
	document.getElementById("mySidebar").style.display = "block";
}
function w3_close() {
	document.getElementById("mySidebar").style.display = "none";
}

function loadXMLDoc(dname) {
	if (window.XMLHttpRequest) {
		xhttp = new XMLHttpRequest();
	} else {
		xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xhttp.open("GET", dname, false);
	xhttp.send();
	return xhttp.responseXML;
}
function displayResult(xslfile) {
	xml = loadXMLDoc("CPU.xml");
	xsl = loadXMLDoc(xslfile);
	// code for IE

	if (window.ActiveXObject) {

		ex = xml.transformNode(xsl);

		document.getElementById("example").innerHTML = ex;
	}

	// codeforMozilla, Firefox, Opera,etc.
	else if (document.implementation && document.implementation.createDocument) {

		xsltProcessor = new XSLTProcessor();

		xsltProcessor.importStylesheet(xsl);

		resultDocument = xsltProcessor.transformToFragment(xml, document);

		document.getElementById("example").appendChild(resultDocument);
	}
}

function loadXMLString(txt) {
	if (window.DOMParser) {
		parser = new DOMParser();
		xmlDoc = parser.parseFromString(txt, "text/xml");
	} else // Internet Explorer
	{
		xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
		xmlDoc.async = "false";
		xmlDoc.loadXML(txt);
	}
	return xmlDoc;
}
// Avoid Empty Text nodes (in FireFox)

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
	showDivs(slideIndex += n);
}

function currentDiv(n) {
	showDivs(slideIndex = n);
}

function showDivs(n) {
	var i;
	var x = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("demo");
	if (n > x.length) {
		slideIndex = 1
	}
	if (n < 1) {
		slideIndex = x.length
	}
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" w3-red", "");
	}
	x[slideIndex - 1].style.display = "block";
	dots[slideIndex - 1].className += " w3-red";
}

function myFunction(id) {
	var x = document.getElementById(id);
	if (x.className.indexOf("w3-show") == -1) {
		x.className += " w3-show";
		x.previousElementSibling.className = x.previousElementSibling.className
				.replace("w3-white", "w3-green");
	} else {
		x.className = x.className.replace(" w3-show", "");
		x.previousElementSibling.className = x.previousElementSibling.className
				.replace("w3-green", "w3-white");
	}
}