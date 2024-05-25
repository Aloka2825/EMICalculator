<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EmiTable.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Scheme</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        body {
            display: flex;
            height: 100vh;
            width: 100%;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            width: 400px;
            margin: 0 auto;
            border: 2px solid;
            padding: 25px;
            border-radius: 5px;
        }
                   
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Create Scheme</h2>
            <hr />
            <div class="mt-4 d-flex justify-content-between">
                <asp:Label ID="lblPlanName" runat="server" Text="Plan Name"></asp:Label>
                
                <asp:DropDownList CssClass="py-1" ID="ddPlanName" runat="server">
                    <asp:ListItem Text="--Please Select a Plan--" Value="0" />
                    <asp:ListItem Text="Personal Loan" Value="1" />
                </asp:DropDownList>
            </div>
            <div class="mt-4 d-flex justify-content-between">
                <asp:Label ID="lblTenure" runat="server" Text="Tenure(Months)"></asp:Label>
                
                <asp:DropDownList CssClass="py-1" ID="ddTenure" runat="server">
                    <asp:ListItem Text="--Please Select Tenure--" Value="0" />
                    <asp:ListItem Text="12 months" Value="1" />
                    <asp:ListItem Text="24 months" Value="2" />
                    <asp:ListItem Text="36 months" Value="3" />
                </asp:DropDownList>
            </div>
            <div class="mt-4 d-flex justify-content-between">
                <asp:Label ID="lblRoi" runat="server" Text="ROI(%)"></asp:Label>
                
                <asp:DropDownList CssClass="py-1" ID="ddRoi" runat="server">
                    <asp:ListItem Text="--Please Select Tenure--" Value="0" />
                    <asp:ListItem Text="7%" Value="1" />
                    <asp:ListItem Text="12%" Value="2" />
                    <asp:ListItem Text="18%" Value="3" />
                </asp:DropDownList>
            </div>
            <div class="mt-4 d-flex justify-content-center ">
                <asp:Button CssClass="btn btn-success" OnClick="btnSave_Click" ID="btnSave" runat="server" Text="Save" />
            </div>
        </div>
    </form>
</body>
</html>
