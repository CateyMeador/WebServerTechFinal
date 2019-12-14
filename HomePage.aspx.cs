using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void StartButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("StartGame.aspx");
    }

    protected void JoinButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("JoinGame.aspx");
    }

    protected void CreateAccountButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("CreateAccount.aspx");
    }
}