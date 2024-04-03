<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Arthur Hua Lab 2</title>
    <style type="text/css">
        .expand {
            padding: 50px;
            height: 200px;
        }

        .bottom {
            border-width: thin;
            padding: 20px;
            background-color: white;
            border-top-style: solid;
            text-align: center;
        }

        .main {
            border-width: thin;
            border-style: solid;
            margin: auto;
            width: 400px;
            background-color: lightgray;
        }

        .error {
            color: Red;
            background-color: White;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="expand">
                <h1 style="text-align: center">Temperature Converter</h1>
                <p>
                    Fahrenheit:
                    <asp:TextBox runat="server" ID="Fahrenheit"></asp:TextBox>
                </p>
                <p>
                    Centegrade:
                    <asp:TextBox runat="server" ID="Centegrade"></asp:TextBox>
                </p>
                <p>
                    <asp:Panel runat="server" ID="error" CssClass="error"></asp:Panel>
                </p>
            </div>
            <div class="bottom">
                <input id="Clear" type="button" value="Clear" runat="server" OnServerClick="Clear_Click" />
                &nbsp;
                <asp:Button ID="Convert" runat="server" Text="Convert" OnClick="Convert_Click" />
            </div>
        </div>
    </form>
</body>
</html>
