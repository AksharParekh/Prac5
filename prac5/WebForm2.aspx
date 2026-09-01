<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm2.aspx.cs"
    Inherits="prac5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
    <link href="Content/site.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">

        <div class="page-card">

            <h2 class="page-title">LEAVE APPLICATION</h2>

            <asp:ValidationSummary 
                ID="ValidationSummary1" 
                runat="server"
                CssClass="validation-summary"
                HeaderText="Please correct the following errors:"
                DisplayMode="BulletList" />

            <div class="field-row">
                <span class="field-label">Employee Name:</span>

                <div>
                    <asp:TextBox 
                        ID="txtEmployeeName" 
                        runat="server" 
                        CssClass="form-control">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator 
                        ID="rfvEmployeeName"
                        runat="server"
                        ControlToValidate="txtEmployeeName"
                        ErrorMessage="Employee Name is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="field-row">
                <span class="field-label">Leave Date:</span>

                <asp:Label 
                    ID="lblLeaveDt" 
                    runat="server" 
                    CssClass="form-control inline-value">
                </asp:Label>
            </div>

            <div class="field-row" style="display:flex; align-items:flex-start;">
                <span class="field-label" style="margin-bottom:0; padding-top:8px; min-width:120px; flex:0 0 120px;">Leave Type:</span>

                <div style="flex:1;">
                    <asp:DropDownList 
                        ID="ddlLeaveType" 
                        runat="server" 
                        CssClass="form-control">

                        <asp:ListItem 
                            Text="Select Leave Type" 
                            Value="">
                        </asp:ListItem>

                        <asp:ListItem 
                            Text="Medical Leave" 
                            Value="Medical Leave">
                        </asp:ListItem>

                        <asp:ListItem 
                            Text="Personal Leave" 
                            Value="Personal Leave">
                        </asp:ListItem>

                        <asp:ListItem 
                            Text="Emergency Leave" 
                            Value="Emergency Leave">
                        </asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator 
                        ID="rfvLeaveType"
                        runat="server"
                        ControlToValidate="ddlLeaveType"
                        InitialValue=""
                        ErrorMessage="Please select a Leave Type."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

      
            <div class="field-row checkbox-row">

                <asp:CheckBox 
                    ID="CheckBox1"
                    runat="server"
                    Text="Remember My Name" />

            </div>

           
            <div class="field-row">
                <span class="field-label field-label-top">Reason:</span>

                <div>
                    <asp:TextBox 
                        ID="txtReason" 
                        runat="server"
                        CssClass="form-control"
                        TextMode="MultiLine"
                        Rows="4"
                        Columns="30">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator 
                        ID="rfvReason"
                        runat="server"
                        ControlToValidate="txtReason"
                        ErrorMessage="Reason for leave is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revReason"
                        runat="server"
                        ControlToValidate="txtReason"
                        ValidationExpression="^.{10,}$"
                        ErrorMessage="Reason must contain at least 10 characters."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>
            </div>

            <asp:Button 
                ID="btnSubmit" 
                runat="server"
                CssClass="action-button"
                Text="Submit"
                CausesValidation="true"
                OnClick="btnSubmit_Click" />

            <br /><br />

            <asp:Label 
                ID="lblMessage" 
                runat="server" 
                CssClass="status-message">
            </asp:Label>

        </div>

    </form>
</body>
</html>