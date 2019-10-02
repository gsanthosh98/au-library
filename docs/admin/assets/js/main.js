<<<<<<< HEAD
function regUser() {
=======
function insertStudent() {
>>>>>>> 5ab69aa5475e9f79cc66573599e871513a096819
var name = document.getElementById("name").value;
var reg = document.getElementById("reg").value;
var email = document.getElementById("email").value;
var phone = document.getElementById("phone").value;
var password = document.getElementById("password").value;
var department = document.getElementById("department").value;
var course = document.getElementById("course").value;
var year = document.getElementById("year").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&name1=' + name + '&reg1=' + reg + '&email1=' + email + '&phone1=' + phone + '&password1=' + password + '&department1=' + department + '&course1=' + course + '&year1=' + year;
if (name==''||reg==''||email==''||phone==''||password==''||department==''||course==''||year=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/insertstudent.php",
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

function insertIssued() {
var book = document.getElementById("book1").value;
var student = document.getElementById("student1").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&book1=' + book + '&student1=' + student;
if (book==''||student=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/insertissued.php",
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

function deleteIssued() {
var book = document.getElementById("book2").value;
var student = document.getElementById("student2").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&book1=' + book + '&student1=' + student;
if (book==''||student=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/deleteissued.php",
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

<<<<<<< HEAD



=======
function renewIssued() {
var book = document.getElementById("book3").value;
var student = document.getElementById("student3").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&book1=' + book + '&student1=' + student;
if (book==''||student=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/renewissued.php",
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
>>>>>>> 5ab69aa5475e9f79cc66573599e871513a096819

function lostIssued() {
var book = document.getElementById("lbook").value;
var student = document.getElementById("lstudent").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&book1=' + book + '&student1=' + student;
if (book==''||student=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/lostissued.php",
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

function modifyStudent() {
var name = document.getElementById("name").value;
var reg = document.getElementById("reg").value;
var email = document.getElementById("email").value;
var phone = document.getElementById("phone").value;
var password = document.getElementById("password").value;
var department = document.getElementById("department").value;
var course = document.getElementById("course").value;
var year = document.getElementById("year").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&name1=' + name + '&reg1=' + reg + '&email1=' + email + '&phone1=' + phone + '&password1=' + password + '&department1=' + department + '&course1=' + course + '&year1=' + year;
if (name==''||reg==''||email==''||phone==''||password==''||department==''||course==''||year=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/modifystudent.php",
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

function searchStudent() {
var roll = document.getElementById("roll").value;
var name = document.getElementById("name").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&roll1=' + roll + '&name1=' + name;
if (roll=='' && name=='') {
alert("Please give details to search.");
}
if (roll!='' && name=='') {
  // AJAX code to submit form.
  jQuery.ajax({
  type: "POST",
  url: "assets/php/searchstudent1.php",
  processData: false,
  data: dataString,
  cache: false,
  success: function(html) {
  document.getElementById('tablebody').innerHTML=html;
}
});
}
if (roll=='' && name!='') {
  // AJAX code to submit form.
  jQuery.ajax({
  type: "POST",
  url: "assets/php/searchstudent2.php",
  processData: false,
  data: dataString,
  cache: false,
  success: function(html) {
  document.getElementById('tablebody').innerHTML=html;
}
});
}
if (roll!='' && name!='') {
  // AJAX code to submit form.
  jQuery.ajax({
  type: "POST",
  url: "assets/php/searchstudent3.php",
  processData: false,
  data: dataString,
  cache: false,
  success: function(html) {
  document.getElementById('tablebody').innerHTML=html;
}
});
}
return false;
}

function searchStudentDetails() {
var roll = document.getElementById("roll1").value;
var name = document.getElementById("name1").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&roll1=' + roll + '&name1=' + name;
if (roll=='' && name=='') {
alert("Please give details to search.");
}
if (roll!='' && name=='') {
  // AJAX code to submit form.
  jQuery.ajax({
  type: "POST",
  url: "assets/php/searchstudentdetails1.php",
  processData: false,
  data: dataString,
  cache: false,
  success: function(html) {
  document.getElementById('tablebody1').innerHTML=html;
}
});
}
if (roll=='' && name!='') {
  // AJAX code to submit form.
  jQuery.ajax({
  type: "POST",
  url: "assets/php/searchstudentdetails2.php",
  processData: false,
  data: dataString,
  cache: false,
  success: function(html) {
  document.getElementById('tablebody1').innerHTML=html;
}
});
}
if (roll!='' && name!='') {
  // AJAX code to submit form.
  jQuery.ajax({
  type: "POST",
  url: "assets/php/searchstudentdetails3.php",
  processData: false,
  data: dataString,
  cache: false,
  success: function(html) {
  document.getElementById('tablebody1').innerHTML=html;
}
});
}
return false;
}


function deleteStudent() {
var student = document.getElementById("student4").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&student1=' + student;
if (student=='') {
alert("Please enter register number of student.");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/deletestudent.php",
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
<<<<<<< HEAD
url: "assets/php/loginadmin.php",
data: dataString,
cache: false,
success: function(html) {
if(html.startsWith("Logged")){window.location = "main.html";}
else{alert(html);}
=======
url: "assets/php/loginuser.php",
processData: false,
data: dataString,
cache: false,
success: function(html) {
if(html.startsWith("Logged")){window.location = "main.php";}
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
if (fine == '') {
alert("Please Fill All Fields");
} else {
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
}
return false;
}

function changeBorrow() {
var fine = document.getElementById("borrow").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&fine1=' + fine;
if (fine == '') {
alert("Please Fill All Fields");
} else {
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
}
return false;
}

function changeReturn() {
var fine = document.getElementById("return").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&fine1=' + fine;
if (fine == '') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/changereturn.php",
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
>>>>>>> 5ab69aa5475e9f79cc66573599e871513a096819
}
});
}
return false;
}

<<<<<<< HEAD
=======
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

function pendingBook() {
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&roll1=' + 'temp';
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/pendingbook.php",
processData: false,
data: dataString,
cache: false,
success: function(html) {
document.getElementById('tablebody').innerHTML=html;
}
});
return false;
}

function insertBook() {
var bookid = document.getElementById("bookid").value;
var name = document.getElementById("name").value;
var author = document.getElementById("author").value;
var count = document.getElementById("ref").value;
var publisher = document.getElementById("publisher").value;
var edition = document.getElementById("edition").value;
var price = document.getElementById("price").value;
var subject = document.getElementById("subject").value;
var department = document.getElementById("department").value;
var row = document.getElementById("row").value;
var donate = document.getElementById("donate").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&bookid1=' + bookid + '&name1=' + name + '&author1=' + author + '&count1=' + count + '&publisher1=' + publisher + '&edition1=' + edition + '&price1=' + price + '&subject1=' + subject + '&department1=' + department + '&row1=' + row + '&donate1=' + donate;
if (bookid==''||name==''||author==''||count==''||publisher==''||edition==''||price==''||subject==''||department==''||row=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/insertbook.php",
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
>>>>>>> 5ab69aa5475e9f79cc66573599e871513a096819

function addReference() {
var book = document.getElementById("book5").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&book1=' + book;
if (book=='') {
alert("Please Enter Book ID");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/addreference.php",
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

function removeReference() {
var book = document.getElementById("book6").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&book1=' + book;
if (book=='') {
alert("Please Enter Book ID");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/removereference.php",
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

function modifyBook() {
var bookid = document.getElementById("bookid").value;
var name = document.getElementById("name").value;
var author = document.getElementById("author").value;
var count = document.getElementById("ref").value;
var publisher = document.getElementById("publisher").value;
var edition = document.getElementById("edition").value;
var price = document.getElementById("price").value;
var subject = document.getElementById("subject").value;
var department = document.getElementById("department").value;
var row = document.getElementById("row").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&bookid1=' + bookid + '&name1=' + name + '&author1=' + author + '&count1=' + count + '&publisher1=' + publisher + '&edition1=' + edition + '&price1=' + price + '&subject1=' + subject + '&department1=' + department + '&row1=' + row;
if (bookid==''||name==''||author==''||count==''||publisher==''||edition==''||price==''||subject==''||department==''||row=='') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/modifybook.php",
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
