<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Webform1.aspx.cs"
    Inherits="prac5.Webform1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
    <link href="Content/site.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">

        <div class="page-card">

            <h2 class="page-title">SELECT LEAVE DATE</h2>

            <asp:Calendar ID="Calendar1" runat="server"
                CssClass="calendar"
                BackColor="White"
                BorderColor="#999999"
                CellPadding="4"
                DayNameFormat="Shortest"
                Font-Names="Verdana"
                Font-Size="8pt"
                ForeColor="Black"
                Height="180px"
                Width="200px"
                OnSelectionChanged="Calendar1_SelectionChanged">

                <DayHeaderStyle
                    BackColor="#CCCCCC"
                    Font-Bold="True"
                    Font-Size="7pt" />

                <NextPrevStyle VerticalAlign="Bottom" />

                <OtherMonthDayStyle ForeColor="#808080" />

                <SelectedDayStyle
                    BackColor="#666666"
                    Font-Bold="True"
                    ForeColor="White" />

                <SelectorStyle BackColor="#CCCCCC" />

                <TitleStyle
                    BackColor="#999999"
                    BorderColor="Black"
                    Font-Bold="True" />

                <TodayDayStyle
                    BackColor="#CCCCCC"
                    ForeColor="Black" />

                <WeekendDayStyle
                    BackColor="#FFFFCC" />

            </asp:Calendar>

            <br /><br />

            <asp:Label ID="lblselectedDt"
                runat="server"
                CssClass="status-message"
                Text="No date selected">
            </asp:Label>

            <br /><br />

            <asp:Button ID="btnApplyLeave"
                runat="server"
                CssClass="action-button"
                Text="Apply Leave"
                OnClick="btnApplyLeave_Click" />

        </div>

    </form>
</body>
</html>