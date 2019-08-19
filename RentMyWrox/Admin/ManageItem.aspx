<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms.Master" AutoEventWireup="true" CodeBehind="ManageItem.aspx.cs" Inherits="RentMyWrox.Admin.ManageItem" 
    MetaTagDescription="Manage the items that are available to be checked out from the library"
    MetaTagKeywords="Tools, Lending Library, Manage Items, actual useful keywords here"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <RMW:NotificationsControl runat="server" />
    <div>
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </div>
        <div class="dataentry">
            <asp:Label runat="server" Text="Name" AssociatedControlID="tbName" />
            <asp:TextBox runat="server" ID="tbName" />
            <asp:RequiredFieldValidator ID="rfName" runat="server" ErrorMessage="Name is Required" Text="*" ControlToValidate="tbName" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="dataentry">
            <asp:Label runat="server" Text="Description" AssociatedControlID="tbDescription" />
            <asp:TextBox runat="server" ID="tbDescription" TextMode="MultiLine" Rows="5" />
            <asp:RequiredFieldValidator ID="rfDescription" runat="server" ErrorMessage="Description is Required" ControlToValidate="tbDescription" Text="*" Display="Dynamic" />
        </div>
        <div class="dataentry">
            <asp:Label runat="server" Text="Cost" AssociatedControlID="tbCost" />
            <asp:TextBox runat="server" ID="tbCost" />
            <asp:RequiredFieldValidator ID="rfCost" runat="server" ControlToValidate="tbCost" Display="Dynamic" ErrorMessage="Cost is Required">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cCost" runat="server" ErrorMessage="Cost does not appear to be the correct format" Operator="DataTypeCheck" Type="Currency" ControlToValidate="tbCost">*</asp:CompareValidator>
        </div>
        <div class="dataentry">
            <asp:Label runat="server" Text="Item Number" AssociatedControlID="tbItemNumber" />
            <asp:TextBox runat="server" ID="tbItemNumber" />
            <asp:RequiredFieldValidator ID="rfItemNumer" runat="server" ErrorMessage="Item Number is Required" ControlToValidate="tbItemNumber" Text="*" Display="Dynamic" />
        </div>
        <div class="dataentry">
            <asp:Label runat="server" Text="Picture" AssociatedControlID="fuPicture" />
            <asp:FileUpload ID="fuPicture" ClientIDMode="Static" runat="server" />
        </div>
        <div class="dataentry">
            <asp:Label runat="server" Text="Acquired Date" AssociatedControlID="tbAcquiredDate" />
            <asp:TextBox runat="server" ID="tbAcquiredDate" />
            <asp:RequiredFieldValidator ID="rfAcquiredDate" ControlToValidate="tbAcquiredDate"
                runat="server" ErrorMessage="Acquired Date is Required" Text="*"
                Display="Dynamic" />
            <asp:CompareValidator ID="cAcquiredDate" ControlToValidate="tbAcquiredDate"
                runat="server"
                ErrorMessage="Acquired Date does not appear to be the correct format" Text="*"
                Type="Date" Operator="DataTypeCheck" />
        </div>
        <asp:Button Text="Save Item" runat="server" OnClick="SaveItem_Clicked" />
    </div>
</asp:Content>
