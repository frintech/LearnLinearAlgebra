<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subtraction.aspx.cs" Inherits="LinearAlgebraSamples.Subtraction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link href="Content/Site.css" rel="stylesheet" />
    </header>
<h2> Matrix Subtraction</h2>
<table>
<tr>
<td>
<p>Enter Matrix 1</p>
<asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Width="184px">
<asp:TextBox ID="TextBox1" runat="server" Width="40px" TextMode="Number">1</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="40px">7</asp:TextBox>
<br />
<br />
<asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="40px">-5</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="40px">3</asp:TextBox>
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>
</td>
<td>
</td>
<td>
&nbsp;</td>
<td style="width: 587px">
<p>Enter Matrix 2</p>
<asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" Width="176px">
<asp:TextBox ID="TextBox5" TextMode="Number" runat="server" Width="40px">6</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox6" TextMode="Number" runat="server" Width="40px">-9</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
<asp:TextBox ID="TextBox7" TextMode="Number" runat="server" Width="40px">-3</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox8" TextMode="Number" runat="server" Width="40px">4</asp:TextBox>
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>

</td>
</tr>
</table>
<asp:Button ID="btnFind" runat="server" Text="Find Answer" OnClick="btnFind_Click" />
<asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
<asp:Button ID="btnShowAll" runat="server" Text="Show All Steps" Visible="false" OnClick="btnShowAll_Click" />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
<asp:Panel ID="Panel3" runat="server" Visible="false">
<h4>
step 1
</h4>

<p>
Subtract corresponding numbers.<br />
                The corresponding number of Row 1 Column 1 from Matrix 1 is Row 1 Column 1 of Matrix 2.<br />
               
             
           </p>
            <br />
    <div class="color-box">
                <div class="shadow">                    
                    <div class="tip-box">
                        <p><strong>Notes:</strong>While doing subtraction,  subtract any number in one of the matrices from the corresponding number in the other matrix.</p>
                    </div>
                </div>
            </div>
            <h4>Step 2</h4>
            <p>Matrix 1 - Matrix 2 =<br />         
                             	

            </p>
            <table border="1">
                <tr>
                    <td>
                         (Matrix 1 – [Row 1, Column1]) - (Matrix 2 – [Row1,Column1])
                    </td>
                    <td>
                      (Matrix 1 – [Row 2, Column1]) - (Matrix 2 – [Row2,Column1])  
                    </td>
                </tr>
                <tr>
                    <td>
                         (Matrix 1 – [Row 1, Column2]) - (Matrix 2 – [Row1,Column2])	
                    </td>
                    <td>
                     (Matrix 1 – [Row 2, Column2]) - (Matrix 2 – [Row2,Column2])
                    </td>
                </tr>
            </table>
       <div class="color-box">
                <div class="shadow">                    
                    <div class="tip-box">
                        <p><strong>Notes:</strong>Subtraction requires that the matrices be the same dimensions. you must begin and end with the same dimensions.</p>
                    </div>
                </div>
            </div>
             <h4>Step 3</h4>
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
              <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
              <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
              <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
             <br />
       
        <br />
    
            </asp:Panel>
        <asp:Panel ID="pnl4" runat="server" Visible="false">
       <h4>step4</h4>
            <p> Subtraction of the matrix</p>
         <asp:GridView ID="GridView1" runat="server" ShowHeader="False"></asp:GridView>
            </asp:Panel>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter the value for Cell(1,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter the value for Cell(1,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter the value for Cell(2,1) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter the value for Cell(2,2) for Matrix1" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter the value for Cell(1,1) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter the value for Cell(1,2) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter the value for Cell(2,1) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter the value for Cell(2,2) for Matrix2" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
</asp:Content>