<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteData.aspx.cs" Inherits="DeleteData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <header>
        <br />
                                              <img src="images/NBALOGO.png" align="left" width="2.3%" />
                                 <img src="images/NBALOGO.png" align="right" width="2.3%" />
        <h1 style="color:white"> Delete Data </h1>
        <style>
                     a{
    color: black;
	font-weight: bold;
    text-decoration: none;
     }
                                           p {
    font-family: Calibri;
    font-size: 22px;
    text-align: left;
      }
  .button
    {
        font-size:21px;
    }
        </style>
    </header>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="flex-container">
            <div>
     <h1>Delete Your Account</h1>
    <form method="post">
        <h3>An ID number to delete</h3>
       <p style=" text-align: center"> Email: <input type="text" id="email" name="email" />
           Password:<input type="text" id="password" name="password" /></p>

        <button type="submit" class="button" id="delete" name="delete" value="delete"> delete </button>
    </form>

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

    <% = userMsg%>
                </div></div>
</asp:Content>

