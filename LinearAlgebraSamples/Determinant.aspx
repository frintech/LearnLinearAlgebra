<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Determinant.aspx.cs" Inherits="LinearAlgebraSamples.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Matrix DETERMINANT 3x3</h2>
    <table>
        <tr>
            <td style="width: 328px">
                <p>Enter Matrix 1</p>
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Width="317px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="40px" TextMode="Number">4</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="40px">-3</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Number" Width="40px">0</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="40px">2</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="40px">-1</asp:TextBox>
                    &nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Width="40px">2</asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Width="40px">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Number" Width="40px">5</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" TextMode="Number" Width="40px">7</asp:TextBox>
                </asp:Panel>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="btnFind" runat="server" Text="Find Answer" OnClick="btnFind_Click" />
    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
    <asp:Button ID="btnShowAll" runat="server" Text="Show All Steps" Visible="false" OnClick="btnShowAll_Click" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

    <asp:Panel ID="Panel3" runat="server" Visible="false">
        <h4>Step 1</h4>
        <p>
            <ul>
                <li>No of Rows of this Matrix=3 </li>
                <li>No of Column of this Matrix=3 </li>
                <li>Order of Matrix is 3x3 </li>
            </ul>
            <p>
            </p>
         <div class="color-box">
                <div class="shadow">                    
                    <div class="tip-box">
                        <p><strong>Notes:</strong>Determinant is a special value that can be calculated from a square matrix which is used to calculate the inverse of a matrix. </p>
                    </div>
                </div>
            </div>
        <h4>Step 2</h4>
        <p>
            Copy the First Column and paste it to 4th column
            <br />
            Copy Second Column and paste it to 5th column in the matrix
        </p>
        <p>
        </p>
        <br />
        <p>
            First Column in the Matrix
        </p>
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
            Copy Second Column in the Matrix
        </p>
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
            Take only Diagonal members from Left to Right
        </p>
        <br />
        <asp:GridView ID="GridView5" runat="server" OnDataBound="GridView5_DataBound" OnRowDataBound="GridView5_RowDataBound" ShowHeader="False">
        </asp:GridView>
        <br />
        <p>
            Second diagonal
        </p>
        <br />
        <asp:GridView ID="GridView6" runat="server" OnDataBound="GridView6_DataBound" ShowHeader="False">
        </asp:GridView>
        <br />
        <p>
            Third diagnoal
        </p>
        <br />
        <asp:GridView ID="GridView7" runat="server" OnDataBound="GridView7_DataBound" ShowHeader="False">
        </asp:GridView>
        <br />
        <p>
        </p>
        <h4>Step4</h4>
        <p>
            Multiply the Diagonal Members from Left to Right
        </p>
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
            Take only Diagnoal members from Right to Left
        </p>
        <br />
        <asp:GridView ID="GridView8" runat="server" OnDataBound="GridView8_DataBound" ShowHeader="False">
        </asp:GridView>
        <br />
        <p>
            Second diagnoal
        </p>
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
            Multiply the Diagnoal Members from Right to Left
        </p>
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
       
    </asp:Panel>
         <asp:Panel ID="pnl4" runat="server" Visible="false">
              <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <br />
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
