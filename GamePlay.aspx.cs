using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GamePlay : System.Web.UI.Page
{

    protected void DealCards()
    {
        Dealer myDealer = new Dealer();
        Random rnd = new Random();
        Card1Label.Text = myDealer.ShowCardText(rnd.Next(1, 10));
        Card2Label.Text = myDealer.ShowCardText(rnd.Next(1, 10));
        Card3Label.Text = myDealer.ShowCardText(rnd.Next(1, 10));
        Card4Label.Text = myDealer.ShowCardText(rnd.Next(1, 10));
        Card5Label.Text = myDealer.ShowCardText(rnd.Next(1, 10));
    }

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void select1Button_Click(object sender, EventArgs e)
    {
        if (TurnLabel.Text.Equals("1"))
        {
            Player1ChoiceLabel.Text = Card1Label.Text;
            int turn = Int32.Parse(TurnLabel.Text) + 1;
            TurnLabel.Text = turn.ToString();
        }
        else if (TurnLabel.Text.Equals("2"))
        {
            Player2ChoiceLabel.Text = Card1Label.Text;
            int turn = Int32.Parse(TurnLabel.Text) + 1;
            TurnLabel.Text = turn.ToString();
        }
        else if (TurnLabel.Text.Equals("3"))
        {
            Player3ChoiceLabel.Text = Card1Label.Text;
            int turn = Int32.Parse(TurnLabel.Text) + 1;
            TurnLabel.Text = turn.ToString();
        }
        else if (TurnLabel.Text.Equals("4"))
        {
            Player4ChoiceLabel.Text = Card1Label.Text;
            Player1ChoiceButton.Visible = true;
            Player2ChoiceButton.Visible = true;
            Player3ChoiceButton.Visible = true;
            Player4ChoiceButton.Visible = true;
        }
        Card1Label.Text = "";
        Card2Label.Text = "";
        Card3Label.Text = "";
        Card4Label.Text = "";
    }

    protected void select2Button_Click(object sender, EventArgs e)
    {
        if (TurnLabel.Text.Equals("1"))
        {
            Player1ChoiceLabel.Text = Card2Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("2"))
        {
            Player2ChoiceLabel.Text = Card2Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString(); ;
        }
        else if (TurnLabel.Text.Equals("3"))
        {
            Player3ChoiceLabel.Text = Card2Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("4"))
        {
            Player4ChoiceLabel.Text = Card2Label.Text;
            Player1ChoiceButton.Visible = true;
            Player2ChoiceButton.Visible = true;
            Player3ChoiceButton.Visible = true;
            Player4ChoiceButton.Visible = true;
        }
        Card1Label.Text = "";
        Card2Label.Text = "";
        Card3Label.Text = "";
        Card4Label.Text = "";
    }

    protected void select3Button_Click(object sender, EventArgs e)
    {
        if (TurnLabel.Text.Equals("1"))
        {
            Player1ChoiceLabel.Text = Card3Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("2"))
        {
            Player2ChoiceLabel.Text = Card3Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("3"))
        {
            Player3ChoiceLabel.Text = Card3Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("4"))
        {
            Player4ChoiceLabel.Text = Card3Label.Text;
            Player1ChoiceButton.Visible = true;
            Player2ChoiceButton.Visible = true;
            Player3ChoiceButton.Visible = true;
            Player4ChoiceButton.Visible = true;
        }
        Card1Label.Text = "";
        Card2Label.Text = "";
        Card3Label.Text = "";
        Card4Label.Text = "";
    }

    protected void select4Button_Click(object sender, EventArgs e)
    {
        if (TurnLabel.Text.Equals("1"))
        {
            Player1ChoiceLabel.Text = Card4Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("2"))
        {
            Player2ChoiceLabel.Text = Card4Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("3"))
        {
            Player3ChoiceLabel.Text = Card4Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("4"))
        {
            Player4ChoiceLabel.Text = Card4Label.Text;
            Player1ChoiceButton.Visible = true;
            Player2ChoiceButton.Visible = true;
            Player3ChoiceButton.Visible = true;
            Player4ChoiceButton.Visible = true;
        }
        Card1Label.Text = "";
        Card2Label.Text = "";
        Card3Label.Text = "";
        Card4Label.Text = "";
    }

    protected void select5Button_Click(object sender, EventArgs e)
    {
        if (TurnLabel.Text.Equals("1"))
        {
            Player1ChoiceLabel.Text = Card5Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("2"))
        {
            Player2ChoiceLabel.Text = Card5Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("3"))
        {
            Player3ChoiceLabel.Text = Card5Label.Text;
            TurnLabel.Text = (Int32.Parse(TurnLabel.Text) + 1).ToString();
        }
        else if (TurnLabel.Text.Equals("4"))
        {
            Player4ChoiceLabel.Text = Card5Label.Text;
            Player1ChoiceButton.Visible = true;
            Player2ChoiceButton.Visible = true;
            Player3ChoiceButton.Visible = true;
            Player4ChoiceButton.Visible = true;
        }
        Card1Label.Text = "";
        Card2Label.Text = "";
        Card3Label.Text = "";
        Card4Label.Text = "";
    }

    protected void DealPromptButton_Click(object sender, EventArgs e)
    {
        Dealer myDealer = new Dealer();
        Random rnd = new Random();
        PromptLabel.Text = myDealer.ShowPromptText(rnd.Next(1, 5));
    }

    protected void DealHandButton_Click(object sender, EventArgs e)
    {
        DealCards();
    }

    protected void Player1ChoiceButton_Click(object sender, EventArgs e)
    {
        Player1Score.Text = (Int32.Parse(Player1Score.Text) + 1).ToString();
        if (Int32.Parse(Player1Score.Text) <= 4)
        {
            Player1ChoiceLabel.Text = "";
            Player2ChoiceLabel.Text = "";
            Player3ChoiceLabel.Text = "";
            Player4ChoiceLabel.Text = "";
            Player1ChoiceButton.Visible = false;
            Player2ChoiceButton.Visible = false;
            Player3ChoiceButton.Visible = false;
            Player4ChoiceButton.Visible = false;
            Dealer myDealer = new Dealer();
            Random rnd = new Random();
            PromptLabel.Text = myDealer.ShowPromptText(rnd.Next(1, 5));
            TurnLabel.Text = "1";
        }
        else
        {
            WinnerLabel.Text = "Player 1 Wins!";
            select1Button.Enabled = false;
            select2Button.Enabled = false;
            select3Button.Enabled = false;
            select4Button.Enabled = false;
            select5Button.Enabled = false;
            Player1ChoiceButton.Enabled = false;
            Player2ChoiceButton.Enabled = false;
            Player3ChoiceButton.Enabled = false;
            Player4ChoiceButton.Enabled = false;
        }
    }

    protected void Player2ChoiceButton_Click(object sender, EventArgs e)
    {
        Player2Score.Text = (Int32.Parse(Player2Score.Text) + 1).ToString();
        if (Int32.Parse(Player2Score.Text) <= 4)
        {
            Player1ChoiceLabel.Text = "";
            Player2ChoiceLabel.Text = "";
            Player3ChoiceLabel.Text = "";
            Player4ChoiceLabel.Text = "";
            Player1ChoiceButton.Visible = false;
            Player2ChoiceButton.Visible = false;
            Player3ChoiceButton.Visible = false;
            Player4ChoiceButton.Visible = false;
            Dealer myDealer = new Dealer();
            Random rnd = new Random();
            PromptLabel.Text = myDealer.ShowPromptText(rnd.Next(1, 5));
            TurnLabel.Text = "1";
        }
        else
        {
            WinnerLabel.Text = "Player 2 Wins!";
            select1Button.Enabled = false;
            select2Button.Enabled = false;
            select3Button.Enabled = false;
            select4Button.Enabled = false;
            select5Button.Enabled = false;
            Player1ChoiceButton.Enabled = false;
            Player2ChoiceButton.Enabled = false;
            Player3ChoiceButton.Enabled = false;
            Player4ChoiceButton.Enabled = false;
        }
    }

    protected void Player3ChoiceButton_Click(object sender, EventArgs e)
    {
        Player3Score.Text = (Int32.Parse(Player3Score.Text) + 1).ToString();
        if (Int32.Parse(Player3Score.Text) <= 4)
        {
            Player1ChoiceLabel.Text = "";
            Player2ChoiceLabel.Text = "";
            Player3ChoiceLabel.Text = "";
            Player4ChoiceLabel.Text = "";
            Player1ChoiceButton.Visible = false;
            Player2ChoiceButton.Visible = false;
            Player3ChoiceButton.Visible = false;
            Player4ChoiceButton.Visible = false;
            Dealer myDealer = new Dealer();
            Random rnd = new Random();
            PromptLabel.Text = myDealer.ShowPromptText(rnd.Next(1, 5));
            TurnLabel.Text = "1";
        }
        else
        {
            WinnerLabel.Text = "Player 3 Wins!";
            select1Button.Enabled = false;
            select2Button.Enabled = false;
            select3Button.Enabled = false;
            select4Button.Enabled = false;
            select5Button.Enabled = false;
            Player1ChoiceButton.Enabled = false;
            Player2ChoiceButton.Enabled = false;
            Player3ChoiceButton.Enabled = false;
            Player4ChoiceButton.Enabled = false;
        }
    }

    protected void Player4ChoiceButton_Click(object sender, EventArgs e)
    {
        Player4Score.Text = (Int32.Parse(Player4Score.Text) + 1).ToString();
        if (Int32.Parse(Player4Score.Text) <= 4)
        {
            Player1ChoiceLabel.Text = "";
            Player2ChoiceLabel.Text = "";
            Player3ChoiceLabel.Text = "";
            Player4ChoiceLabel.Text = "";
            Player1ChoiceButton.Visible = false;
            Player2ChoiceButton.Visible = false;
            Player3ChoiceButton.Visible = false;
            Player4ChoiceButton.Visible = false;
            Dealer myDealer = new Dealer();
            Random rnd = new Random();
            PromptLabel.Text = myDealer.ShowPromptText(rnd.Next(1, 5));
            TurnLabel.Text = "1";
        }
        else
        {
            WinnerLabel.Text = "Player 4 Wins!";
            select1Button.Enabled = false;
            select2Button.Enabled = false;
            select3Button.Enabled = false;
            select4Button.Enabled = false;
            select5Button.Enabled = false;
            Player1ChoiceButton.Enabled = false;
            Player2ChoiceButton.Enabled = false;
            Player3ChoiceButton.Enabled = false;
            Player4ChoiceButton.Enabled = false;
        }
    }

    protected void RestartButton_Click(object sender, EventArgs e)
    {
       Response.Redirect(Request.RawUrl);
    }
}