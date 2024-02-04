<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingForm.aspx.cs" Inherits="OsamaBookings.BookingForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 308px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="XmlDataSource1" ForeColor="#333333" GridLines="None" Height="135px" Width="881px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="BookingID" HeaderText="BookingID" SortExpression="BookingID" />
                <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                <asp:BoundField DataField="CustEmail" HeaderText="CustEmail" SortExpression="CustEmail" />
                <asp:BoundField DataField="GuestNo" HeaderText="GuestNo" SortExpression="GuestNo" />
                <asp:BoundField DataField="InDate" HeaderText="InDate" SortExpression="InDate" />
                <asp:BoundField DataField="OutDate" HeaderText="OutDate" SortExpression="OutDate" />
                <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Bookings-Xml.xml" TransformFile="~/BookingsCss.xslt"></asp:XmlDataSource>
    </form>
</body>
</html>
