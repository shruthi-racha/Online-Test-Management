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

public partial class faculty_login : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string password;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "")
        {

            Label2.Visible = true;
            Label2.Text = "Enter username and password";
        }
        // StringComparison(" + Textbox1.Text", " ");
        else
        {
            cco.Open();
            string command = "select * from faculty where login='" + TextBox1.Text + "'";
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
                    string command1 = "select fid from faculty where login='" + TextBox1.Text + "' and password ='" + TextBox2.Text + "'";
                    com = new SqlCommand(command1, cco);
                    SqlDataReader dr1 = com.ExecuteReader();
                    if (dr1.Read())
                    {
                        string fid;
                        fid = dr1["fid"].ToString();
                        //num1 = Int32.Parse(accnum);
                        //  if (num1 == 0)
                        //  {
                        //      Label1.Visible = true;
                        //   Label1.Text = "enter username & password";
                        //  cco.Close();
                        //   }
                        Session["fid"] = fid;
                        Response.Redirect("~/faculty_home.aspx");
                    }
                }
                else
                {
                    Label2.Text = "Invalid Username or Password";
                    Label2.Visible = true;
                }
            }
            else
            {
                Label2.Text = "Invalid Username or Password";
                Label2.Visible = true;
            }
            cco.Close();

        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
