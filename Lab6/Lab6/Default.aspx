<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab6.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Store by Arthur Hua</title>
    <style>
        .newStyle1 {
            text-align: center;
        }

        .container {
            padding: 50px;
            margin: auto;
            border-style: solid;
            border-width: thin;
            height: 250px;
            background-color: gray;
            width: 250px;
            position: relative;
        }

        .buttons-container {
            height: 50px;
            position: absolute;
            top: 220px;
            left: 80px;
            width: 220px;
        }

        .store-listbox {
            position: absolute;
            top: 120px;
            left: 130px;
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 style="text-align: center">Store</h1>
            <asp:ListBox ID="store" runat="server" CssClass="newStyle1 store-listbox">
                <asp:ListItem>Television</asp:ListItem>
                <asp:ListItem>Smartphone</asp:ListItem>
                <asp:ListItem>Car</asp:ListItem>
                <asp:ListItem>Boat</asp:ListItem>
                <asp:ListItem>House</asp:ListItem>
            </asp:ListBox>
            <div class="buttons-container">
                <asp:Button ID="addButton" runat="server" Text="Add to Cart" OnClick="addButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="viewButton" runat="server" Text="View Cart" OnClick="viewButton_Click" />
                <br />
                <br />
                <asp:Label ID="errorLabel" runat="server" Text="0 items in cart."></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>