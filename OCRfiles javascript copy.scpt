JsOsaDAS1.001.00bplist00�Vscript_// Credit to http://katiefloyd.me/blog/automatically-ocr-documents-with-hazel-and-pdfpen
// for the idea

// replace the array from the shell script here
ocrFiles = []

app = Application("PdfPenPro")
app.includeStandardAdditions = true;


for (var i=0; i < ocrFiles.length; i++){
theFile = ocrFiles[i]
	
var myFile = Path(theFile);
app.open(myFile)

var currentDoc = app.windows[0].document

currentDoc.ocr()

while (currentDoc.performingOcr()){
	delay(1);
	console.log("OCRing...");
}

console.log('done!');

app.close(currentDoc)
}                              + jscr  ��ޭ