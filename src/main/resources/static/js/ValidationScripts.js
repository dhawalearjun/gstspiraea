// @#
function checkfields(ctrl) {
    var str = ctrl.value
    var isnot = "!@#$%^&*+=|\~`?><':;{[}]_.,/()-";
    var inval = 0;
    var x;
    for (var i = 0; i < str.length; i++) {
        for (x = 0; x < isnot.length; x++) {
            if (str.charAt(i) == (isnot.charAt(x))) {
                inval = 1;
                alert("only alphabets,numbers allowed");
                ctrl.value = str.substring(0, str.indexOf(str.charAt(i)));
                ctrl.focus();
            }
        }
    }

    return (inval);
}

function checkfields_Utility(ctrl) {
    var str = ctrl.value;
    var isnot = "!#$%^&|\~`?><:;{[}]/-";
    var inval = 0;
    var x;
    for (var i = 0; i < str.length; i++) {
        for (x = 0; x < isnot.length; x++) {
            if (str.charAt(i) == (isnot.charAt(x))) {
                inval = 1;
                alert("only alphabets,numbers allowed");
                ctrl.value = str.substring(0, str.indexOf(str.charAt(i)));
                ctrl.focus();
            }
        }
    }

    return (inval);
}

function checkTextFields(ctrl) {
    var str = ctrl.value
    var isnot = "!@#$%^&*+=|\~`?><':;{[}]_";
    var inval = 0;
    var x;
    for (var i = 0; i < str.length; i++) {
        for (x = 0; x < isnot.length; x++) {
            if (str.charAt(i) == (isnot.charAt(x))) {
                inval = 1;
                alert("only alphabets,numbers  and {.,/()-} space allowed");
                ctrl.value = str.substring(0, str.indexOf(str.charAt(i)));
                ctrl.focus();
            }
        }
    }

    return (inval);
}

function valAlphabetic(evt) {

    var charCode;
    var e = event || evt; // for trans-browser compatibility
    charCode = (e.which) ? e.which : event.keyCode;
    //charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode >= 97 && charCode <= 122 || charCode >= 65 && charCode <= 90 || charCode == 8) {
        return true;
    }
    else {
        alert("Only alphabets are allowed");
        return false;
    }
}
function onlyNumbers(evt) {
    flag = false
    var e = event || evt; // for trans-browser compatibility
    var charCode = e.which || e.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        //alert("Only numbers are allowed");
        return false;
    }
    return true;
}
function checkDate(sender, args) {
    /* works with ajax calender extender*/
    if (sender._selectedDate > new Date()) {
        alert("You cannot select a day greater than today!");
        sender._selectedDate = new Date();
        // set the date back to the current date
        sender._textbox.set_Value(sender._selectedDate.format(sender._format))
    }
}


function IsAlphabetNumeric1(evt) {
    var charCode = (e.which) ? e.which : e.keyCode;
    if (charCode == 8) return true;

    var keynum;
    var keychar;
    var charcheck = /[a-zA-Z0-9]/;
    if (window.event) // IE
    {
        keynum = e.keyCode;
    }
    else {
        if (e.which) // Netscape/Firefox/Opera
        {
            keynum = e.which;
        }
        else return true;
    }

    keychar = String.fromCharCode(keynum);
    return charcheck.test(keychar);
}

function IsAlphabetNumeric(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    var txt = String.fromCharCode(charCode)
    if (txt.match(/^[a-zA-Z0-9\b ]+$/))
        return true
    return false
}



function isNumericKey(evt) {
    flag = false
    var e = event || evt; // for trans-browser compatibility
    var charCode = e.which || e.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        alert("Only numbers are allowed");
        return false;
    }
    return true;
}


function IsAlphabet(evt) {   //alphabets and dot(Name field)
    var charCode = (evt.which) ? evt.which : event.keyCode
    var txt = String.fromCharCode(charCode)
    if (txt.match(/^[a-zA-Z\b. ]+$/)) {
        return true;
    }
    return false;
}


function IsAlphaNumericOnly(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    var txt = String.fromCharCode(charCode)
    if (txt.match(/^[a-zA-Z0-9\b\\]+$/)) {
        return true;
    }
    return false;


}

function isNumericKeyWithHyphen(e) {

    if (window.event) { var charCode = window.event.keyCode; }
    else if (e) { var charCode = e.which; }
    else { return true; }
    if (charCode == 45)
    { return true; }
    else if (charCode > 31 && (charCode < 48 || charCode > 57)) { return false; }
    return true;
}

//function IsAlphaNumeric(evt) {
//    var charCode = (evt.which) ? evt.which : event.keyCode
//    var txt = String.fromCharCode(charCode)
//    if (txt.match(/^[a-zA-Z0-9\b ./]+$/)) {
//        return true;
//    }
//    else {

//        return false;
//    }

//}

