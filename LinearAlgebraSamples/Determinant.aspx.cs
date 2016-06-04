using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinearAlgebraSamples
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DataTable dtMatrix1 = new DataTable();
        DataTable dtMatrix2 = new DataTable();
        DataTable dtMatrix3 = new DataTable();
        DataTable dtMatrix4 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            dtMatrix1.Columns.Add("", typeof(Int32));

            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));
            dtMatrix2.Columns.Add("", typeof(Int32));

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
            //

        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            pnl4.Visible = true;
            Panel3.Visible = false;
            btnShowAll.Visible = true;
            int lintCellA1 = Convert.ToInt32(TextBox1.Text);
            int lintCellA2 = Convert.ToInt32(TextBox2.Text);
            int lintCellA3 = Convert.ToInt32(TextBox7.Text);
            int lintCellA4 = Convert.ToInt32(TextBox3.Text);
            int lintCellA5 = Convert.ToInt32(TextBox4.Text);
            int lintCellA6 = Convert.ToInt32(TextBox8.Text);
            int lintCellA7 = Convert.ToInt32(TextBox5.Text);
            int lintCellA8 = Convert.ToInt32(TextBox6.Text);
            int lintCellA9 = Convert.ToInt32(TextBox9.Text);

            dtMatrix1.Rows.Add(lintCellA1);
            dtMatrix1.Rows.Add(lintCellA4);
            dtMatrix1.Rows.Add(lintCellA7);
            GridView1.DataSource = dtMatrix1;
            GridView1.DataBind();

            dtMatrix2.Rows.Add(lintCellA1, lintCellA2, lintCellA3, lintCellA1);
            dtMatrix2.Rows.Add(lintCellA4, lintCellA5, lintCellA6, lintCellA4);
            dtMatrix2.Rows.Add(lintCellA7, lintCellA8, lintCellA9, lintCellA7);
            GridView2.DataSource = dtMatrix2;
            GridView2.DataBind();

            dtMatrix3.Rows.Add(lintCellA2);
            dtMatrix3.Rows.Add(lintCellA5);
            dtMatrix3.Rows.Add(lintCellA8);
            GridView3.DataSource = dtMatrix3;
            GridView3.DataBind();

            dtMatrix4.Rows.Add(lintCellA1, lintCellA2, lintCellA3, lintCellA1, lintCellA2);
            dtMatrix4.Rows.Add(lintCellA4, lintCellA5, lintCellA6, lintCellA4, lintCellA5);
            dtMatrix4.Rows.Add(lintCellA7, lintCellA8, lintCellA9, lintCellA7, lintCellA8);
            GridView4.DataSource = dtMatrix4;
            GridView4.DataBind();

            GridView5.DataSource = dtMatrix4;
            GridView5.DataBind();
            GridView6.DataSource = dtMatrix4;
            GridView6.DataBind();
            GridView7.DataSource = dtMatrix4;
            GridView7.DataBind();

            string strdiag1 = lintCellA1.ToString() + "x" + lintCellA5.ToString() + "x" + lintCellA9.ToString();
            int lintdiag1 = lintCellA1 * lintCellA5 * lintCellA9;
            Label1.Text = "Diagnoal 1=" + strdiag1 + "= " + lintdiag1.ToString();

            string strdiag2 = lintCellA2.ToString() + "x" + lintCellA6.ToString() + "x" + lintCellA7.ToString();
            int lintdiag2 = lintCellA2 * lintCellA6 * lintCellA7;
            Label2.Text = "Diagnoal 2=" + strdiag2 + "= " + lintdiag2.ToString();

            string strdiag3 = lintCellA3.ToString() + "x" + lintCellA4.ToString() + "x" + lintCellA8.ToString();
            int lintdiag3 = lintCellA3 * lintCellA4 * lintCellA8;
            Label3.Text = "Diagnoal 3=" + strdiag3 + "= " + lintdiag3.ToString();

            Label4.Text = "Diagnoal Multiplication1=" + lintdiag1.ToString() + " " + lintdiag2.ToString() + " " + lintdiag3.ToString();

            GridView8.DataSource = dtMatrix4;
            GridView8.DataBind();
            GridView9.DataSource = dtMatrix4;
            GridView9.DataBind();
            GridView10.DataSource = dtMatrix4;
            GridView10.DataBind();

            string strdiag5 = lintCellA3.ToString() + "x" + lintCellA5.ToString() + "x" + lintCellA7.ToString();
            int lintdia5 = lintCellA3 * lintCellA5 * lintCellA7;
            Label5.Text = "Diagnoal 4=" + strdiag5 + "= " + lintdia5.ToString();

            string strdiag6 = lintCellA1.ToString() + "x" + lintCellA6.ToString() + "x" + lintCellA8.ToString();
            int lintdiag6 = lintCellA1 * lintCellA6 * lintCellA8;
            Label6.Text = "Diagnoal 5=" + strdiag6 + "= " + lintdiag6.ToString();

            string strdiag7 = lintCellA2.ToString() + "x" + lintCellA4.ToString() + "x" + lintCellA9.ToString();
            int lintdiag7 = lintCellA2 * lintCellA4 * lintCellA9;
            Label7.Text = "Diagnoal 6=" + strdiag3 + "= " + lintdiag7.ToString();

            Label8.Text = "Diagnoal Multiplication2=" + lintdia5.ToString() + " " + lintdiag6.ToString() + " " + lintdiag7.ToString();
            Label9.Text = "Det(A)=(Diagnoal Multiplication1)-(Diagnoal Multiplication2)";
            Label10.Text = "(" + lintdiag1.ToString() + "  " + lintdiag2.ToString() + "  " + lintdiag3.ToString() + ")-" + "(" + lintdia5.ToString() + "  " + lintdiag6.ToString() + "  " + lintdiag7.ToString() + ")";
            int lintdet = lintdiag1 + lintdiag2 + lintdiag3;
            int lintdet2 = lintdia5 + lintdiag6 + lintdiag7;
            int lintdetA = lintdet - lintdet2;
            Label13.Text = "Det(A)= (" + lintdet.ToString() + ") - (" + lintdet2.ToString() + ")";

            Label11.Text = "Det(A)= " + lintdetA.ToString();
            if (lintdetA != 0)
            {

                Label12.Text = "Determinant of matrix is not equal to Zero So we can find Inverse Matrix";
            }
            else
            {
                Label12.Text = "Determinant of matrix is  equal to Zero So we can not find Inverse Matrix";
            }


        }

        protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            pnl4.Visible = true;
            btnShowAll.Visible = false;
        }
        protected void GridView5_DataBound(object sender, EventArgs e)
        {
            for (int lintLoop = 0; lintLoop <= GridView5.Rows.Count - 1; lintLoop++)
            {
                if (lintLoop == 0)
                {
                    GridView5.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.Firebrick;
                }
                if (lintLoop == 1)
                {
                    GridView5.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.Firebrick;
                }
                if (lintLoop == 2)
                {
                    GridView5.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.Firebrick;
                }
            }
        }

        protected void GridView6_DataBound(object sender, EventArgs e)
        {
            for (int lintLoop = 0; lintLoop <= GridView6.Rows.Count - 1; lintLoop++)
            {
                if (lintLoop == 0)
                {
                    GridView6.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.Firebrick;
                }
                if (lintLoop == 1)
                {
                    GridView6.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.Firebrick;
                }
                if (lintLoop == 2)
                {
                    GridView6.Rows[lintLoop].Cells[3].BackColor = System.Drawing.Color.Firebrick;
                }
            }
        }

        protected void GridView7_DataBound(object sender, EventArgs e)
        {
            for (int lintLoop = 0; lintLoop <= GridView7.Rows.Count - 1; lintLoop++)
            {
                if (lintLoop == 0)
                {
                    GridView7.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.Firebrick;
                }
                if (lintLoop == 1)
                {
                    GridView7.Rows[lintLoop].Cells[3].BackColor = System.Drawing.Color.Firebrick;
                }
                if (lintLoop == 2)
                {
                    GridView7.Rows[lintLoop].Cells[4].BackColor = System.Drawing.Color.Firebrick;
                }
            }
        }

        protected void GridView8_DataBound(object sender, EventArgs e)
        {
            for (int lintLoop = 0; lintLoop <= GridView8.Rows.Count - 1; lintLoop++)
            {
                if (lintLoop == 0)
                {
                    GridView8.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.Green;
                }
                if (lintLoop == 1)
                {
                    GridView8.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.Green;
                }
                if (lintLoop == 2)
                {
                    GridView8.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.Green;
                }
            }
        }

        protected void GridView9_DataBound(object sender, EventArgs e)
        {
            for (int lintLoop = 0; lintLoop <= GridView9.Rows.Count - 1; lintLoop++)
            {
                if (lintLoop == 0)
                {
                    GridView9.Rows[lintLoop].Cells[3].BackColor = System.Drawing.Color.Green;
                }
                if (lintLoop == 1)
                {
                    GridView9.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.Green;
                }
                if (lintLoop == 2)
                {
                    GridView9.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.Green;
                }
            }
        }

        protected void GridView10_DataBound(object sender, EventArgs e)
        {
            for (int lintLoop = 0; lintLoop <= GridView10.Rows.Count - 1; lintLoop++)
            {
                if (lintLoop == 0)
                {
                    GridView10.Rows[lintLoop].Cells[4].BackColor = System.Drawing.Color.Green;
                }
                if (lintLoop == 1)
                {
                    GridView10.Rows[lintLoop].Cells[3].BackColor = System.Drawing.Color.Green;
                }
                if (lintLoop == 2)
                {
                    GridView10.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.Green;
                }
            }
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
            dtMatrix1.Rows.Clear();
            dtMatrix2.Rows.Clear();
            dtMatrix3.Rows.Clear();
            dtMatrix4.Rows.Clear();




        }
    }
}