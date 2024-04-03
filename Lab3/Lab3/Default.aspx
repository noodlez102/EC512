<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Primes by Arthur Hua</title>
    <style>
        #mainFrame {
            border: 1px solid #000000;
            background-color: cyan;
            width: 250px;
            margin: auto;
            padding: 20px;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
        }

        #primeList {
            width: 15%;
            text-align: left;
            position: relative;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainFrame">
            <h1>Primes</h1>
            <asp:ListBox ID="primeList" runat="server" Rows="10"></asp:ListBox>
        </div>
    </form>
</body>
</html>
