<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

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
        <asp:Label ID="CreateAccountTitle" runat="server" Font-Size="XX-Large" Text="Create An Account" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
            <br />
            <br />
    </div>
<div class="container">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-3">
             <asp:Label ID="FNLabel" runat="server" Text="First Name: " Font-Size="15pt"></asp:Label>
                  <br />
            <br />
                  <asp:Label ID="LNLabel" runat="server" Text="Last Name: " Font-Size="15pt"></asp:Label>
                  <br />
            <br />
                  <asp:Label ID="EmailLabel" runat="server" Text="Email: " Font-Size="15pt"></asp:Label>
                  <br />
            <br />
                  <asp:Label ID="UNLabel" runat="server" Text="Username: " Font-Size="15pt"></asp:Label>
                  <br />
            <br />
                  <asp:Label ID="PassLabel" runat="server" Text="Password: " Font-Size="15pt"></asp:Label>
                  <br />
            <br />
                  <asp:Label ID="ConPassLabel" runat="server" Text="Confirm Password: " Font-Size="15pt"></asp:Label>
        </div>
        <div class="col-3">
                  <asp:TextBox ID="txtFN" runat="server"></asp:TextBox>
                  <br />
                  <br />
                  <asp:TextBox ID="txtLN" runat="server"></asp:TextBox>
                  <br />
                  <br />
                  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                  <br />
                  <br />
                  <asp:TextBox ID="txtUN" runat="server"></asp:TextBox>
                  <br />
                  <br />
                  <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                  <br />
                  <br />
                  <asp:TextBox ID="txtConPass" runat="server"></asp:TextBox>
        </div>
        <div class="col-3"></div>
        <div class="col-2"></div>
    </div>
    <div class="col-xlrg text-center">
        <br />
     <asp:Button ID="SubmitAccountButton" runat="server" Text="Submit" OnClick="SubmitAccountButton_Click" CssClass="rounded-pill" Font-Size="Larger" BackColor="#B836A7" Font-Bold="True" ForeColor="White"/>
            <br />
            <br />
          <asp:Button ID="BackHome" runat="server" Text="Back to Home" OnClick="BackHome_Click" CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White"/>
        </div>
</div>
    </div>
        </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>