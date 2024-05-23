<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab4.aspx.cs" Inherits="Lab4.Lab4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unit Converter</title>
    <style>
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 50px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Unit Converter</h1>
            <div >
                <label for="inputValue">Value:</label>
                <asp:TextBox ID="inputValue" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div >
                <asp:DropDownList ID="ddlFromUnit" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Factor"></asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Text="to"></asp:Label>
                <asp:DropDownList ID="ddlToUnit" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Factor"></asp:DropDownList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Conversions]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
            <div >
                <label for="outputValue">Result:</label>
                <asp:TextBox ID="outputValue" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
            <asp:Label ID="errorMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>