using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinearAlgebraSamples
{
public partial class WebForm2 : System.Web.UI.Page
{
DataTable dtMatrix1 = new DataTable();
DataTable dtMatrix2 = new DataTable();
protected void Page_load(object sender, EventArgs e)
{
if (Page.IsPostBack == false)
{
btnFind_Click(sender, e);
}
}

protected void btnFind_Click(object sender, EventArgs e)
{
            Panel3.Visible = false;
            Panel4.Visible = true;
dtMatrix1.Columns.Add("", typeof(Int32));
dtMatrix1.Columns.Add("", typeof(Int32));

int lintCellA1 = Convert.ToInt32(TextBox1.Text);
int lintCellA2 = Convert.ToInt32(TextBox2.Text);
int lintCellA3 = Convert.ToInt32(TextBox3.Text);
int lintCellA4 = Convert.ToInt32(TextBox4.Text);

int lintCellB1 = Convert.ToInt32(TextBox5.Text);
int lintCellB2 = Convert.ToInt32(TextBox6.Text);
int lintCellB3 = Convert.ToInt32(TextBox7.Text);
int lintCellB4 = Convert.ToInt32(TextBox8.Text);

Label1.Text= "(Matrix 1 - [Row 1, Column1]) + (Matrix 2 - [Row1, Column1])=" + lintCellA1.ToString() + "+" + lintCellB1.ToString();
Label2.Text= "(Matrix 1 - [Row 1, Column2]) + (Matrix 2 - [Row1, Column2])=" + lintCellA2.ToString() + "+" + lintCellB2.ToString();
Label3.Text= "(Matrix 1 - [Row 2, Column1]) + (Matrix 2 - [Row2, Column1])=" + lintCellA3.ToString() + "+" + lintCellB3.ToString();
Label4.Text= "(Matrix 1 - [Row 1, Column2]) + (Matrix 2 - [Row1, Column2])=" + lintCellA4.ToString() + "+" + lintCellB4.ToString();

dtMatrix1.Rows.Add((lintCellA1+ lintCellB1), (lintCellA2 + lintCellB2));
dtMatrix1.Rows.Add((lintCellA3+ lintCellB3), (lintCellA4 + lintCellB4));

GridView1.DataSource = dtMatrix1;
GridView1.DataBind();
}

protected void btnClear_Click(object sender, EventArgs e)
{
Panel3.Visible = false;
            Panel4.Visible = false;
            TextBox1.Text = string.Empty;
TextBox2.Text = string.Empty;
TextBox3.Text = string.Empty;
TextBox4.Text = string.Empty;
TextBox5.Text = string.Empty;
TextBox6.Text = string.Empty;
TextBox7.Text = string.Empty;
TextBox8.Text = string.Empty;
dtMatrix1.Rows.Clear();
dtMatrix2.Rows.Clear();
}

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
            Panel3.Visible = true;
        }
    }
}