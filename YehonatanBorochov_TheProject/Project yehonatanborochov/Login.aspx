<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SimpleLogin" Title="SimpleLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <header>
        <br />
                                                      <img src="images/NBALOGO.png" align="left" width="2.3%" />
                                 <img src="images/NBALOGO.png" align="right" width="2.3%" />
        <h1 style="color:white"> Log In </h1>
        <style>
                   td {
    font-family: Calibri;
    font-size: 22px;
    text-align:left;
      }
                          p {
    font-family: Calibri;
    font-size: 22px;
    text-align:left;
      }
                        a{
    color: black;
	font-weight: bold;
    text-decoration: none;
     }
        </style>
    </header>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="flex-container">
        <div>
            <center>
    <form action="" id="login" method="post">
    <table>
    <tr>
    <td><label for="id">Email:</label></td>
    <td><input type="text" name="email" id="email" /></td>
    </tr>
    <tr>
    <td><label for="pass">Password:</label></td>
    <td><input type="password" name="password" id="password" /></td>
    </tr>
    </table>
    <input type="submit" name="submit" value="sign in" />
    </form>
    <br />
                </center>
                    </div>
                            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                                </div>
    <%=errors %>
</asp:Content>

