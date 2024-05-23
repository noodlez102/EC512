<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewcart.aspx.cs" Inherits="Lab6.Viewcart" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Cart</title>
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
            left: 125px;
            width: 220px;
        }

        .cart-listbox {
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
            <h1 style="text-align: center">Cart</h1>
            <asp:ListBox ID="cartListBox" runat="server" CssClass="newStyle1 cart-listbox"></asp:ListBox>
            <div class="buttons-container">
                <asp:Button ID="backButton" runat="server" Text="Shop" OnClick="backButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="emptyButton" runat="server" Text="Empty" OnClick="emptyButton_Click" />
            </div>
        </div>
    </form>
</body>
</html>