using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{

    SqlCommand com;
    SqlConnection cco;
    string password;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");

    }

    
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "")
        {

            Label1.Visible = true;
            Label1.Text = "Enter username and password";
        }
        // StringComparison(" + Textbox1.Text", " ");
        else
        {
            cco.Open();
            string command = "select * from administrator where login='" + TextBox1.Text + "'";
            com = new SqlCommand(command, cco);

            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read() == true)
            {
                password = dr["password"].ToString();
                if (TextBox2.Text == password)
                {
                    Label1.Text = "Login Successful";
                    Label1.Visible = true;
                    dr.Close();
                    string command1 = "select aid from administrator where login='" + TextBox1.Text + "' and password ='" + TextBox2.Text + "'";
                    com = new SqlCommand(command1, cco);
                    SqlDataReader dr1 = com.ExecuteReader();
                    if (dr1.Read())
                    {
                        string aid1;
                        //string did1;
                        aid1 = dr1["aid"].ToString();
                        dr1.Close();
                        
                        //num1 = Int32.Parse(accnum);
                        //  if (num1 == 0)
                        //  {
                        //      Label1.Visible = true;
                        //   Label1.Text = "enter username & password";
                        //  cco.Close();
                        //   }
                        Session["aid"] = aid1;
                        
                        Response.Redirect("~/admin_home.aspx");
                    }
                }
                else
                {
                    Label1.Text = "Invalid Username or Password";
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Invalid Username or Password";
                Label1.Visible = true;
            }
            cco.Close();

        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click2(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
