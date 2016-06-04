<%@ Page Title="Question" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestResults.aspx.cs" Inherits="LinearAlgebraSamples.TestResults" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <h2>Quiz Test history Results</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
          <Columns>
	<asp:BoundField  DataField="TestNo" HeaderText="Test No" />
	<asp:BoundField  DataField="Score" HeaderText="Score" />
     <asp:BoundField  DataField="Test_Date" HeaderText="Test Taken DateTime" />
  </Columns>
    </asp:GridView>

</asp:Content>