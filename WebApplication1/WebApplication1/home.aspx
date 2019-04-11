<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Criminal Detection Home</title>
    <link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="btn-hover color-lavel">
                 <asp:Label ID="Label1"  runat="server" Text="Criminal Detection" Font-Bold="True" Font-Names="Algerian" Font-Size="22pt"></asp:Label>
            </div>
           
            <div class="buttons">
                <asp:Button ID="peopleList" class="btn-hover color-1" runat="server" Text="People List" OnClick="peopleList_Click" />
                <asp:Button ID="addPeople" class="btn-hover color-2" runat="server" Text="Add People" OnClick="addPeople_Click" />
                <asp:Button ID="searchPeople" class="btn-hover color-3" runat="server" Text="Search People" OnClick="searchPeople_Click" />
                <asp:Button ID="normalPeopleList" class="btn-hover color-4" runat="server" Text="Normal People List" OnClick="normalPeopleList_Click" />
                <asp:Button ID="criminalList" class="btn-hover color-5" runat="server" Text="Criminal List" OnClick="criminalList_Click" />
                <asp:Button ID="deletePeople" class="btn-hover color-6" runat="server" Text="Delete People" OnClick="deletePeople_Click" />
                <asp:Button ID="updatePeopleInfo" class="btn-hover color-7" runat="server" Text="Update People Information" OnClick="updatePeopleInfo_Click" />
                <asp:Button ID="addCrime" class="btn-hover color-9" runat="server" Text="Add Crime" OnClick="addCrime_Click" />
                <asp:Button ID="removeCrime" class="btn-hover color-10" runat="server" Text="Remove Crime" OnClick="removeCrime_Click" />
                <asp:Button ID="Detection" class="btn-hover color-11" runat="server" Text="Detection" OnClick="Detection_Click" />
            </div>
        </div>
    </form>
</body>
</html>