//function which checks and allows date less than and equal to today
function checkDateLessThanToday(control) {
    var txt = control;
    var arraydate = txt.value.split("-");

    var txttoday = new Date();
    var curr_date = txttoday.getDate();
    var curr_month = txttoday.getMonth() + 1; //Months are zero based
    var curr_year = txttoday.getFullYear();
    var a = curr_date + "-" + curr_month + "-" + curr_year;

    var val = txt.value;
    var isvalidate = false;
    if (val.length == 10) {
        var splits = val.split("-");
        var dt = new Date(splits[1] + "-" + splits[0] + "-" + splits[2]);
        //Validation for Dates
        if (dt.getDate() == splits[0] && dt.getMonth() + 1 == splits[1] && dt.getFullYear() == splits[2]) {
            isvalidate = true;
        }
        else {
            if (val != "__-__-____") {
                alert("InValid Date.");
                txt.value = "";
                isvalidate = false;
            }
        }
    }
    else {
        if (val != "__-__-____") {
            alert("InValid Date.");
            isvalidate = false;
        }
    }

    if (isvalidate == true) {
        if (arraydate[2] > curr_year) {
            alert("You cannot select a day Greater than today!");
            txt.value = "";
        }
        else if (arraydate[2] == curr_year) {
            if (arraydate[1] > curr_month) {
                alert("You cannot select a day Greater than today!");
                txt.value = "";
            }
            else if (arraydate[1] == curr_month) {
                if (arraydate[0] > curr_date) {
                    alert("You cannot select a day Greater than today!");
                    txt.value = "";
                }
            }
            else {
                if (txt.value > a) {
                    alert("You cannot select a day Greater than today!");
                    txt.value = "";
                }
            }
        }
    }
    return isvalidate;
}


//function which checks only correct date format
function checkValidDate(control) {
    var txt = control;
    var val = txt.value;
    var isvalidate = false;
    if (val.length == 10) {
        var splits = val.split("/");
        var dt = new Date(splits[1] + "/" + splits[0] + "/" + splits[2]);
        //Validation for Dates
        if (dt.getDate() == splits[0] && dt.getMonth() + 1 == splits[1] && dt.getFullYear() == splits[2]) {
            isvalidate = true;
        }
        else {
            if (val != "__/__/____") {
                alert("InValid Date.");
                txt.value = "";
                isvalidate = false;
            }
        }
    }
    else {
        if (val != "__/__/____") {
            alert("InValid Date.");
            isvalidate = false;
        }
    }
}


//function which checks and allows date greater than and equal to today
function checkDateGreaterThanToday(control) {
    var txt = control;
    var arraydate = txt.value.split("/");

    var txttoday = new Date();
    var curr_date = txttoday.getDate();
    var curr_month = txttoday.getMonth() + 1; //Months are zero based
    var curr_year = txttoday.getFullYear();
    var a = curr_date + "/" + curr_month + "/" + curr_year;

    var val = txt.value;
    var isvalidate = false;
    if (val.length == 10) {
        var splits = val.split("/");
        var dt = new Date(splits[1] + "/" + splits[0] + "/" + splits[2]);
        //Validation for Dates
        if (dt.getDate() == splits[0] && dt.getMonth() + 1 == splits[1] && dt.getFullYear() == splits[2]) {
            isvalidate = true;
        }
        else {
            if (val != "__/__/____") {
                alert("InValid Date.");
                txt.value = "";
                isvalidate = false;
            }
        }
    }
    else {
        if (val != "__/__/____") {
            alert("InValid Date.");
            isvalidate = false;
        }
    }

    if (isvalidate == true) {
        if (arraydate[2] < curr_year) {
            alert("You cannot select a day Lesser than today!");
            txt.value = "";
        }
        else if (arraydate[2] == curr_year) {
            if (arraydate[1] < curr_month) {
                alert("You cannot select a day Lesser than today!");
                txt.value = "";
            }
            else {
                if (txt.value < a) {
                    alert("You cannot select a day Lesser than today!");
                    txt.value = "";
                }
            }
        }
    }
}

//Jaydeep 02 April 2014 START: removes leading and trailing spaces
function checkSpace(ctrl) {
    var str = ctrl.value;
    var newstr = str.replace(/(^\s*)|(\s*$)/gi, '') // removes leading and trailing spaces
    ctrl.value = newstr;
}

$(document).ready(function () {
    var AllTextbox = document.getElementsByTagName("input")
    for (var i = 0; i < AllTextbox.length; i++) {
        if (AllTextbox[i].type == 'text') {
            $('#' + AllTextbox[i].id).change(function () { checkSpace(this) });
        }
    };
});

function checkEmailIDSpace() {
    var txtUsername = document.getElementById('<%=txtUsername.ClientID %>');
    var RegularExpressionValidator1 = document.getElementById('<%=RegularExpressionValidator1.ClientID %>');
    var str = txtUsername.value;
    var newstr = str.replace(/(^\s*)|(\s*$)/gi, '') // removes leading and trailing spaces
    txtUsername.value = newstr;
    //ValidatorEnable(document.getElementById('<%= RegularExpressionValidator1.ClientID %>'), false);
}

//Jaydeep 02 April 2014 END: removes leading and trailing spaces

//Kiran 04 April 2014 START

function isValidKey(e) {
    var charCode = e.keyCode || e.which;
    if (charCode == 8 || charCode == 46)
        return true;

    return false;
}



//Kiran

function GetValues() {
//    var ddlpost = $('#ContentPlaceHolder1_ddlPost', parent.document).val();
//    //lblPostValue
//    alert(ddlpost);
}

function KEYDOWN1() {
    if (event.keyCode == 8 || event.keyCode == 46)
        return true
    else
        return false;
}

function isNumberKey(Control, evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    var value = Control.value;
    //alert(value);
    if (value != "") {
        if (charCode == 46) {
            if (value.indexOf(".") == -1) {
                return true;
            }
            else {
                return false;
            }
        }
    }
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}