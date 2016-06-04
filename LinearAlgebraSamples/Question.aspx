<%@ Page Title="Question" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="LinearAlgebraSamples.Question" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h1>
Please submit your Question
</h1>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<div>
<asp:TextBox ID="tbSummary" runat="server" placeholder="Summary" Width="770px"></asp:TextBox>
<br />
<br />
</div>
<div>
<asp:TextBox ID="tbDesc" runat="server" TextMode="MultiLine" placeholder="Description" Height="229px" Width="770px"></asp:TextBox>
<br />
<br />
</div>
<div>
<asp:Button ID="btnSubmit" runat="server" Text="Submit your question" OnClick="Button2_Click" Width="773px" />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
</div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbSummary" ErrorMessage="Please Enter the value for Summary" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbDesc" ErrorMessage="Please Enter the value for Description" SetFocusOnError="True" Display="None"></asp:RequiredFieldValidator>
</asp:Content>