<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InsertData.aspx.cs" Inherits="InsertData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <header>
        <br />
                                              <img src="images/NBALOGO.png" align="left" width="2.3%" />
                                 <img src="images/NBALOGO.png" align="right" width="2.3%" />
        <h1 style="color:white"> SIGN UP </h1>
        <style>
                   p {
    font-family: Calibri;
    font-size: 22px;
    text-align: left;
      }
                        a{
    color: black;
	font-weight: bold;
    text-decoration: none;
     }
        </style>
    </header>
             <script type="text/javascript">
                 var msg = "";
                 function isEmpty(str) {
                     return (str.length == 0);
                 }
                 function isNumeric(str) {
                     if (isNaN(str))
                         return false;
                     else
                         return true;
                 }
                 function SameNameLanguage(strF, strL) {
                     if ((strF.charAt(0) >= 'a' && strF.charAt(0) <= 'z' && strL.charAt(0) >= 'a' && strL.charAt(0) <= 'z') || (strF.charAt(0) >= 'A' && strF.charAt(0) <= 'Z' && strL.charAt(0) >= 'A' && strL.charAt(0) <= 'Z'))
                         return true;
                     else
                         return false;

                 }
                 function SameLanguage(str) {
                     var i;
                     var firstLet = str.charAt(0);
                     if (firstLet >= 'a' && firstLet <= 'z' || firstLet >= 'A' && firstLet <= 'Z') {
                         for (i = 1; i < str.length; i++) {
                             if (!((str.charAt(i) >= 'a' && str.charAt(i) <= 'z') || (str.charAt(i) >= 'A' && str.charAt(i) <= 'Z') || str.charAt(i) == "'" || str.charAt(i) == " " || str.charAt(i) == "-"))
                                 return false;
                         }
                         return true;
                     }
                 }
                 function isFirstCharEqualsZero(str) {
                     return str.charAt(0) == 0;
                 }
                 function isValidName(str) {
                     for (var i = 0; i < str.length; i++) {
                         var place = str.charAt(i);
                         if (!((place >= 'a' && place <= 'z') || (place >= 'A' && place <= 'Z') || place == "'" || place == " " || place == "-"))
                             return false;
                     }
                     return true;
                 }
                 function isEmail(str) {
                     if (str.split("@").length == 2 && str.indexOf("@") != 0 && str.indexOf(".") != 0 && str.lastIndexOf(".") != str.length - 1 && str.length >= 5 && str.length <= 30 && str.indexOf("@") != str.length - 1)
                         return true;
                     else
                         return false;
                 }
                 function dotNextShtrudel(str) {
                     var i;
                     for (i = 0; i < str.length - 1; i++) {
                         if ((str.charAt(i) == "@" && str.charAt(i + 1) == "." || str.charAt(i) == "." && str.charAt(i + 1) == "@"))
                             return true;
                     }
                     return false;
                 }
                 function isValidId(str) {
                     if (str.length != 9)
                         return false;
                     else
                         return true;
                 }
                 function isValidPhone(str) {
                     if (str.length == 10)
                         return true;
                     else
                         return false;
                 }
                 function isHaveValidChars(str) {
                     var quot = "\"";
                     var badCahrStr = "$%^&*()_+[]{}<>-,";
                     for (var i = 0; i < str.length; i++)
                         for (var j = 0; j < badCahrStr.length; j++)
                             if (str.charAt(i) == badCahrStr.charAt(j))
                                 return false;
                     if (str.indexOf(quot) != -1)
                         return false;
                     return true;
                 }
                 function dotAfterDot(str) {
                     var i;
                     for (i = 0; i < str.length - 1; i++) {
                         if (str.charAt(i) == "." && str.charAt(i + 1) == ".")
                             return true;
                     }
                     return false;
                 }
                 function isValidEnglish(str) {
                     for (var i = 0; i < str.length; i++) {
                         var place = str.charAt(i);
                         if (!((place >= 'a' && place <= 'z') || (place >= 'A' && place <= 'Z')))
                             return false;
                     }
                     return true;
                 }
                 function isDotAfterStrudel(str) {
                     var indexStrudel = 0;
                     var indexDot = -1;
                     for (var i = 0; i < str.length; i++) {
                         if (str.charAt(i) == '@')
                             indexStrudel = i;
                         else if (str.charAt(i) == '.')
                             indexDot = i;
                     }
                     if (indexDot > indexStrudel)
                         return true
                     return false;
                 }
                 function checkForm() {
                     if (isEmpty(document.getElementById("fName").value))
                         msg += "<li>The first name is empty.</li>";
                     else
                         if (!isValidName(document.getElementById("fName").value))
                             msg += "<li>First name doesnt consists of letters.</li>";
                         else
                             if (!SameLanguage(document.getElementById("fName").value))
                                 msg += "<li>The first name doesn't contain same language.</li>";

                     if (isEmpty(document.getElementById("lName").value))
                         msg += "<li>The last name is empty.</li>";
                     else
                         if (!isValidName(document.getElementById("lName").value))
                             msg += "<li>Last name doesnt consists of letters.</li>";
                         else
                             if (!SameLanguage(document.getElementById("lName").value))
                                 msg += "<li>The first name doesn't contain same language.</li>";
                             else
                                 if (!SameNameLanguage(document.getElementById("fName").value, document.getElementById("lName").value))
                                     msg += "<li>The first name and last name don't consists of the same language.</li>";

                     if (isEmpty(document.getElementById("password").value))
                         msg += "<li>You didn't enter a password.</li>";
                     else
                         if (!isHaveValidChars(document.getElementById("password").value))
                             msg += "<li>An incorrect password.</li>";

                     if (isEmpty(document.getElementById("email").value))
                         msg += "<li>You didn't enter an email.</li>";
                     else
                         if (!isEmail(document.getElementById("email").value))
                             msg += "<li>An incorrect email.</li>";
                         else
                             if (dotAfterDot(document.getElementById("email").value))
                                 msg += "<li>Invalid email: there is a dot after dot.</li>";
                             else
                                 if (dotNextShtrudel(document.getElementById("email").value))
                                     msg += "<li>Invalid email: there is a point attached to a strudel (@).</li>";
                                 else
                                     if (!isDotAfterStrudel(document.getElementById("email").value))
                                         msg += "<li>Invalid email: there isn't a dot after the strudel (@)</li>";
                     if (msg.length == 0)
                         return true;
                     else {
                         document.getElementById('errors').innerHTML = msg;
                         msg = "";
                         return false;
                     }
                 }
             </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="flex-container">
        <div>
    <form id="myForm" method="post" action="" onsubmit="return checkForm();">
            <h1> Please fill the form </h1>
                            <ul id="errors"></ul>
                                <%=regStatus %>
                    <%=errors %>
            <h3>Your first name: </h3>
            <input type="text" name="fName" id="first name"/>

            <h3>Your last name: </h3><input type="text" name="lName" id="last name" />

            <h3>Your email: </h3><input type="text" name="email"  id="email" dir="ltr" />

            <h3>Your age: </h3><input type="text" name="age" id="age" />

             <h3>Your favorite team </h3>
            <select name="favoriteTeam" id="favoriteTeam">
                <option value="Philadelphia"> 76ers </option>
                <option value="Brooklyn"> Nets </option>
                <option value="Milwaukee"> Bucks </option>
                <option value="New York"> Knicks </option>
                <option value="Atlanta"> Hawks </option>
                <option value="Miami"> Heat </option>
                <option value="Boston"> Celtics </option>
                <option value="Washington"> Wizards </option>
                <option value="Indiana"> Pacers </option>
                <option value="Charlotte"> Hornets </option>
                <option value="Chicago"> Bulls </option>
                <option value="Toronto"> Raptors </option>
               <option value="Cleveland "> Cavaliers </option>
               <option value="Orlando"> Magic </option>
                <option value="Detroit"> Pistons </option>
                <option value="Utah"> Jazz </option>
                <option value="Phoenix"> Suns </option>
               <option value="Denver "> Nuggets </option>
               <option value="LA"> Clippers </option>
               <option value="Dallas"> Mavericks </option>
                <option value="Portland"> Trail Blazers </option>
                <option value="Los Angeles"> Lakers </option>
                <option value="Memphis"> Grizzlies </option>
                <option value="Golden State"> Warriors </option>
                <option value="San Antonio"> Spurs </option>
                <option value="New Orleans"> Pelicans </option>
                <option value="Sacramento"> Kings </option>
               <option value="Minnesota "> Timberwolves </option>
               <option value="Oklahoma City"> Thunder </option>
                <option value="Houston"> Rockets </option>
                </select>

    
                         <h3>Your Password </h3><input type="text" name="password" id="password" />

            <br /><br />
            <input type="submit" class="button" name="submit" value="submit"  />
            &nbsp;&nbsp;
            <input type="reset" name="reset" value="reset" />
                        <br /><br />
                        <br /><br />
                </form>
            </div>
            </div> 
</asp:Content>

