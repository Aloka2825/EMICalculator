<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmiGenerator.aspx.cs" Inherits="EmiTable.EmiGenerator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emi Generator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        table tr {
            border: 1px solid black;
            
        }
        table{
            margin: 10px auto ;
        }
        .thead-dark {
            background-color: black;
            color: white;
            font-weight: bolder;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex">
            <div class="col-5">
                <h2>EMI Scheduler</h2>
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
                    <asp:TextBox ID="txtTenure" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="mt-4 d-flex justify-content-between">
                    <asp:Label ID="lblRoi" runat="server" Text="ROI(%)"></asp:Label>
                    <asp:TextBox ID="txtRoi" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="mt-4 d-flex justify-content-between">
                    <asp:Label ID="lblLoanAmount" runat="server" Text="Enter Loan Amount"></asp:Label>
                    <asp:TextBox ID="txtLoanAmount" runat="server"></asp:TextBox>
                </div>
                <div class="mt-4 d-flex justify-content-between">
                    <asp:Label ID="lblLoanDate" runat="server" Text="Loan Date"></asp:Label>
                    <asp:Calendar ID="calender" runat="server" OnSelectionChanged="calender_SelectionChanged"></asp:Calendar>
                    <asp:Label ID="date" runat="server" Text=""></asp:Label>
                </div>
                <div class="d-flex justify-content-end mt-1">
                    <asp:Button CssClass="btn btn-primary" ID="btnCalculateEmi" runat="server" Text="Calculate EMI" OnClick="btnCalculateEmi_Click" />
                </div><hr />
                <div class="mt-4 d-flex justify-content-between">
                    <asp:Label ID="lblEmiAmount" runat="server" Text="EMI Amount"></asp:Label>
                    <asp:TextBox ID="txtEmiAmount" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
                
                <div class="d-flex justify-content-center mt-4">
                    <asp:Button CssClass="btn btn-success" ID="btnGenerateSchedule" runat="server" Text="Generate Schedule" OnClick="btnGenerateSchedule_Click" />
                </div>
            </div>
            <div class="col-6 d-flex justify-content-center">
                <div class="table-section d-flex justify-content-center">
                    <table class="table table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>EMI No</th>
                                <th>Due Date</th>
                                <th>EMI Amount</th>
                            </tr>
                        </thead>
                        <tbody runat="server" id="emiSchedule">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
