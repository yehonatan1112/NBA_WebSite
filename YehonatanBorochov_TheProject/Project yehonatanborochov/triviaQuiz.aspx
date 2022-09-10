<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="triviaQuiz.aspx.cs" Inherits="triviaQuiz" Title="triviaQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <header>
         <br />
                                      <img src="images/NBALOGO.png" align="left" width="2.3%" />
                                 <img src="images/NBALOGO.png" align="right" width="2.3%" />
        <h1 style="color:white"> NBA Quiz </h1>
           <style> 
                      p {
    font-family: Calibri;
    font-size: 22px;
    text-align: left;
      }
       h4 {
    font-family: Calibri;
    font-size: 25px;
    text-align: left;
    color:darkslateblue;
        line-height:0.3em;
      }
         a{
    color: black;
	font-weight: bold;
    text-decoration: none;
     }
    .video{
        text-align:right;
    }
    .form{
        text-align:left;
        font-size:22px;
        font-weight:bold;
    }
    .button
    {
        font-size:22px;
    }
        </style>
    </header>
    <script>
        function Grade() {
            var grade = 0;
            if (document.myForm.ex1[2].checked == true) {//1
                grade += 10;
            }
            if (document.myForm.ex2[0].checked == true || document.myForm.ex2[2].checked == true) {//2
                grade += 10;
            }
            if (document.myForm.ex3[3].checked == true) {//3
                grade += 10;
            }
            if (document.myForm.ex4[0].checked == true) {//4
                grade += 10;
            }
            if (document.myForm.ex5[1].checked == true) {//5
                grade += 10;
            }
            if (document.myForm.ex6[1].checked == true) {//6
                grade += 10;
            }
            if (document.myForm.ex7[3].checked == true) {//7
                grade += 10;
            }
            if (document.myForm.ex8[2].checked == true) {//8
                grade += 10;
            }
            if (document.myForm.ex9[3].checked == true) {//9
                grade += 10;
            }
            if (document.myForm.ex10[0].checked == true || document.myForm.ex10[1].checked == true) {//10
                grade += 10;
            }
            window.alert("Your Grade Is:" + grade);
        }
    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="flex-container">
            <div style="width:55%">
                <h1>Questions</h1>
    <form name="myForm" class="form" >
        <h4 class="form">1) Who has won the most MVPs?</h4>
        <div>
            <input type="radio" name="ex1" value="Michael Jordan" />	 Michael Jordan
            <br />
            <input type="radio" name="ex1" value="	Bill Russell" />	 Bill Russell
            <br />
            <input type="radio" name="ex1" value="Kareem Abdul-Jabbar" />  Kareem Abdul-Jabbar
            <br />
            <input type="radio" name="ex1" value="	Wilt Chamberlain" />	  Wilt Chamberlain
            <br />
        </div>
        <div>
            <h4 class="form">2) Which team has won the most NBA titles?</h4>
            <input type="radio" name="ex2" value=" Los Angeles Lakers" />  Los Angeles Lakers
            <br />
            <input type="radio" name="ex2" value=" Golden State Warriors" />  Golden State Warriors
            <br />
            <input type="radio" name="ex2" value=" Boston Celtics" />  Boston Celtics
            <br />
                        <input type="radio" name="ex2" value=" Chicago Bulls	" />  Chicago Bulls	
            <br />
        </div>
        <div>
            <h4 class="form">3) Who is this year MVP?</h4>
            <input type="radio" name="ex3" value="	Kawhi Leonard" />  Kawhi Leonard
            <br />
            <input type="radio" name="ex3" value="	Giannis Antetokounmpo" />  Giannis Antetokounmpo
            <br />
            <input type="radio" name="ex3" value="	Joel Embiid" />  Joel Embiid
            <br />
                        <input type="radio" name="ex3" value="		Nikola Jokić" />  Nikola Jokić
            <br />
        </div>
        <div>
            <h4 class="form">4) Which team has 3 trophies in this decade?</h4>
            <input type="radio" name="ex4" value=" Golden State Warriors" />  Golden State Warriors
            <br />
            <input type="radio" name="ex4" value=" Miami Heat" />  Miami Heat
            <br />
            <input type="radio" name="ex4" value=" Cleveland Cavaliers" />  Cleveland Cavaliers
            <br />
                        <input type="radio" name="ex4" value=" Toronto Raptors" />  Toronto Raptors
            <br />
        </div>
                <div>
            <h4 class="form">5) Which coach won the most NBA trophies?</h4>
            <input type="radio" name="ex5" value=" Red Auerbach" />  Red Auerbach
            <br />
            <input type="radio" name="ex5" value=" Phil Jackson" />  Phil Jackson
            <br />
            <input type="radio" name="ex5" value=" Pat Riley" />  Pat Riley
            <br />
                        <input type="radio" name="ex5" value=" Gregg Popovich" />  Gregg Popovich
            <br />
        </div>
                        <div>
            <h4 class="form">6) Which coach is coaching the San Antonio Spurs in the last 25 years?</h4>
            <input type="radio" name="ex6" value=" Nick Nurse" />  Nick Nurse
            <br />
            <input type="radio" name="ex6" value=" Gregg Popovich" />  Gregg Popovich 
            <br />
            <input type="radio" name="ex6" value=" Steve Kerr" />  Steve Kerr
            <br />
                        <input type="radio" name="ex6" value=" Doc Rivers" />  Doc Rivers
            <br />
        </div>
                        <div>
            <h4 class="form">7) Who has scored the most points in nba history?</h4>
            <input type="radio" name="ex7" value=" 	Karl Malone" />  	Karl Malone
            <br />
            <input type="radio" name="ex7" value=" 	LeBron James" />  	LeBron James
            <br />
            <input type="radio" name="ex7" value=" 	Kobe Bryant" />  	Kobe Bryant
            <br />
                        <input type="radio" name="ex7" value=" 	Kareem Abdul-Jabbar" />  	Kareem Abdul-Jabbar
            <br />
        </div>
                        <div>
            <h4 class="form">8) How many Israelis played in the NBA?</h4>
            <input type="radio" name="ex8" value="1" />  One
            <br />
            <input type="radio" name="ex8" value=" 2" />  Two
            <br />
            <input type="radio" name="ex8" value=" 3" />  Three
            <br />
                        <input type="radio" name="ex8" value=" 4" />  Four
            <br />
        </div>
                        <div>
            <h4 class="form">9) Who is the israeli player that picked in the 2020 NBA Draft?</h4>
            <input type="radio" name="ex9" value="T.j. Leaf" />  T.j. Leaf
            <br />
            <input type="radio" name="ex9" value=" Gal Mekel" />  Gal Mekel
            <br />
            <input type="radio" name="ex9" value=" Omri Casspi" />  Omri Casspi
            <br />
                        <input type="radio" name="ex9" value="Deni Avdia " />  Deni Avdia
            <br />
        </div>
                        <div>
            <h4 class="form">10) Do you like this Website?</h4>
            <input type="radio" name="ex10" value=" Yes" />  Yes
            <br />
            <input type="radio" name="ex10" value=" No" />  No
            <br />
        </div>
        <br />
        <input type="button" class="button" name="Check My Answers" value="Check My Answers" onclick="Grade()" />
    </form>
<br />
                </div>
                <div style="width:25%">
                    <br />                    <br />
                            <img src="images/MVP.jpg" width="400" height="225"  />
        <br />
                            <img src="images/title.jpg" width="400" height="225"  />
        <br />                    
        <img src="images/kawai.jpg" width="400" height="225"  />
                    <br />
                    <img src="images/CHAMP.jpg" width="400" height="230"  />
                                        <br />
                    <img src="images/POP.jpg" width="400" height="250"  />
                                                            <br />
                    <img src="images/TIM.jpg" width="400" height="220"  />
                                                                                <br />
                    <img src="images/SCORE.jpg" width="400" height="225"  />
                                                                                                    <br />
                    <img src="images/israel.jpg" width="400" height="230"  />
                                                                                                                        <br />
                    <img src="images/omri.jpg" width="400" height="240"  />
                                                                                                                                            <br />
                    <img src="images/gj.gif" width="400" height="240"  />
    </div>
                   
    </div>
                 <div style="width:20%"></div>
</asp:Content>

