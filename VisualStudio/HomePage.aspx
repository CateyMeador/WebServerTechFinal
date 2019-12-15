<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        </br></br>
        <div class="container">
  <div class="row">
    <div class="col-sm">
    </div>
    <div class="col-xlrg text-center">
      <div class="container">

        <asp:Label ID="WhatDoTitle" runat="server" Font-Size="XX-Large" Text="WHAT DO" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <asp:Label ID="YouTitle" runat="server" Font-Size="XX-Large" Text="YOU" Font-Bold="True" Font-Names="Arial Black" ForeColor="#252486"></asp:Label>
        <asp:Label ID="MemeTitle" runat="server" Font-Size="XX-Large" Text="MEME" Font-Bold="True" Font-Names="Arial Black" ForeColor="#B836A7"></asp:Label>
        <br />
        <asp:Label ID="SimLabel" runat="server" Font-Size="XX-Large" Text="Simulator" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
        <br />
    </div>
    <div class="container">
        <br/>
        <br/>
        <asp:Button ID="StartButton" runat="server" Text="Start A Game" CssClass="rounded-pill" OnClick="StartButton_Click" Font-Size="Larger" BackColor="#39CED4" Font-Bold="True" ForeColor="White" />
        <br/>
        <br/>
        <asp:Button ID="JoinButton" runat="server" Text="Join A Game" CssClass="rounded-pill" Font-Size="Larger" OnClick="JoinButton_Click" BackColor="#B836A7" Font-Bold="True" ForeColor="White" />
        <br/>
        <br/>
        <asp:Button ID="CreateAccountButton" runat="server" Text="Create An Account" CssClass="rounded-pill" OnClick="CreateAccountButton_Click" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White" />
        <br />
    </div>
    </div>
    <div class="col-sm">
    </div>
  </div>
</div>
    

    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
