function loginUser() {
var mail = document.getElementById("mail").value;
var password = document.getElementById("password").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&mail1=' + mail + '&password1=' + password;
if (mail == '' || password == '') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/loginuser.php",
processData: false,
data: dataString,
cache: false,
success: function(html) {
if(html.startsWith("Logged")){window.location = "main.html";}
else{alert(html);}
}
});
}
return false;
}


function changeFine() {
var fine = document.getElementById("fine").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&fine1=' + fine;
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/changefine.php",
processData: false,
data: dataString,
cache: false,
success: function(html) {
  alert(html);
}
});
return false;
}

function changeBorrow() {
var fine = document.getElementById("borrow").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&fine1=' + fine;
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/changeborrow.php",
processData: false,
data: dataString,
cache: false,
success: function(html) {
  alert(html);
}
});
return false;
}



function forgotPassword() {
var roll = document.getElementById("roll").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&roll1=' + roll;
if (roll == '') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/forgotpassword.php",
processData: false,
data: dataString,
cache: false,
success: function(html) {
alert(html);
}
});
}
return false;
}

function borrowedBook() {
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&roll1=' + 'temp';
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/borrowedbook.php",
processData: false,
data: dataString,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
return false;
}


function searchBook() {
var book = document.getElementById("book").value;
var author = document.getElementById("author").value;
var code = document.getElementById("code").value;
// Returns successful data submission message when the entered information is stored in database.
var dataStringBook = '&book1=' + book + '&author1=' + author + '&code1=' + code;
if (book == '' && author == '' && code == '') {
alert("Please give us some details to search for.");
}
if(book != '' && author == '' && code == '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/1.php",
processData: false,
data: dataStringBook,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
}
if(book == '' && author != '' && code == '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/2.php",
processData: false,
data: dataStringBook,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
}
if(book == '' && author == '' && code != '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/3.php",
processData: false,
data: dataStringBook,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
}
if(book != '' && author != '' && code == '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/4.php",
processData: false,
data: dataStringBook,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
}
if(book != '' && author == '' && code != '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/5.php",
processData: false,
data: dataStringBook,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
}
if(book == '' && author != '' && code != '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/6.php",
processData: false,
data: dataStringBook,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
}
if(book != '' && author != '' && code != '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/7.php",
processData: false,
data: dataStringBook,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
}


return false;
}
