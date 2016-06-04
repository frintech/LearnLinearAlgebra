<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="LinearAlgebraSamples.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<head>
    <style>
        .Table
    {
        display: table;
    }
    .Title
    {
        display: table-caption;
        text-align: center;
        font-weight: bold;
        font-size: larger;
    }
    .Heading
    {
        display: table-row;
        font-weight: bold;
        text-align: center;
    }
    .Row
    {
        display: table-row;
    }
    .Cell
    {
        display: table-cell;
        border: solid;
        border-width: thin;
        padding-left: 5px;
        padding-right: 5px;
    }
    </style>
</head>--%>
    <br />
 <br />
    <br />
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <asp:Panel runat="server" ID="pnl1"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>What is entry (2,3) of the matrix A=</p>
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Width="317px">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Width="40px" TextMode="Number">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" TextMode="Number" Width="40px">2</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Number" Width="40px" ReadOnly="True">3</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" TextMode="Number" Width="40px">0</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" TextMode="Number" Width="40px">1</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Width="40px" ReadOnly="True">5</asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" TextMode="Number" Width="40px">5</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" TextMode="Number" Width="40px">6</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" ReadOnly="true" TextMode="Number" Width="40px">0</asp:TextBox>
                </asp:Panel>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">
              
            </td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
           <asp:ListItem> 3</asp:ListItem>
          <asp:ListItem> 4</asp:ListItem>
           <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
        </asp:RadioButtonList>
 
    <asp:Button ID="btnNext1" runat="server" Text="Next Question"  OnClick="btnNext1_Click"/>
        <asp:Label ID="Label1" runat="server" Visible="false" Text=""></asp:Label>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
       <asp:Panel runat="server" ID="Panel2"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>What is the size of the matrix A?</p>
                <asp:Panel ID="Panel3" runat="server" BorderStyle="Solid" Width="481px">
                    <asp:TextBox ID="TextBox10" runat="server" ReadOnly="true" Width="40px" TextMode="Number">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox11" runat="server" ReadOnly="true" TextMode="Number" Width="40px">2</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="Number" Width="40px" ReadOnly="True">3</asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox91" runat="server" TextMode="Number" Width="40px" ReadOnly="True">4</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox13" runat="server" ReadOnly="true" TextMode="Number" Width="40px">5</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox14" runat="server" ReadOnly="true" TextMode="Number" Width="40px">2</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox15" runat="server" TextMode="Number" Width="40px" ReadOnly="True">3</asp:TextBox>
                    &nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox92" runat="server" ReadOnly="true" TextMode="Number" Width="40px">8</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox16" runat="server" ReadOnly="true" TextMode="Number" Width="40px">9</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox17" runat="server" ReadOnly="true" TextMode="Number" Width="40px">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox18" runat="server" ReadOnly="true" TextMode="Number" Width="40px">3</asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox93" runat="server" ReadOnly="true" TextMode="Number" Width="40px">6</asp:TextBox>
                </asp:Panel>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>2×3</asp:ListItem>
            <asp:ListItem>3×2</asp:ListItem>
            <asp:ListItem>3×4</asp:ListItem>
            <asp:ListItem>4×3</asp:ListItem>
        </asp:RadioButtonList>
 <asp:Button ID="btnPrevious1" runat="server" Text="Previous Question"  OnClick="btnPrevious1_Click"/>
    <asp:Button ID="btnq2" runat="server" Text="Next Question"  OnClick="btnq2_Click"/>
    <asp:Label ID="Label2" runat="server" Visible="false" Text=""></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="RadioButtonList2" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>

      <asp:Panel runat="server" ID="Panel4"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>What is Addtion of Matrix</p>
               <asp:Panel ID="Panel5" runat="server" BorderStyle="Solid" Width="198px">
                    <asp:TextBox ID="TextBox19" runat="server" ReadOnly="true" Width="40px" TextMode="Number">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox20" runat="server" ReadOnly="true" TextMode="Number" Width="40px">4</asp:TextBox>
               
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox21" runat="server" ReadOnly="true" TextMode="Number" Width="40px">3</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox22" runat="server" ReadOnly="true" TextMode="Number" Width="40px">5</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                </asp:Panel>

            </td>
            <td>
                <asp:Panel ID="Panel20" runat="server" BorderStyle="Solid" Width="198px">
                    <asp:TextBox ID="TextBox94" runat="server" ReadOnly="true" Width="40px" TextMode="Number">3</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox95" runat="server" ReadOnly="true" TextMode="Number" Width="40px">6</asp:TextBox>
               
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox97" runat="server" ReadOnly="true" TextMode="Number" Width="40px">2</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox98" runat="server" ReadOnly="true" TextMode="Number" Width="40px">5</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList3" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>42</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>90</asp:ListItem>
        </asp:RadioButtonList>
 
   <asp:Button ID="btnPrev3" runat="server" Text="Previous Question"  OnClick="btnPrev3_Click"/>
    <asp:Button ID="btnq3" runat="server" Text="Next Question" OnClick="btnq3_Click" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="RadioButtonList3" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
      <asp:Panel runat="server" ID="Panel6"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>Calculate the rank of the following matrix:</p>
                <asp:Panel ID="Panel7" runat="server" BorderStyle="Solid" Width="317px">
                    <asp:TextBox ID="TextBox28" runat="server" ReadOnly="true" Width="40px" TextMode="Number">1</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox29" runat="server" ReadOnly="true" TextMode="Number" Width="40px">2</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox30" runat="server" TextMode="Number" Width="40px" ReadOnly="True">3</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox31" runat="server" ReadOnly="true" TextMode="Number" Width="40px">0</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox32" runat="server" ReadOnly="true" TextMode="Number" Width="40px">1</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox33" runat="server" TextMode="Number" Width="40px" ReadOnly="True">5</asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:TextBox ID="TextBox34" runat="server" ReadOnly="true" TextMode="Number" Width="40px">5</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox35" runat="server" ReadOnly="true" TextMode="Number" Width="40px">6</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox36" runat="server" ReadOnly="true" TextMode="Number" Width="40px">0</asp:TextBox>
                </asp:Panel>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList4" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
        </asp:RadioButtonList>
 <asp:Button ID="btnp6" runat="server" Text="Previous Question"  OnClick="btnq2_Click"/>
    <asp:Button ID="btnq6" runat="server" Text="Next Question"  OnClick="btnq6_Click"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="RadioButtonList4" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
      <asp:Panel runat="server" ID="Panel8"> 
   <table>
        <tr>
            <td style="width: 328px">
               <p>Farmer A had 4 ducks, 3 chickens and 2 cows while Farmer B had 9 cows, 4 pigs and 7 chickens. A matrix can be formed to represent the above data. Which one of the following would be a possible order of the matrix?</p>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList5" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>2 x 1</asp:ListItem>
            <asp:ListItem>2 x 2</asp:ListItem>
            <asp:ListItem>2 x 3</asp:ListItem>
            <asp:ListItem>2 x 4</asp:ListItem>
        </asp:RadioButtonList>
  <asp:Button ID="btnp8" runat="server" Text="Previous Question"  OnClick="btnq3_Click"/>
    <asp:Button ID="btnq8" runat="server" Text="Next Question"  OnClick="btnq8_Click"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="RadioButtonList5" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
      <asp:Panel runat="server" ID="Panel10"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>Which of the following is impossible?</p>


            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList6" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>Scalar Multiplication
