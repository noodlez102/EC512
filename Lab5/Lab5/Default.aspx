<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cast Your Vote</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 40px;
        }

        h1 {
            color: black;
        }

        .container {
            background-color: dimgray;
            padding: 20px;
            border-radius: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .error-message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Cast Your Vote</h1>
            <div class="form-group">
                <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Candidate] FROM [Vote_counter]" ID="Sql_canidates"></asp:SqlDataSource>
                <asp:RadioButtonList runat="server" ID="Canidates" DataSourceID="Sql_canidates" DataTextField="Candidate" DataValueField="Candidate" OnSelectedIndexChanged="Canidates_SelectedIndexChanged"></asp:RadioButtonList>
            </div>
            <div class="form-group">
                <asp:Button runat="server" Text="Vote" ID="Voting_Button" OnClick="On_Button_click"></asp:Button>
            </div>
            <div class="form-group">
                <asp:Label ID="errorMessage" runat="server" CssClass="error-message"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
