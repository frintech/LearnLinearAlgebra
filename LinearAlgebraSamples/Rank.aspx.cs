using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinearAlgebraSamples
{
    public partial class Rank : System.Web.UI.Page
    {
        DataTable dtMatrix1 = new DataTable();
        DataTable dtMatrix2 = new DataTable();
        DataTable dtMatrix3 = new DataTable();
        DataTable dtMatrix4 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));

            dtMatrix3.Columns.Add("", typeof(Int32));
            dtMatrix3.Columns.Add("", typeof(Int32));
            dtMatrix3.Columns.Add("", typeof(Int32));
            dtMatrix3.Columns.Add("", typeof(Int32));

            dtMatrix4.Columns.Add("", typeof(Int32));
            dtMatrix4.Columns.Add("", typeof(Int32));
            dtMatrix4.Columns.Add("", typeof(Int32));
            dtMatrix4.Columns.Add("", typeof(Int32));
            dtMatrix4.Columns.Add("", typeof(Int32));
            if (Page.IsPostBack == false)
            {
                btnFind_Click(sender, e);
            }
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            int lintCellA1 = Convert.ToInt32(TextBox1.Text);
            int lintCellA2 = Convert.ToInt32(TextBox2.Text);
            int lintCellA3 = Convert.ToInt32(TextBox7.Text);
            int lintCellA4 = Convert.ToInt32(TextBox10.Text);
            int lintCellA5 = Convert.ToInt32(TextBox3.Text);
            int lintCellA6 = Convert.ToInt32(TextBox4.Text);
            int lintCellA7 = Convert.ToInt32(TextBox8.Text);
            int lintCellA8 = Convert.ToInt32(TextBox11.Text);
            int lintCellA9 = Convert.ToInt32(TextBox5.Text);
            int lintCellA10 = Convert.ToInt32(TextBox6.Text);
            int lintCellA11 = Convert.ToInt32(TextBox9.Text);
            int lintCellA12 = Convert.ToInt32(TextBox12.Text);

            dtMatrix2.Rows.Add(lintCellA1 - (2 * lintCellA5), lintCellA2 - (2 * lintCellA6), lintCellA3 - (2 * lintCellA7), lintCellA4 - (2 * lintCellA8));
            dtMatrix2.Rows.Add(lintCellA5, lintCellA6, lintCellA7, lintCellA8);
            dtMatrix2.Rows.Add(lintCellA9, lintCellA10, lintCellA11, lintCellA12);
            GridView1.DataSource = dtMatrix2;
            GridView1.DataBind();

            dtMatrix4.Rows.Add(lintCellA1 - (2 * lintCellA5), lintCellA2 - (2 * lintCellA6), lintCellA3 - (2 * lintCellA7), lintCellA4 - (2 * lintCellA8));
            dtMatrix4.Rows.Add(lintCellA5, lintCellA6, lintCellA7, lintCellA8);
            dtMatrix4.Rows.Add(lintCellA9 - (3 * lintCellA5), lintCellA10 - (3 * lintCellA6), lintCellA11 - (3 * lintCellA7), lintCellA12 - (3 * lintCellA8));
            GridView2.DataSource = dtMatrix4;
            GridView2.DataBind();

            dtMatrix3.Rows.Add(0, -1, -2, 1);
            dtMatrix3.Rows.Add(1, 0, 1, 3);
            dtMatrix3.Rows.Add(0, 0, 0, 0);
            GridView3.DataSource = dtMatrix3;
            GridView3.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;

            dtMatrix1.Rows.Clear();
            dtMatrix2.Rows.Clear();
            dtMatrix3.Rows.Clear();
            dtMatrix4.Rows.Clear();

        }
    }
}
