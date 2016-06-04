using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinearAlgebraSamples
{
public partial class InverseMatrix : System.Web.UI.Page
{
DataTable dtMatrix1 = new DataTable();
DataTable dtMatrix2 = new DataTable();
DataTable dtMatrix3 = new DataTable();
DataTable dtMatrix4 = new DataTable();
DataTable dtMatrix6 = new DataTable();
DataTable dtMatrix7 = new DataTable();
DataTable dtMatrix8 = new DataTable();
DataTable dtMatrix9 = new DataTable();
DataTable dtMatrix10 = new DataTable();
DataTable dtMatrix11 = new DataTable();
DataTable dtMatrix12 = new DataTable();
DataTable dtMatrix13 = new DataTable();
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

dtMatrix6.Columns.Add("", typeof(Int32));
dtMatrix6.Columns.Add("", typeof(Int32));
dtMatrix6.Columns.Add("", typeof(Int32));

dtMatrix7.Columns.Add("", typeof(Int32));
dtMatrix7.Columns.Add("", typeof(Int32));

dtMatrix8.Columns.Add("", typeof(Int32));
dtMatrix8.Columns.Add("", typeof(Int32));
dtMatrix8.Columns.Add("", typeof(Int32));

                dtMatrix9.Columns.Add("", typeof(string));
                dtMatrix9.Columns.Add("", typeof(string));
                dtMatrix9.Columns.Add("", typeof(string));

dtMatrix10.Columns.Add("", typeof(Int32));
dtMatrix10.Columns.Add("", typeof(Int32));
dtMatrix10.Columns.Add("", typeof(Int32));

dtMatrix11.Columns.Add("", typeof(Int32));
dtMatrix11.Columns.Add("", typeof(Int32));
dtMatrix11.Columns.Add("", typeof(Int32));


                dtMatrix12.Columns.Add("", typeof(float));
                dtMatrix12.Columns.Add("", typeof(float));
                dtMatrix12.Columns.Add("", typeof(float));

                dtMatrix13.Columns.Add("", typeof(string));
                dtMatrix13.Columns.Add("", typeof(string));
                dtMatrix13.Columns.Add("", typeof(string));
            if(Page.IsPostBack==false)
            {
                btnFind_Click(sender, e);
            }
               //

        }

protected void btnFind_Click(object sender, EventArgs e)
{
Panel3.Visible = true;
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
Label10.Text = "("+ lintdiag1.ToString() +"  "+ lintdiag2.ToString() + "  " + lintdiag3.ToString() + ")-"+"("+ lintdia5.ToString() + "  " + lintdiag6.ToString() + "  " + lintdiag7.ToString()+")";
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

dtMatrix6.Rows.Add(lintCellA1, lintCellA2, lintCellA3);
dtMatrix6.Rows.Add(lintCellA4, lintCellA5, lintCellA6);
dtMatrix6.Rows.Add(lintCellA7, lintCellA8, lintCellA9);
GridView11.DataSource = dtMatrix6;
GridView11.DataBind();

GridView12.DataSource = dtMatrix6;
GridView12.DataBind();

dtMatrix7.Rows.Clear();

dtMatrix7.Rows.Add(lintCellA5, lintCellA6);
dtMatrix7.Rows.Add(lintCellA8, lintCellA9);
GridView13.DataSource = dtMatrix7;
GridView13.DataBind();

int lintM11 = lintCellA5 * lintCellA9 - lintCellA8 * lintCellA6;
string strM11 = "M(11)= ad-bc" + "<br>" + "M(11) ="+ lintCellA5.ToString() + "x" + lintCellA9.ToString() + "-" + lintCellA8.ToString() + "x" + lintCellA6.ToString() + "<br>" + "M(11) ="+ lintM11.ToString() + "<br>";
Label14.Text = strM11;

dtMatrix7.Rows.Clear();
GridView14.DataSource = dtMatrix6;
GridView14.DataBind();

dtMatrix7.Rows.Add(lintCellA4, lintCellA6);
dtMatrix7.Rows.Add(lintCellA7, lintCellA9);
GridView15.DataSource = dtMatrix7;
GridView15.DataBind();

int lintM12 = lintCellA4 * lintCellA9 - lintCellA6 * lintCellA7;
string strM12 = "M(12)= ad-bc" + "<br>" + "M(12) =" + lintCellA4.ToString() + "x" + lintCellA9.ToString() + "-" + lintCellA6.ToString() + "x" + lintCellA7.ToString() + "<br>" + "M(12) ="+ lintM12.ToString() + "<br>";
Label15.Text = strM12;

dtMatrix7.Rows.Clear();
GridView16.DataSource = dtMatrix6;
GridView16.DataBind();

dtMatrix7.Rows.Add(lintCellA4, lintCellA5);
dtMatrix7.Rows.Add(lintCellA7, lintCellA8);
GridView17.DataSource = dtMatrix7;
GridView17.DataBind();

int lintM13 = lintCellA4 * lintCellA8 - lintCellA5 * lintCellA7;
string strM13 = "M(13)= ad-bc" + "<br>" + "M(13) =" + lintCellA4.ToString() + "x" + lintCellA8.ToString() + "-" + lintCellA5.ToString() + "x" + lintCellA7.ToString() + "<br>" + "M(13) ="+ lintM13.ToString() + "<br>";
Label16.Text = strM13;

dtMatrix7.Rows.Clear();
GridView18.DataSource = dtMatrix6;
GridView18.DataBind();

dtMatrix7.Rows.Add(lintCellA2, lintCellA3);
dtMatrix7.Rows.Add(lintCellA8, lintCellA9);
GridView19.DataSource = dtMatrix7;
GridView19.DataBind();

int lintM21 = lintCellA2 * lintCellA9 - lintCellA3 * lintCellA8;
string strM21 = "M(21)= ad-bc" + "<br>" + "M(21) =" + lintCellA2.ToString() + "x" + lintCellA9.ToString() + "-" + lintCellA3.ToString() + "x" + lintCellA8.ToString() + "<br>" + "M(21) ="+ lintM13.ToString() + "<br>";
Label17.Text = strM21;

dtMatrix7.Rows.Clear();
GridView20.DataSource = dtMatrix6;
GridView20.DataBind();

dtMatrix7.Rows.Add(lintCellA1, lintCellA3);
dtMatrix7.Rows.Add(lintCellA7, lintCellA9);
GridView21.DataSource = dtMatrix7;
GridView21.DataBind();

int lintM22 = lintCellA1 * lintCellA9 - lintCellA3 * lintCellA7;
string strM22 = "M(22)= ad-bc" + "<br>" + "M(22) =" + lintCellA1.ToString() + "x" + lintCellA9.ToString() + "-" + lintCellA3.ToString() + "x" + lintCellA7.ToString() + "<br>" + "M(22) ="+ lintM22.ToString() + "<br>";
Label18.Text = strM22;

dtMatrix7.Rows.Clear();
GridView22.DataSource = dtMatrix6;
GridView22.DataBind();

dtMatrix7.Rows.Add(lintCellA1, lintCellA2);
dtMatrix7.Rows.Add(lintCellA7, lintCellA8);
GridView23.DataSource = dtMatrix7;
GridView23.DataBind();

int lintM23 = lintCellA1 * lintCellA8 - lintCellA2 * lintCellA7;
string strM23 = "M(23)= ad-bc" + "<br>" + "M(23) =" + lintCellA1.ToString() + "x" + lintCellA8.ToString() + "-" + lintCellA2.ToString() + "x" + lintCellA7.ToString() + "<br>" + "M(23) ="+ lintM23.ToString() + "<br>";
Label19.Text = strM23;

dtMatrix7.Rows.Clear();
GridView24.DataSource = dtMatrix6;
GridView24.DataBind();


            dtMatrix7.Rows.Add(lintCellA2, lintCellA3);
            dtMatrix7.Rows.Add(lintCellA5, lintCellA6);
            GridView25.DataSource = dtMatrix7;
            GridView25.DataBind();

int lintM31 = lintCellA2 * lintCellA6 - lintCellA3 * lintCellA5;
string strM31 = "M(31)= ad-bc" + "<br>" + "M(31) =" + lintCellA2.ToString() + "x" + lintCellA6.ToString() + "-" + lintCellA3.ToString() + "x" + lintCellA5.ToString() + "<br>" + "M(31) ="+ lintM31.ToString() + "<br>";
Label20.Text = strM31;

dtMatrix7.Rows.Clear();
GridView26.DataSource = dtMatrix6;
GridView26.DataBind();

dtMatrix7.Rows.Add(lintCellA1, lintCellA3);
dtMatrix7.Rows.Add(lintCellA4, lintCellA6);
GridView27.DataSource = dtMatrix7;
GridView27.DataBind();

int lintM32 = lintCellA1 * lintCellA6 - lintCellA3 * lintCellA4;
string strM32 = "M(32)= ad-bc" + "<br>" + "M(32) =" + lintCellA1.ToString() + "x" + lintCellA6.ToString() + "-" + lintCellA3.ToString() + "x" + lintCellA4.ToString() + "<br>" + "M(32) ="+ lintM32.ToString() + "<br>";
Label21.Text = strM32;

dtMatrix7.Rows.Clear();
GridView28.DataSource = dtMatrix6;
GridView28.DataBind();

dtMatrix7.Rows.Add(lintCellA1, lintCellA2);
dtMatrix7.Rows.Add(lintCellA4, lintCellA5);
GridView29.DataSource = dtMatrix7;
GridView29.DataBind();

int lintM33 = lintCellA1 * lintCellA5 - lintCellA2 * lintCellA4;
string strM33 = "M(33)= ad-bc" + "<br>" + "M(33) =" + lintCellA1.ToString() + "x" + lintCellA5.ToString() + "-" + lintCellA2.ToString() + "x" + lintCellA4.ToString() + "<br>" + "M(33) ="+ lintM33.ToString() + "<br>";
Label22.Text = strM33;

dtMatrix8.Rows.Add(lintM11, lintM12, lintM13);
dtMatrix8.Rows.Add(lintM21, lintM22, lintM23);
dtMatrix8.Rows.Add(lintM31, lintM32, lintM33);
GridView30.DataSource = dtMatrix8;
GridView30.DataBind();

GridView31.DataSource = dtMatrix8;
GridView31.DataBind();

dtMatrix9.Rows.Add("+", "-", "+");
dtMatrix9.Rows.Add("-", "+", "-");
dtMatrix9.Rows.Add("+", "-", "+");
GridView32.DataSource = dtMatrix9;
GridView32.DataBind();

int lintAdjM11 = lintM11 * 1;
int lintAdjM12 = lintM12 * -1;
int lintAdjM13 = lintM13 * 1;
int lintAdjM21 = lintM21 * -1;
int lintAdjM22 = lintM22 * 1;
int lintAdjM23 = lintM23 * -1;
int lintAdjM31 = lintM31 * 1;
int lintAdjM32 = lintM32 * -1;
int lintAdjM33 = lintM33 * 1;

dtMatrix10.Rows.Add(lintAdjM11, lintAdjM12, lintAdjM13);
dtMatrix10.Rows.Add(lintAdjM21, lintAdjM22, lintAdjM23);
dtMatrix10.Rows.Add(lintAdjM31, lintAdjM32, lintAdjM33);
GridView33.DataSource = dtMatrix10;
GridView33.DataBind();

dtMatrix11.Rows.Add(lintAdjM11, lintAdjM21, lintAdjM31);
dtMatrix11.Rows.Add(lintAdjM12, lintAdjM22, lintAdjM32);
dtMatrix11.Rows.Add(lintAdjM13, lintAdjM23, lintAdjM33);
GridView34.DataSource = dtMatrix11;
GridView34.DataBind();
double lintAdj = 1/ (double)lintdetA;

dtMatrix13.Rows.Add(lintAdjM11.ToString() + "*1/" + lintdetA.ToString(), lintAdjM21.ToString() + "*1/" + lintdetA.ToString(), lintAdjM31.ToString() + "*1/" + lintdetA.ToString());
dtMatrix13.Rows.Add(lintAdjM12.ToString() + "*1/" + lintdetA.ToString(), lintAdjM22.ToString() + "*1/" + lintdetA.ToString(), lintAdjM32.ToString() + "*1/" + lintdetA.ToString());
dtMatrix13.Rows.Add(lintAdjM13.ToString() + "*1/" + lintdetA.ToString(), lintAdjM23.ToString() + "*1/" + lintdetA.ToString(), lintAdjM33.ToString() + "*1/" + lintdetA.ToString());
GridView35.DataSource = dtMatrix13;
GridView35.DataBind();

dtMatrix12.Rows.Add(lintAdjM11* lintAdj, lintAdjM21* lintAdj, lintAdjM31* lintAdj);
dtMatrix12.Rows.Add(lintAdjM12* lintAdj, lintAdjM22* lintAdj, lintAdjM32* lintAdj);
dtMatrix12.Rows.Add(lintAdjM13* lintAdj, lintAdjM23* lintAdj, lintAdjM33* lintAdj);
GridView36.DataSource = dtMatrix12;
GridView36.DataBind();

}

protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
{

}

protected void GridView5_DataBound(object sender, EventArgs e)
{
for (int lintLoop =0; lintLoop <= GridView5.Rows.Count-1; lintLoop++)
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
for (int lintLoop =0; lintLoop <= GridView6.Rows.Count - 1; lintLoop++)
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
for (int lintLoop =0; lintLoop <= GridView7.Rows.Count - 1; lintLoop++)
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

protected void GridView12_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView12.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView12.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView12.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView12.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView12.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView12.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView14_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView14.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView14.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView14.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView14.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView14.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView14.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView16_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView16.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView16.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView16.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView16.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView16.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView16.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView18_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView18.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView18.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView18.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView18.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView18.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView18.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView20_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView20.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView20.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView20.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView20.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView20.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView20.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView22_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView22.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView22.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView22.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView22.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView22.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView22.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView24_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView24.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView24.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView24.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView24.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView24.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView24.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView26_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView26.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView26.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView26.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView26.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView26.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView26.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
}
}

protected void GridView28_DataBound(object sender, EventArgs e)
{
for (int lintLoop = 0; lintLoop <= GridView28.Rows.Count - 1; lintLoop++)
{
if (lintLoop == 0)
{
GridView28.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 1)
{
GridView28.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
if (lintLoop == 2)
{
GridView28.Rows[lintLoop].Cells[0].BackColor = System.Drawing.Color.DarkRed;
GridView28.Rows[lintLoop].Cells[1].BackColor = System.Drawing.Color.DarkRed;
GridView28.Rows[lintLoop].Cells[2].BackColor = System.Drawing.Color.DarkRed;
}
}
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

dtMatrix6.Rows.Clear();
dtMatrix7.Rows.Clear();
dtMatrix8.Rows.Clear();
dtMatrix9.Rows.Clear();
dtMatrix10.Rows.Clear();
dtMatrix11.Rows.Clear();

            dtMatrix12.Rows.Clear();
            dtMatrix13.Rows.Clear();
        }
    }
}