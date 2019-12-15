<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GamePlay.aspx.cs" Inherits="GamePlay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.rounded-pill{border-radius:50rem!important}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        </style>

     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="RestartButton" runat="server" OnClick="RestartButton_Click" Text="Restart?" CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White"/>
        </div>

        <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="PromptLabel" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="DealPromptButton" runat="server" Text="Deal Prompt" CssClass="rounded-pill" OnClick="DealPromptButton_Click" Font-Size="Larger" BackColor="#39CED4" Font-Bold="True" ForeColor="White" />
        </div>
  </div>
</div>
    </div>

        

             <div class="row">
                 <div class="col-sm"></div>
    <div class="col-sm">
        <asp:Label ID="PlayerLabel" runat="server" Text="Player " Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#B836A7"></asp:Label>
        <asp:Label ID="TurnLabel" runat="server" Text="1" Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#B836A7"></asp:Label>
        <asp:Label ID="sTurnLabel" runat="server" Text="'s Turn" Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#B836A7"></asp:Label>
        <br />
        <asp:Button ID="DealHandButton" runat="server" Text="Deal Hand" OnClick="DealHandButton_Click" CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White"/>
        <br />
        <br />
        </div>

                 <div class="col-sm">
        <asp:Label ID="WinnerLabel" runat="server" Text=""  Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#252486"></asp:Label>
        </div>
                
                  
    <div class="col-sm">
        <asp:Label ID="Player1ScoreLabel" runat="server" Text="Player 1: "  Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <asp:Label ID="Player1Score" runat="server" Text="0"  Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <br />
        <asp:Label ID="Player2ScoreLabel" runat="server" Text="Player 2: "  Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <asp:Label ID="Player2Score" runat="server" Text="0" Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <br />
        <asp:Label ID="Player3ScoreLabel" runat="server" Text="Player 3: "  Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <asp:Label ID="Player3Score" runat="server" Text="0" Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <br />
        <asp:Label ID="Player4ScoreLabel" runat="server" Text="Player 4: "  Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <asp:Label ID="Player4Score" runat="server" Text="0" Font-Size="XX-Large" Font-Bold="True" Font-Names="Arial Black" ForeColor="#39CED4"></asp:Label>
        <br />
        <br />
        </div>
                  </div>

        <div class="row">
    <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Card1Label" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="select1Button" runat="server" Text="Select" CssClass="rounded-pill" Font-Size="Larger" OnClick="select1Button_Click" BackColor="#B836A7" Font-Bold="True" ForeColor="White" />
       </div>
  </div>
</div>
    </div>

        
            <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Card2Label" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="select2Button" runat="server" Text="Select" CssClass="rounded-pill" Font-Size="Larger" OnClick="select2Button_Click" BackColor="#B836A7" Font-Bold="True" ForeColor="White"/>
         </div>
  </div>
</div>
                </div>

            <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Card3Label" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="select3Button" runat="server" Text="Select" CssClass="rounded-pill" Font-Size="Larger" OnClick="select3Button_Click" BackColor="#B836A7" Font-Bold="True" ForeColor="White"/>
        </div>
  </div>
</div>
                </div>

            <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Card4Label" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="select4Button" runat="server" Text="Select" CssClass="rounded-pill" Font-Size="Larger" OnClick="select4Button_Click" BackColor="#B836A7" Font-Bold="True" ForeColor="White"/>
        </div>
  </div>
</div>
                </div>

            <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Card5Label" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="select5Button" runat="server" Text="Select" CssClass="rounded-pill" Font-Size="Larger" OnClick="select5Button_Click" BackColor="#B836A7" Font-Bold="True" ForeColor="White"/>
       </div>
  </div>
</div>
                </div>
            </div>

        <br />

        <div class="row">
    <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Player1ChoiceLabel" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="Player1ChoiceButton" runat="server" Text="Select" Visible="False" OnClick="Player1ChoiceButton_Click"  CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White"/>
        </div>
  </div>
</div>
    </div>

            <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Player2ChoiceLabel" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="Player2ChoiceButton" runat="server" Text="Select" Visible="False" OnClick="Player2ChoiceButton_Click" CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White"/>
        </div>
  </div>
</div>
                </div>

                <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Player3ChoiceLabel" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="Player3ChoiceButton" runat="server" Text="Select" Visible="False" OnClick="Player3ChoiceButton_Click" CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White"/>
       </div>
  </div>
</div>
                    </div>

                    <div class="col-sm">
        <div class="container">
  <div class="card">
    <div class="card-body"><asp:Label ID="Player4ChoiceLabel" runat="server"></asp:Label>
        <br />
        <br />
      </div>
      <div class ="card-footer"><asp:Button ID="Player4ChoiceButton" runat="server" Text="Select" Visible="False" OnClick="Player4ChoiceButton_Click" CssClass="rounded-pill" Font-Size="Larger" BackColor="#252486" Font-Bold="True" ForeColor="White"/>
         </div>
  </div>
</div>
                </div>
                    </div>
        
    </form>
</body>
</html>
