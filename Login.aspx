﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div class="container">
    <div class="col-xlrg text-center">
        <asp:Label ID="JoinGameTitle" runat="server" Font-Size="XX-Large" Text="Login" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <br />
        <br />
    </div>
<div class="container">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-2"></div>
        <div class="col-2">
            <asp:Label ID="UNLabel" runat="server" Text="Username: " Font-Size="15pt"></asp:Label>
            <br />
            <br />
            <asp:Label ID="PassLabel" runat="server" Text="Password: " Font-Size="15pt"></asp:Label>
            <br />
            <br />
        </div>
        <div class="col-2">
                  <asp:TextBox ID="txtUN" runat="server"></asp:TextBox>
                  <br />
                  <br />
                  <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                  <br />
        </div>
        <div class="col-3"></div>
        <div class="col-3"></div>
        <div class="col-3"></div>
        <div class="col-3"></div>
    </div>
</div>
    <br />
        <div class="col-xlrg text-center">
    <asp:Button ID="LoginButton" runat="server" Text="Login"  CssClass="rounded-pill" Font-Size="Larger" BackColor="#B836A7" Font-Bold="True" ForeColor="White"/>
            <br />
            <br />
          <asp:Button ID="BackHome" runat="server" Text="Back to Home"  CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White" OnClick="BackHome_Click"/>
        </div></div>
        </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