</asp:ListItem>
            <asp:ListItem>Matrix Multiplication
</asp:ListItem>
            <asp:ListItem>Scalar Division
</asp:ListItem>
            <asp:ListItem>	
Matrix Division
</asp:ListItem>
        </asp:RadioButtonList>
   <asp:Button ID="btnP10" runat="server" Text="Previous Question"  OnClick="btnq6_Click"/>
    <asp:Button ID="btnq10" runat="server" Text="Next Question"  OnClick="btnq10_Click"/>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="RadioButtonList6" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
      <asp:Panel runat="server" ID="Panel12"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>What is an identity matrix and why is it called an identity matrix?</p> 	


            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList7" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>An identity matrix is a matrix with all diagonal entries as 1 and all non-diagonal entries as 0. It is called an identity matrix as it would give a null matrix as a result when multiplied by other matrix.</asp:ListItem>
            <asp:ListItem>An identity matrix is a matrix with all diagonal entries as 1 and all non-diagonal entries as 0. It is called an identity matrix as it would not change the original matrix when multiplied by it.</asp:ListItem>
            <asp:ListItem>An identity matrix is a matrix with all its entries as 0. It is called an identity matrix as it would give a null matrix as a result when multiplied by any other matrix.</asp:ListItem>
            <asp:ListItem>An identity matrix is a matrix with all its entries as 0. It is called an identity matrix as it would not change the original matrix when multiplied by it.</asp:ListItem>
        </asp:RadioButtonList>
   <asp:Button ID="btnP12" runat="server" Text="Previous Question"  OnClick="btnq8_Click"/>
    <asp:Button ID="btnq12" runat="server" Text="Next Question"  OnClick="btnq12_Click"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="RadioButtonList7" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
      <asp:Panel runat="server" ID="Panel14"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>Which of the following matrix operations is commutative?</p>


            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList8" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>Addition of Matrices
