<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SimpleProtectedPage.aspx.cs" Inherits="SimpleProtectedPage" Title="SimpleProtectedPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

כניסה לדף זה ללא הקלדת שם וססמה של מנהל תציג הודעה - כניסה כמנהל תציג קישור לדף ניהול מוגן
זו הדגמה בלבד
<h1>הדגמה של דף מוגן</h1>

 <%=userMsg %>
</asp:Content>

