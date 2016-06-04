using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LinearAlgebraSamples
{

    public partial class WebForm1 : System.Web.UI.Page
    {

        DataTable dtMatrix1 = new DataTable();
        DataTable dtMatrix2 = new DataTable();

        DataTable dtMatrix3 = new DataTable();
        DataTable dtMatrix4 = new DataTable();

        DataTable dtMatrix5 = new DataTable();

        DataTable dtMatrix6 = new DataTable();

        DataTable dtMatrix7 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            dtMatrix1.Columns.Add("", typeof(Int32));
            dtMatrix1.Columns.Add("", typeof(Int32));

            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));

            dtMatrix3.Columns.Add("", typeof(string));
            dtMatrix3.Columns.Add("", typeof(string));

            dtMatrix4.Columns.Add("", typeof(string));
            dtMatrix4.Columns.Add("", typeof(string));
            dtMatrix4.Columns.Add("", typeof(string));

            dtMatrix5.Columns.Add("", typeof(string));
            dtMatrix5.Columns.Add("", typeof(string));
            dtMatrix5.Columns.Add("", typeof(string));

            dtMatrix6.Columns.Add("", typeof(string));
            dtMatrix6.Columns.Add("", typeof(string));
            dtMatrix6.Columns.Add("", typeof(string));

            dtMatrix7.Columns.Add("", typeof(int));
            dtMatrix7.Columns.Add("", typeof(int));
            dtMatrix7.Columns.Add("", typeof(int));
            if (Page.IsPostBack == false)
            {
                btnFind_Click(sender, e);
            }
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            pnl4.Visible = true;
            Panel3.Visible = false;
            btnShowAll.Visible = true;
            int lintCellA1 = Convert.ToInt32(TextBox1.Text);
            int lintCellA2 = Convert.ToInt32(TextBox2.Text);
            int lintCellA3 = Convert.ToInt32(TextBox3.Text);
            int lintCellA4 = Convert.ToInt32(TextBox4.Text);
            int lintCellA5 = Convert.ToInt32(TextBox5.Text);
            int lintCellA6 = Convert.ToInt32(TextBox6.Text);

            int lintCellB1 = Convert.ToInt32(TextBox7.Text);
            int lintCellB2 = Convert.ToInt32(TextBox8.Text);
            int lintCellB3 = Convert.ToInt32(TextBox13.Text);
            int lintCellB4 = Convert.ToInt32(TextBox9.Text);
            int lintCellB5 = Convert.ToInt32(TextBox10.Text);
            int lintCellB6 = Convert.ToInt32(TextBox12.Text);

            dtMatrix1.Rows.Add(lintCellA1, lintCellA2);
            dtMatrix1.Rows.Add(lintCellA3, lintCellA4);
            dtMatrix1.Rows.Add(lintCellA5, lintCellA6);

            dtMatrix2.Rows.Add(lintCellB1, lintCellB2, lintCellB3);
            dtMatrix2.Rows.Add(lintCellB4, lintCellB5, lintCellB6);

            dtMatrix3.Rows.Add("A1", "A2");
            dtMatrix3.Rows.Add("A3", "A4");
            dtMatrix3.Rows.Add("A5", "A6");

            dtMatrix4.Rows.Add("B1", "B2", "B3");
            dtMatrix4.Rows.Add("B4", "B5", "B6");

            GridView1.DataSource = dtMatrix1;
            GridView1.DataBind();

            GridView2.DataSource = dtMatrix2;
            GridView2.DataBind();

            GridView3.DataSource = dtMatrix3;
            GridView3.DataBind();

            GridView4.DataSource = dtMatrix4;
            GridView4.DataBind();
            string strResult = "In This example";
            strResult += "A1 =" + lintCellA1.ToString() + "<br>";
            strResult += "A2 =" + lintCellA2.ToString() + "<br>";
            strResult += "A3 =" + lintCellA3.ToString() + "<br>";
            strResult += "A4 =" + lintCellA4.ToString() + "<br>";
            strResult += "A5 =" + lintCellA5.ToString() + "<br>";
            strResult += "A6 =" + lintCellA6.ToString() + "<br>";

            strResult += "B1 =" + lintCellB1.ToString() + "<br>";
            strResult += "B2 =" + lintCellB2.ToString() + "<br>";
            strResult += "B3 =" + lintCellB3.ToString() + "<br>";
            strResult += "B4 =" + lintCellB4.ToString() + "<br>";
            strResult += "B5 =" + lintCellB5.ToString() + "<br>";
            strResult += "B6 =" + lintCellB6.ToString() + "<br>";

            Label12.Text = strResult;

            dtMatrix5.Rows.Add("A1xB1 + A2xB4", "A1xB2+A2xB5", "A1xB3+A2xB6");
            dtMatrix5.Rows.Add("A3xB1 + A4xB4", "A3xB2+A4xB5", "A3xB3+A4xB6");
            dtMatrix5.Rows.Add("A5xB1 + A6xB4", "A5xB2+A6xB5", "A5xB3+A6xB6");
            GridView5.DataSource = dtMatrix5;
            GridView5.DataBind();

            string lstrA11 = lintCellA1.ToString() + "x" + lintCellB1.ToString() + "+" + lintCellA2.ToString() + "x" + lintCellB4.ToString();
            string lstrA12 = lintCellA1.ToString() + "x" + lintCellB2.ToString() + "+" + lintCellA2.ToString() + "x" + lintCellB5.ToString();
            string lstrA13 = lintCellA1.ToString() + "x" + lintCellB3.ToString() + "+" + lintCellA2.ToString() + "x" + lintCellB6.ToString();

            string lstrA21 = lintCellA3.ToString() + "x" + lintCellB1.ToString() + "+" + lintCellA4.ToString() + "x" + lintCellB4.ToString();
            string lstrA22 = lintCellA3.ToString() + "x" + lintCellB2.ToString() + "+" + lintCellA4.ToString() + "x" + lintCellB5.ToString();
            string lstrA23 = lintCellA3.ToString() + "x" + lintCellB3.ToString() + "+" + lintCellA4.ToString() + "x" + lintCellB6.ToString();

            string lstrA31 = lintCellA5.ToString() + "x" + lintCellB1.ToString() + "+" + lintCellA6.ToString() + "x" + lintCellB4.ToString();
            string lstrA32 = lintCellA5.ToString() + "x" + lintCellB2.ToString() + "+" + lintCellA6.ToString() + "x" + lintCellB5.ToString();
            string lstrA33 = lintCellA5.ToString() + "x" + lintCellB3.ToString() + "+" + lintCellA6.ToString() + "x" + lintCellB6.ToString();

            dtMatrix6.Rows.Add(lstrA11, lstrA12, lstrA13);
            dtMatrix6.Rows.Add(lstrA21, lstrA22, lstrA23);
            dtMatrix6.Rows.Add(lstrA31, lstrA32, lstrA33);
            GridView6.DataSource = dtMatrix6;
            GridView6.DataBind();

            int lintResA11 = (lintCellA1 * lintCellB1) + (lintCellA2 * lintCellB4);
            int lintResA12 = (lintCellA1 * lintCellB2) + (lintCellA2 * lintCellB5);
            int lintResA13 = (lintCellA1 * lintCellB3) + (lintCellA2 * lintCellB6);

            int lintResA21 = (lintCellA3 * lintCellB1) + (lintCellA4 * lintCellB4);
            int lintResA22 = (lintCellA3 * lintCellB2) + (lintCellA4 * lintCellB5);
            int lintResA23 = (lintCellA3 * lintCellB3) + (lintCellA4 * lintCellB6);

            int lintResA31 = (lintCellA5 * lintCellB1) + (lintCellA6 * lintCellB4);
            int lintResA32 = (lintCellA5 * lintCellB2) + (lintCellA6 * lintCellB5);
            int lintResA33 = (lintCellA5 * lintCellB3) + (lintCellA6 * lintCellB6);

            dtMatrix7.Rows.Add(lintResA11, lintResA12, lintResA13);
            dtMatrix7.Rows.Add(lintResA21, lintResA22, lintResA23);
            dtMatrix7.Rows.Add(lintResA31, lintResA32, lintResA33);
            GridView7.DataSource = dtMatrix7;
            GridView7.DataBind();

            GridView8.DataSource = dtMatrix7;
            GridView8.DataBind();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            Panel3.Visible = false;
            pnl4.Visible = false;
            btnShowAll.Visible = false;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox13.Text = string.Empty;

            dtMatrix1.Rows.Clear();
            dtMatrix2.Rows.Clear();
            dtMatrix3.Rows.Clear();
            dtMatrix4.Rows.Clear();
            dtMatrix6.Rows.Clear();
            dtMatrix7.Rows.Clear();

        }
        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            pnl4.Visible = true;
            btnShowAll.Visible = false;
        }
    }
}