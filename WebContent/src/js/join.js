$(function() {
	
	
});

function checklen(obj, maxByte) {
	var strValue = $(obj).val();
	var strLen = $(obj).val().length;
	
	var totalByte = 0;
	var len = 0;
	var oneChar="";
	var str2="";
	
	for (var i = 0; i < strLen; i++) {
		oneChar = strValue.charAt(i);
		if (escape(oneChar).length > 4) {
			totalByte += 2;
		} else {
			totalByte++;
		}
		if (totalByte <= maxByte) {
			len = i+1;
		}
	}
}