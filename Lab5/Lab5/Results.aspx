<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Lab5.Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Current Votes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 40px;
        }

        h1 {
            color: black;
        }

        .list-item {
            background-color: forestgreen;
            padding: 10px;
            margin-bottom: 5px;
            border-radius: 5px;
        }

        .list-header {
            font-weight: bold;
            background-color: gray;
            padding: 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Thank You for Voting!</h1>
            <div class="list-header">
                <span>Candidate</span>
                <span>Votes</span>
            </div>
            <asp:ListView runat="server" ID="List" DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <span style="background-color: #FAFAD2; color: #284775;">Candidate:
            <asp:Label Text='<%# Eval("Candidate") %>' runat="server" ID="CandidateLabel" /><br />
            votes:
            <asp:Label Text='<%# Eval("votes") %>' runat="server" ID="votesLabel" /><br />
            <br />
        </span>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <span style="background-color: #FFCC66; color: #000080;">Candidate:
            <asp:TextBox Text='<%# Bind("Candidate") %>' runat="server" ID="CandidateTextBox" /><br />
            votes:
            <asp:TextBox Text='<%# Bind("votes") %>' runat="server" ID="votesTextBox" /><br />
            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
            <br />
        </span>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <span>No data was returned.</span>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <span style="">Candidate:
            <asp:TextBox Text='<%# Bind("Candidate") %>' runat="server" ID="CandidateTextBox" /><br />
            votes:
            <asp:TextBox Text='<%# Bind("votes") %>' runat="server" ID="votesTextBox" /><br />
            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
            <br />
        </span>
    </InsertItemTemplate>
    <LayoutTemplate>
        <div runat="server" id="itemPlaceholderContainer" style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span runat="server" id="itemPlaceholder" /></div>
        <div style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <span style="background-color: #FFCC66; font-weight: bold; color: #000080;">Candidate:
            <asp:Label Text='<%# Eval("Candidate") %>' runat="server" ID="CandidateLabel" /><br />
            votes:
            <asp:Label Text='<%# Eval("votes") %>' runat="server" ID="votesLabel" /><br />
            <br />
        </span>
    </SelectedItemTemplate>
    <ItemTemplate>
        <span style="background-color: #FFFBD6; color: #333333;">Candidate:
            <asp:Label Text='<%# Eval("Candidate") %>' runat="server" ID="CandidateLabel" /><br />
            votes:
            <asp:Label Text='<%# Eval("votes") %>' runat="server" ID="votesLabel" /><br />
            <br />
        </span>
        <div ><span></span></div></ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Candidate], [votes] FROM [Vote_counter]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
