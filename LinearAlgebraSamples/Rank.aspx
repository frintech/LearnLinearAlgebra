<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="LinearAlgebraSamples.Rank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>RANK Matrix </h2>
    <div class="jumbotron">
        <h2>What is RANK Matrix ?</h2>
        <p>
            The rank of a matrix is the number of lines in the matrix (rows or columns) that are linearly independent.
A line is linearly dependent on another one or others when a linear combination between them can be established.
A line is linearly independent of another one or others when a linear combination between then cannot be established.
The rank of a matrix is symbolized as: rank(A) or r(A).
        </p>
    </div>
    <div class="jumbotron">
        <h2>Calculating the Rank of a Matrix </h2>
        <p>
            The Gaussian elimination method is used to calculate the rank of a matrix.

A line can be discarded if:
            <ul>
                <li>All the coefficients are zeros.</li>
                <li>There are two equal lines</li>
                <li>A line is proportional to another </li>
                <li>A line is a linear combination of others.</li>
            </ul>
        </p>
    </div>
    <table>
        <tr>
            <td style="width: 328px">
                <p>Calculate the rank of the following matrix: </p>
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Width="444px" Enabled="false">
                    <asp:TextBox ID="TextBox1" runat="server" Width="40px" TextMode="Number">2</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="40px" TextMode="Number">-1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" Width="40px" TextMode="Number">0</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server" Width="40px" TextMode="Number">7</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Width="40px" TextMode="Number">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="40px" TextMode="Number">0</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" Width="40px" TextMode="Number">1</asp:TextBox>
                    <asp:TextBox ID="TextBox11" runat="server" Width="40px" TextMode="Number">3</asp:TextBox><br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" Width="40px" TextMode="Number">3</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Width="40px" TextMode="Number">2</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" Width="40px" TextMode="Number">7</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" Width="40px" TextMode="Number">7</asp:TextBox>
                </asp:Panel>
            </td>
            <td></td>
            <td>&nbsp:</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="btnFind" runat="server" Text="Find Answer" OnClick="btnFind_Click" Visible="false" />
    <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnClear_Click" Visible="false" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <asp:Panel ID="Panel3" runat="server" Visible="false">
        <h4>Step 1</h4>
        <p>
            <ul>
                <li>R1 - 2xR2 </li>
            </ul>
            <br />
        </p>
        <asp:GridView ID="GridView1" runat="server" ShowHeader="False">
        </asp:GridView>
        <br />
        <h4>Step 2</h4>
        <p>
            <ul>
                <li>R3 - 3xR2 </li>
            </ul>
            <br />
        </p>
        <br />
        <asp:GridView ID="GridView2" runat="server" ShowHeader="False">
        </asp:GridView>
        <br />
        <h4>Step 3</h4>
        <p>r3 + 2r1</p>
        <asp:GridView ID="GridView3" runat="server" ShowHeader="False">
        </asp:GridView>
        <br />
        <p>Count of Non Zero rows from above matrix is 2</p>
        <p>Rank of (A)=2</p>
    </asp:Panel>
</asp:Content>