</asp:ListItem>
            <asp:ListItem>Subtraction of Matrices
</asp:ListItem>
            <asp:ListItem>Multiplication of Matrices
</asp:ListItem>
            <asp:ListItem>Division of Matrices
</asp:ListItem>
        </asp:RadioButtonList>
   <asp:Button ID="btnP14" runat="server" Text="Previous Question"  OnClick="btnq10_Click"/>
    <asp:Button ID="btnq14" runat="server" Text="Next Question"  OnClick="btnq14_Click"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="RadioButtonList8" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
      <asp:Panel runat="server" ID="Panel16"> 
   <table>
        <tr>
            <td style="width: 328px">
                <p>To find Matrix DETERMINANT 3x3</p>
                <asp:Panel ID="Panel17" runat="server" BorderStyle="Solid" Width="317px">
                    <asp:TextBox ID="TextBox73" runat="server" ReadOnly="true" Width="40px" TextMode="Number">10</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox74" runat="server" ReadOnly="true" TextMode="Number" Width="40px">-20</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox75" runat="server" TextMode="Number" Width="40px" ReadOnly="True">2</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox76" runat="server" ReadOnly="true" TextMode="Number" Width="40px">0</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox77" runat="server" ReadOnly="true" TextMode="Number" Width="40px">-5</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox78" runat="server" TextMode="Number" Width="40px" ReadOnly="True">2</asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:TextBox ID="TextBox79" runat="server" ReadOnly="true" TextMode="Number" Width="40px">11</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox80" runat="server" ReadOnly="true" TextMode="Number" Width="40px">12</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox81" runat="server" ReadOnly="true" TextMode="Number" Width="40px">-9</asp:TextBox>
                </asp:Panel>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList9" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>-120</asp:ListItem>
            <asp:ListItem>45</asp:ListItem>
            <asp:ListItem>120</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
        </asp:RadioButtonList>
    <asp:Button ID="btnP16" runat="server" Text="Previous Question"  OnClick="btnq12_Click"/>
    <asp:Button ID="btnq16" runat="server" Text="Next Question"  OnClick="btnq16_Click"/>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="RadioButtonList9" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
      <asp:Panel runat="server" ID="Panel18"> 
   <table>
        <tr>
            <td style="width: 446px">
                <p>What is entry (2,3)(2,3) of the matrix  A=</p>
                <asp:Panel ID="Panel19" runat="server" BorderStyle="Solid" Width="317px">
                    <asp:TextBox ID="TextBox82" runat="server" ReadOnly="true" Width="40px" TextMode="Number">-29</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox83" runat="server" ReadOnly="true" TextMode="Number" Width="40px">51</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox84" runat="server" TextMode="Number" Width="40px" ReadOnly="True">61</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox85" runat="server" ReadOnly="true" TextMode="Number" Width="40px">14</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox86" runat="server" ReadOnly="true" TextMode="Number" Width="40px">-32</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox87" runat="server" TextMode="Number" Width="40px" ReadOnly="True">25</asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:TextBox ID="TextBox88" runat="server" ReadOnly="true" TextMode="Number" Width="40px">52</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox89" runat="server" ReadOnly="true" TextMode="Number" Width="40px">35</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox90" runat="server" ReadOnly="true" TextMode="Number" Width="40px">42</asp:TextBox>
                </asp:Panel>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
        </tr>
       <tr>
            <td style="width: 446px">
                <p>Inverse Matrix of above is</p>
                <asp:Panel ID="Panel9" runat="server" BorderStyle="Solid" Width="510px">
                    <asp:TextBox ID="TextBox23" runat="server" ReadOnly="true" Width="101px" TextMode="Number">-0.009562306</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox24" runat="server" ReadOnly="true" TextMode="Number" Width="99px">-3.0165E-05</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox25" runat="server" TextMode="Number" Width="97px" ReadOnly="True">0.01390607</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox26" runat="server" ReadOnly="true" TextMode="Number" Width="99px">0.003068212</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox27" runat="server" ReadOnly="true" TextMode="Number" Width="102px">-0.01891777</asp:TextBox>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox37" runat="server" TextMode="Number" Width="92px" ReadOnly="True">0.006804363</asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:TextBox ID="TextBox38" runat="server" ReadOnly="true" TextMode="Number" Width="93px">0.009282202</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox39" runat="server" ReadOnly="true" TextMode="Number" Width="109px">0.01580215</asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox40" runat="server" ReadOnly="true" TextMode="Number" Width="104px">0.0009221872</asp:TextBox>
                </asp:Panel>

            </td>
            <td></td>
            <td>&nbsp;</td>
            <td style="width: 587px">&nbsp;</td>
       </tr>
    </table>

  <asp:RadioButtonList ID="RadioButtonList10" runat="server" Height="70px" RepeatColumns="2" RepeatDirection="Horizontal" Width="468px">
            <asp:ListItem>true</asp:ListItem>
            <asp:ListItem>false</asp:ListItem>
 
 
        </asp:RadioButtonList>
   <asp:Button ID="btnP18" runat="server" Text="Previous Question"  OnClick="btnq14_Click"/>
    <asp:Button ID="btnSUbmit" runat="server" Text="Submit"  OnClick="btnSUbmit_Click"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="RadioButtonList10" runat="server" ErrorMessage="Please select any one of the value" Display="None"></asp:RequiredFieldValidator>
       </asp:Panel>
    <asp:Panel ID="pnl29" runat="server">
        <h3>Learn Linear Alegebra Quiz Test Results</h3>
        <br />
        <br />
        <p>You successfully complted the Test</p>
        <br />       
          <asp:Label ID="lblresult" runat="server" ></asp:Label>
        <br />
        <br />
        <table border="1">
               <tr>
                <td>
                     <p>Average Score :80 %</p>
                </td>
               </tr>
         
            <tr>
                 <td>
                      <asp:Label ID="lblPercentile" runat="server" ></asp:Label>
                </td>           
            </tr>
        </table>
        <br />
         <br />
         <asp:Button ID="btnRestart" runat="server" Text="Restart Quiz" Visible="false"  OnClick="btnRestart_Click"/>
         <asp:Button ID="btnViewCheck" runat="server" Text="View Answers" Visible="false"  OnClick="btnViewCheck_Click"/>
    </asp:Panel>
   
   
   
   <%--
    

   
  

   --%>


      
</asp:Content>
