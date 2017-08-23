
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
	xml = loadXMLDoc("pcparts.xml");
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
