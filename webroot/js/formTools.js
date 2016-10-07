function autotab(original, destination) {
	if (original.getAttribute
			&& original.value.length == original.getAttribute("maxlength"))
		destination.focus()
}

function textCounter(field, cntfield, maxlimit) {
	if (field.value.length > maxlimit) {
		field.value = field.value.substring(0, maxlimit);
	} else {
		cntfield.value = maxlimit - field.value.length;
	}
}
function fScroll(val) {
	var hidScroll = document.getElementById('hidScroll');
	hidScroll.value = val.scrollTop;
}

// function moves scroll position to saved value
function fScrollMove(what) {
	var hidScroll = document.getElementById('hidScroll');
	document.getElementById(what).scrollTop = hidScroll.value;
}
function disableEnterKey(e) {
	var key;
	if (window.event)
		key = window.event.keyCode; // IE
	else
		key = e.which; // firefox

	return (key != 13);
}
