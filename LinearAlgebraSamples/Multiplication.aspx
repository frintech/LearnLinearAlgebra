<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Multiplication.aspx.cs" Inherits="LinearAlgebraSamples.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2> Matrix Multiplication 3x3</h2>
<table>
<tr>
<td>
<p>Enter Matrix 1</p>
<asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Width="184px">
<asp:TextBox ID="TextBox1" runat="server" Width="40px" TextMode="Number">2</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="40px">1</asp:TextBox>
<br />
<br />
<asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="40px">3</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="40px">4</asp:TextBox>
&nbsp;<br />
<br />
<asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Width="40px">5</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox6" runat="server" TextMode="Number" Width="40px">6</asp:TextBox>
</asp:Panel>
</td>
<td>
</td>
<td>
&nbsp;</td>
<td style="width: 587px">
<p>Enter Matrix 2</p>
<asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" Width="362px">
<asp:TextBox ID="TextBox7" TextMode="Number" runat="server" Width="40px">1</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox8" TextMode="Number" runat="server" Width="40px">3</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox13" TextMode="Number" runat="server" Width="40px">6</asp:TextBox>
<br />
<br />
<asp:TextBox ID="TextBox9" TextMode="Number" runat="server" Width="40px">2</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox10" TextMode="Number" runat="server" Width="40px">4</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox12" TextMode="Number" runat="server" Width="40px">5</asp:TextBox>
</asp:Panel>
</td>
</tr>
</table>
<asp:Button ID="btnFind" runat="server" Text="Find Answer" OnClick="btnFind_Click" />
<asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
    <asp:Button ID="btnShowAll" runat="server" Text="Show All Steps" Visible="false" OnClick="btnShowAll_Click" />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

<asp:Panel ID="Panel3" runat="server" Visible="false">
<h4>Step 1</h4>
<p>
Count the No of Rows and no of Columns from Matrix 1 <br />
No of Rows from Matrix 1=3<br />
No of Columns from Matrix 1=2<br />
<b>Order of Matrix 1=3x2</b> <br />
Count the No of Rows and no of Columns from Matrix 2 <br />
No of Rows from Matrix 2=2<br />
No of Columns from Matrix 2=3<br />
<b>Order of Matrix 2=2x3</b> <br />
</p>
<h4>step2</h4>

     <div class="color-box">
                <div class="shadow">                    
                    <div class="tip-box">
                        <p><strong>Rule:</strong>No of Columns from Matrix 1 should be equal to No of Rows from Matrix 2 then only we can do multiplication</p>
                    </div>
                </div>
            </div>
 <br />
    <p>
In this Example are same we can do multiplication <br />
No of Columns from Matrix 1=2 <br />
No of Rows from Matrix 2=2 <br />
Both are same we can do multiplication <br />
</p>
<h4>step3</h4>
     <div class="color-box">
                <div class="shadow">                    
                    <div class="tip-box">
                        <p><strong>Rule:</strong>Size of Final matrix = No of Rows from Matrix 1 x No of Column from Matrix 2</p>
                    </div>
                </div>
            </div>
 <br />
    <p>
In this Example 
No of Rows from Matrix 1 =3 <br />
No of Columns from Matrix 2 =3 <br />
Size of Matrix=3x 3=9 <br />
Size of Matrix is =9 <br />
</p>
<br />
<p>Matrix 1</p>
<asp:GridView ID="GridView1" runat="server" ShowHeader="False"></asp:GridView>
<br />
<p>Matrix 2</p>
<asp:GridView ID="GridView2" runat="server" ShowHeader="False"></asp:GridView>
<br />
<h4>step5</h4>
<p>Matrix 1</p>
<asp:GridView ID="GridView3" runat="server" ShowHeader="False"></asp:GridView>
<br />
<p>Matrix 2</p>
<asp:GridView ID="GridView4" runat="server" ShowHeader="False"></asp:GridView>
<br />
<h4>step6</h4>
<%--<asp:TextBox ID="txtVariables" runat="server" Height="212px" TextMode="MultiLine" Width="549px"></asp:TextBox>--%>
    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
<br />
<h4>step7</h4>
<asp:GridView ID="GridView5" runat="server" ShowHeader="False"></asp:GridView>
<br />
<h4>step8</h4>
<asp:GridView ID="GridView6" runat="server" ShowHeader="False"></asp:GridView>
<br />
<h4>step9</h4>
<asp:GridView ID="GridView7" runat="server" ShowHeader="False"></asp:GridView>
<br />
</asp:Panel>
   <asp:Panel ID="pnl4" runat="server" Visible="false">
       <h4>step10</h4>
<p>Final matrix multiplication output</p>
<asp:GridView ID="GridView8" runat="server" ShowHeader="False"></asp:GridView>
<br />
<b>Size of the Matrix is 3x3</b>
<br />

       </asp:Panel>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter the value for Cell(1,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter the value for Cell(1,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter the value for Cell(2,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter the value for Cell(2,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter the value for Cell(3,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter the value for Cell(3,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter the value for Cell(1,1) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter the value for Cell(1,2) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox13" ErrorMessage="Please Enter the value for Cell(1,3) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please Enter the value for Cell(2,1) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please Enter the value for Cell(2,2) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox12" ErrorMessage="Please Enter the value for Cell(2,3) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
</asp:Content>