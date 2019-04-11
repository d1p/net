﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchPeople.aspx.cs" Inherits="WebApplication1.searchPeople" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Information</title>
    <link rel="stylesheet" type="text/css" href="searchPeopleDesign.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="cover">
  <form method="get" action="">
    <div class="tb">
      <div class="td">
          <asp:TextBox ID="searchBox" runat="server" type="text" placeholder="Search" required></asp:TextBox>
         </div>
      <div class="td" id="s-cover">
          <asp:Button ID="scircle" type="submit" runat="server" Text="SEARCH" OnClick="scircle_Click"  />
          <span></span>
      </div>
        
    </div>
      
  </form>
</div>
        </div>
        <div>
            <br/><br/><br/><br/>
            <asp:GridView ID="GridView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
