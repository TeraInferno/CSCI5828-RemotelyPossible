function autotab(original, destination) {
	original = document.getElementById(original);
	destination = document.getElementById(destination);
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
	if (window.event) {
		key = window.event.keyCode; // IE
	} else {
		key = e.which; // firefox
	}
	return (key != 13);
}


//
//Validation Tools
//
var dlapFormComplete=false;
var highlightErrors = function(data, status) {
	var errors = data;
	$(".ui-state-error").removeClass('ui-state-error');
	for(var x = 0; x < errors.length; x++) {
		$('[name="'+errors[x]+'"]').closest('tr').addClass('ui-state-error');
	}
	if(errors.length > 0) {
		dlapFormComplete=false;
	} else {
		dlapFormComplete=true;
	}
};

var validateForm = function(formId, successCallback) {
	var formEle = $('#'+formId);
	$.ajax({
        url: formEle.prop('action'),
        type: formEle.prop('method'),
        dataType: "JSON",
        data: formEle.serialize()+"&validate=true",
        success: successCallback,
        error: function (xhr, desc, err) {
        	alert("Error validating form input");

        }
    });
	return;
};

