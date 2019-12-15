using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StartGame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BackHome_Click(object sender, EventArgs e)
    {
        Server.Transfer("HomePage.aspx");
    }

    protected void GuestButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Waiting.aspx");
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Login.aspx");
    }
}