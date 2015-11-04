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

public partial class questions : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string usn;
    string testval;
    int score, j, k, l, m, a, b, x, y, z, s, d, f, g, n, i, c = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        cco.Open();
        usn = Session["usn"].ToString();
        testval = Session["testcode"].ToString();

        SqlConnection con = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");

        SqlDataAdapter adp = new SqlDataAdapter("select qno,question,opa,opb,opc,opd,rightop from question where testcode='" + testval + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "question");
        
        if (Convert.ToInt32(Label12.Text) == 0)
        {
            Label1.Text = (ds.Tables["question"].Rows[0][0]).ToString();
            Label2.Text = (ds.Tables["question"].Rows[0][1]).ToString();
            

            RadioButton1.Text = (ds.Tables["question"].Rows[0][2]).ToString();
            RadioButton2.Text = (ds.Tables["question"].Rows[0][3]).ToString();
            RadioButton3.Text = (ds.Tables["question"].Rows[0][4]).ToString();
            RadioButton4.Text = (ds.Tables["question"].Rows[0][5]).ToString();
            int p = Convert.ToInt32(Label12.Text);
            p += 1;
            Label12.Text = p.ToString();

        }

        if (RadioButton1.Checked == true)
        {
            //RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }

        if (RadioButton2.Checked == true)
        {
            RadioButton1.Checked = false;
            // RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }

        if (RadioButton3.Checked == true)
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            //RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }

        if (RadioButton4.Checked == true)
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            //RadioButton4.Checked = false;

        }

        //Label4.Text = a.ToString();


        if (Convert.ToInt32(Label7.Text) < 10)
        {
            if (Convert.ToInt32(Label7.Text) == 1)
            {
                Label13.Visible = true;
                Button1_Click1(1, e);
            }
            
             Timer1_Tick(1, e);
             a = Convert.ToInt32(Label10.Text);
             a -= 1;
             Label10.Text = a.ToString();
             
            }

            else
            {
                if (Convert.ToInt32(Label3.Text) == 0)
                {

                    Label23.Visible = false;

                    //Label13.Visible = true;
                    c = Convert.ToInt32(Label3.Text);
                    c += 1;
                    Label3.Text = c.ToString();
                    //int b = 0;
                    //Label7.Text = b.ToString();
                    Button1_Click1(1, e);

                }

            }
         
    }


 
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        SqlDataAdapter adp = new SqlDataAdapter("select question,opa,opb,opc,opd,rightop from question where testcode='" + testval + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "question");
        SqlCommandBuilder bld = new SqlCommandBuilder(adp);
        f = Convert.ToInt32(Label11.Text);
       
        y = Convert.ToInt32(ds.Tables["question"].Rows[f][5]);
       
       

        if (f == 0)
        {
            score = scorecal(f, y);
            g = Convert.ToInt32(Label18.Text);
            Label18.Text = score.ToString();
        }
        if (f == 1)
        {
            score = scorecal(f, y);
            g = Convert.ToInt32(Label19.Text);
            Label19.Text = score.ToString();

        }
        if (f == 2)
        {
            score = scorecal(f, y);
            g = Convert.ToInt32(Label20.Text);
            Label20.Text = score.ToString();

        }
        if (f == 3)
        {
            score = scorecal(f, y);
            g = Convert.ToInt32(Label21.Text);
            Label21.Text = score.ToString();

        }
        if (f == 4)
        {
            score = scorecal(f, y);
            g = Convert.ToInt32(Label22.Text);
            Label22.Text = score.ToString();

        }
    
    
    
    
    }
    private void ques(int x)
    {

        if (RadioButton1.Checked == true || RadioButton2.Checked == true || RadioButton3.Checked == true || RadioButton4.Checked == true)
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }

        SqlConnection con = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        SqlDataAdapter adp = new SqlDataAdapter("select qno,question,opa,opb,opc,opd,rightop from question where testcode='" + testval + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "question");
        SqlCommandBuilder bld = new SqlCommandBuilder(adp);
        Label1.Text = (ds.Tables["question"].Rows[x][0]).ToString();
        Label2.Text = (ds.Tables["question"].Rows[x][1]).ToString();

        RadioButton1.Text = (ds.Tables["question"].Rows[x][2]).ToString();
        RadioButton2.Text = (ds.Tables["question"].Rows[x][3]).ToString();
        RadioButton3.Text = (ds.Tables["question"].Rows[x][4]).ToString();
        RadioButton4.Text = (ds.Tables["question"].Rows[x][5]).ToString();
        Label11.Text = x.ToString();

    }
    private int scorecal(int f, int y)
    {
        if (RadioButton1.Checked == false && RadioButton2.Checked == false && RadioButton3.Checked == false && RadioButton4.Checked == false)

            Label23.Visible = true;

        else
        {
            Label23.Visible = false;
            if (y == 1)
            {
                if (RadioButton1.Checked == true)
                {
                    score += 3;

                }

                else
                {
                    if (RadioButton2.Checked == true || RadioButton3.Checked == true || RadioButton4.Checked == true)
                    {
                        score -= 1;
                    }
                }


            }


            if (y == 2)
            {
                if (RadioButton2.Checked == true)
                {
                    score += 3;

                }

                else
                {
                    if (RadioButton1.Checked == true || RadioButton3.Checked == true || RadioButton4.Checked == true)
                    {
                        score -= 1;
                    }
                }



            }
            if (y == 3)
            {
                if (RadioButton3.Checked == true)
                {
                    score += 3;

                }

                else
                {
                    if (RadioButton1.Checked == true || RadioButton2.Checked == true || RadioButton4.Checked == true)
                    {
                        score -= 1;
                    }
                }



            }

            if (y == 4)
            {
                if (RadioButton4.Checked == true)
                {
                    score += 3;

                }

                else
                {
                    if (RadioButton1.Checked == true || RadioButton2.Checked == true || RadioButton3.Checked == true)
                    {
                        score -= 1;
                    }
                }

              }
            if (f < 4)
            {
                ques(f + 1);
            }


        }

        return score;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true || RadioButton2.Checked == true || RadioButton3.Checked == true || RadioButton4.Checked == true)
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }
        x = Convert.ToInt32(Label11.Text);
        if (x != 0)
        {

            SqlConnection con = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
            SqlDataAdapter adp = new SqlDataAdapter("select qno,question,opa,opb,opc,opd,rightop from question where testcode='" + testval + "'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "question");
            SqlCommandBuilder bld = new SqlCommandBuilder(adp);
            Label1.Text = (ds.Tables["question"].Rows[x - 1][0]).ToString();
            Label2.Text = (ds.Tables["question"].Rows[x - 1][1]).ToString();

            RadioButton1.Text = (ds.Tables["question"].Rows[x - 1][2]).ToString();
            RadioButton2.Text = (ds.Tables["question"].Rows[x - 1][3]).ToString();
            RadioButton3.Text = (ds.Tables["question"].Rows[x - 1][4]).ToString();
            RadioButton4.Text = (ds.Tables["question"].Rows[x - 1][5]).ToString();
            Label11.Text = (x - 1).ToString();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true || RadioButton2.Checked == true || RadioButton3.Checked == true || RadioButton4.Checked == true)
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }

        SqlConnection con = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        SqlDataAdapter adp = new SqlDataAdapter("select qno,question,opa,opb,opc,opd,rightop from question where testcode='" + testval + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "question");
        //SqlCommandBuilder bld = new SqlCommandBuilder(adp);


        x = Convert.ToInt32(Label11.Text);
        if (x != 4)
        {
            Label1.Text = (ds.Tables["question"].Rows[x + 1][0]).ToString();
            Label2.Text = (ds.Tables["question"].Rows[x + 1][1]).ToString();

            RadioButton1.Text = (ds.Tables["question"].Rows[x + 1][2]).ToString();
            RadioButton2.Text = (ds.Tables["question"].Rows[x + 1][3]).ToString();
            RadioButton3.Text = (ds.Tables["question"].Rows[x + 1][4]).ToString();
            RadioButton4.Text = (ds.Tables["question"].Rows[x + 1][5]).ToString();
            Label11.Text = (x + 1).ToString();
        }
    }

   
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Label10.Text) < 59)
        {

            a = Convert.ToInt32(Label10.Text);
            a += 1;
            Label10.Text = a.ToString();
            if (Convert.ToInt32(Label10.Text) > 9)
                Label9.Visible = false;


        }
        else
        {
            b = Convert.ToInt32(Label7.Text);
            b += 1;
            Label7.Text = b.ToString();
            Label10.Text = 0.ToString();
            Label9.Visible = true;
            if (Convert.ToInt32(Label7.Text) > 9)
                Label6.Visible = false;


        }
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        j = Convert.ToInt32(Label18.Text);
        k = Convert.ToInt32(Label19.Text);
        l = Convert.ToInt32(Label20.Text);
        i = Convert.ToInt32(Label21.Text);
        n = Convert.ToInt32(Label22.Text);
        m = j + k + l + i + n;
        Label16.Text = m.ToString();
        Image1.Visible = true;
        if (m <= 2)
        {
            Label14.Text = "Fail!!!";
            Label14.Visible = true;
           
        }

        else
        {
            Label14.Text = "Congratulations";
            Label14.Visible = true;
        }

        
        
        Label2.Visible = false;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;

        Button1.Visible = false;

        Button2.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        Label16.Visible = true;
        Label15.Visible = true;
        Label17.Visible = true;

        Label18.Visible = true;
        Label19.Visible = true;
        Label20.Visible = true;
        Label21.Visible = true;
        Label22.Visible = true;
        Label24.Visible = true;
        Label25.Visible = true;
        Label26.Visible = true;
        Label27.Visible = true;
        Label28.Visible = true;
        
        Label10.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label6.Visible = false;
        Label5.Visible = false;
        Label1.Visible = false;

       
            string comm = " insert into result values('" + m.ToString() + "','" + 1 + "','" + testval + "','" + usn + "')";
            //Label1.Visible = true;
            com = new SqlCommand(comm, cco);
            com.ExecuteNonQuery();

            cco.Close();
            LinkButton1.Visible = true;
        
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        j = Convert.ToInt32(Label18.Text);
        k = Convert.ToInt32(Label19.Text);
        l = Convert.ToInt32(Label20.Text);
        i = Convert.ToInt32(Label21.Text);
        n = Convert.ToInt32(Label22.Text);
        m = j + k + l + i + n;
        Label16.Text = m.ToString();
        Image1.Visible = true;
        if (m < 6)
        {
            Label14.Text = "Fail!!!";
            Label14.Visible = true;

        }

        else
        {
            Label14.Text = "Congratulations";
            Label14.Visible = true;
        }


        Label1.Visible = false;
        Label2.Visible = false;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;

        Button1.Visible = false;

        Button2.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        Label16.Visible = true;
        Label15.Visible = true;
        Label17.Visible = true;

        Label18.Visible = true;
        Label19.Visible = true;
        Label20.Visible = true;
        Label21.Visible = true;
        Label22.Visible = true;
        Label24.Visible = true;
        Label25.Visible = true;
        Label26.Visible = true;
        Label27.Visible = true;
        Label28.Visible = true;

        Label10.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label6.Visible = false;
        Label5.Visible = false;
        Label1.Visible = false;

        cco.Close();
        cco.Open();
        string command1 = "select *from result where usn='" + usn + "' and testcode ='" + testval + "'";
        com = new SqlCommand(command1, cco);
        SqlDataReader dr1 = com.ExecuteReader();
        if (!dr1.Read())
        {
            dr1.Close();
            string comm = " insert into result values('" + m.ToString() + "','" + 1 + "','" + testval + "','" + usn + "')";
            Label1.Visible = true;
            com = new SqlCommand(comm, cco);

            com.ExecuteNonQuery();
        }
        else
        {
            
        }


        
        //Response.Redirect("~/about.aspx");
        //cco.Close();
        LinkButton1.Visible = true;
    }
}
