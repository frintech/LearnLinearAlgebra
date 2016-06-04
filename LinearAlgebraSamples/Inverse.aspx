<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InverseMatrix.aspx.cs" Inherits="LinearAlgebraSamples.InverseMatrix" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2> Find Inverse for 3x3 Matrix</h2>
<table>
<tr>
<td style="width: 328px">
<p>Enter Matrix 1</p>
<asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Width="317px">
<asp:TextBox ID="TextBox1" runat="server" Width="40px" TextMode="Number">1</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="40px">2</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox7" runat="server" TextMode="Number" Width="40px">3</asp:TextBox>
<br />
<br />
<asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="40px">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="40px">1</asp:TextBox>
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Width="40px">5</asp:TextBox>
&nbsp;&nbsp;<br />
<br />
<asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Width="40px">5</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox6" runat="server" TextMode="Number" Width="40px">6</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox9" runat="server" TextMode="Number" Width="40px">0</asp:TextBox>
</asp:Panel>

</td>
<td>
</td>
<td>
&nbsp;</td>
<td style="width: 587px">
&nbsp;</td>
</tr>
</table>
<asp:Button ID="btnFind" runat="server" Text="Find Answer" OnClick="btnFind_Click" />
<asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

<asp:Panel ID="Panel3" runat="server" Visible="false">
<h4>Step 1</h4>
<p>
<ul>
<li> No of Rows of this Matrix=3 </li>
<li> No of Column of this Matrix=3 </li>
<li> Order of Matrix is 3x3 </li>
</ul>
<p>
</p>
<h4>Step 2</h4>
<p>
Copy the First Column and paste it to 4th column <br />
Copy Second Column and paste it to 5th column in the matrix</p>
<p>
</p>
<br />
<p>
First Column in the Matrix</p>
<asp:GridView ID="GridView1" runat="server" ShowHeader="False">
</asp:GridView>
<br />
<p>
OverView of Matrix
</p>
<asp:GridView ID="GridView2" runat="server" ShowHeader="False">
</asp:GridView>
<br />
<p>
Copy Second Column in the Matrix</p>
<asp:GridView ID="GridView3" runat="server" ShowHeader="False">
</asp:GridView>
<br />
<p>
OverView of Matrix
</p>
<asp:GridView ID="GridView4" runat="server" ShowHeader="False">
</asp:GridView>
<br />
<h4>Step3</h4>
<p>
Take only Diagonal members from Left to Right</p>
<br />
<asp:GridView ID="GridView5" runat="server" OnDataBound="GridView5_DataBound" OnRowDataBound="GridView5_RowDataBound" ShowHeader="False">
</asp:GridView>
<br />
<p>
Second diagonal</p>
<br />
<asp:GridView ID="GridView6" runat="server" OnDataBound="GridView6_DataBound" ShowHeader="False">
</asp:GridView>
<br />
<p>
Third diagnoal</p>
<br />
<asp:GridView ID="GridView7" runat="server" OnDataBound="GridView7_DataBound" ShowHeader="False">
</asp:GridView>
<br />
<p>
</p>
<h4>Step4</h4>
<p>
Multiply the Diagonal Members from Left to Right</p>
<br />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
<br />
<h4>Step5</h4>
<p>
Take only Diagnoal members from Right to Left</p>
<br />
<asp:GridView ID="GridView8" runat="server" OnDataBound="GridView8_DataBound" OnRowDataBound="GridView8_RowDataBound" ShowHeader="False">
</asp:GridView>
<br />
<p>
Second diagnoal</p>
<asp:GridView ID="GridView9" runat="server" OnDataBound="GridView9_DataBound" ShowHeader="False">
</asp:GridView>
<br />
<p>
Third diagnoal
<p>
<asp:GridView ID="GridView10" runat="server" OnDataBound="GridView10_DataBound" ShowHeader="False">
</asp:GridView>
<br />
</p>
<h4>Step4</h4>
<p>
Multiply the Diagnoal Members from Right to Left</P>
<br />
<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
<br />
<br />
<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
<br />
<br />
<br />
<h4>Step5</h4>
<p>
Find the determinant of each of the 2x2 minor matrices.
</p>
<br />
<asp:GridView ID="GridView11" runat="server" ShowHeader="False">
</asp:GridView>
<br />
<p>
The step is to create a &quot;Matrix of Minors&quot;. This step has the most calculations:</p>
<table border="1" width="50%">
<tr>
<td>M(11)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView12" runat="server" OnDataBound="GridView12_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView13" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label14" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(12)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView14" runat="server" OnDataBound="GridView14_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView15" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label15" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(13)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView16" runat="server" OnDataBound="GridView16_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView17" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label16" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(21)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView18" runat="server" OnDataBound="GridView18_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView19" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label17" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(22)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView20" runat="server" OnDataBound="GridView20_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView21" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label18" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(23)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView22" runat="server" OnDataBound="GridView22_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView23" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label19" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(31)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView24" runat="server" OnDataBound="GridView24_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView25" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label20" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(32)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView26" runat="server" OnDataBound="GridView26_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView27" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label21" runat="server" Text=""></asp:Label>
</td>
</tr>
<tr>
<td>M(33)</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView28" runat="server" OnDataBound="GridView28_DataBound" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:GridView ID="GridView29" runat="server" ShowHeader="False">
</asp:GridView>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>
<asp:Label ID="Label22" runat="server" Text=""></asp:Label>
</td>
</tr>
</table>
<br />
<asp:gridView ID="GridView30" runat="server" ShowHeader="False">
</asp:GridView>
<h4>Step 6</h4>
<p>Matrix of Cofactors</p><br />
<p>This is easy! Just apply a "checkerboard" of minuses to the "Matrix of Minors". In other words, we need to change the sign of alternate cells, like this:</p>
<br />
<table>
<tr>
<td> <asp:GridView ID="GridView31" runat="server" ShowHeader="False">
</asp:GridView></td>
<td> <asp:GridView ID="GridView32" runat="server" ShowHeader="False">
</asp:GridView></td>
<td> <asp:GridView ID="GridView33" runat="server" ShowHeader="False">
</asp:GridView></td>
</tr>
</table>
<br />
<h4>Step 7</h4>
<p>Adjoint</p><br />
<p>Now "Transpose" all elements of the previous matrix... in other words swap their positions over the diagonal (the diagonal stays the same):</p><br />
<br />
<asp:GridView ID="GridView34" runat="server" ShowHeader="False">
</asp:GridView>
<br />
<h4>Step 8</h4>
<p>Multiply by 1/Determinant</p>
<br />
<p>Inverse of Matrix A=(1/|Det(A)|)*[N]</p>
<br />
<p>Inverse of Matrix :</p>
<br />
<asp:GridView ID="GridView35" runat="server" ShowHeader="False">
</asp:GridView>
<br />
<b><p>Inverse of Matrix :</p></b>
<asp:GridView ID="GridView36" runat="server" ShowHeader="False">
</asp:GridView>
</asp:Panel>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter the value for Cell(1,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter the value for Cell(1,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter the value for Cell(2,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter the value for Cell(2,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter the value for Cell(3,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter the value for Cell(3,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter the value for Cell(1,3) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter the value for Cell(2,3) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please Enter the value for Cell(3,3) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
</asp:Content>
