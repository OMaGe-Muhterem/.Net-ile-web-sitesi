<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sayfa2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h3>Veritabanına Kayıt Eklemek</h3>
    <table class="form-group">
            <tr>
                <td><strong>Ad = </strong> </td>
                <td>  <asp:TextBox ID="ad_txB" AutoPostBack="true"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> <strong>Soyad =  </strong>  </td>
                <td>   <asp:TextBox ID="soyad_txB" AutoPostBack="true"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>Cinsiyet : </b></td>
                <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
            <asp:ListItem Value="0">Erkek</asp:ListItem>
            <asp:ListItem Value="1">Kadın</asp:ListItem>
        </asp:RadioButtonList></td>
            </tr>
                                   
        </table> 
    <div>
        <b>Meslek : </b>
        <asp:ListBox ID="meslek_LB" runat="server" Font-Size="Small">
            <asp:ListItem>Öğrenci</asp:ListItem>
            <asp:ListItem>İşçi</asp:ListItem>
            <asp:ListItem>Ev Hanımı</asp:ListItem>
            <asp:ListItem>Çiftçi</asp:ListItem>
            <asp:ListItem>Öğretmen</asp:ListItem>
            <asp:ListItem>Polis</asp:ListItem>
            <asp:ListItem>Esnaf</asp:ListItem>
            <asp:ListItem>Memur</asp:ListItem>
        </asp:ListBox>
    <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
    </div>
        <asp:Label ID="Lb_kayit" runat="server" Text="Kayıt bilgilendirme"></asp:Label>
       <hr />
<div class="align-middle">                                                 
        <asp:Button ID="iki_syf_btn" runat="server" PostBackUrl="~/Sayfa1.aspx" Text="1. Sayfa" />              
    
        <asp:Button ID="giris_txB" runat="server" Text="3. Sayfa" PostBackUrl="~/Sayfa3.aspx"  />    
   
    <hr /> 
    <h4>Veritabanından gelen verilerin Grid ile listelenmesi:</h4>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Kimlik" DataSourceID="AccessDataSource2" EmptyDataText="G&#246;r&#252;nt&#252;lenecek hi&#231; veri kaydı yok." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" ReadOnly="True" SortExpression="Kimlik" />
            <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
            <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
            <asp:BoundField DataField="meslek" HeaderText="meslek" SortExpression="meslek" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\okanDB.mdb" DeleteCommand="DELETE FROM `Veriler` WHERE `Kimlik` = ?" InsertCommand="INSERT INTO `Veriler` (`Kimlik`, `ad`, `soyad`, `cinsiyet`, `meslek`) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT `Kimlik`, `ad`, `soyad`, `cinsiyet`, `meslek` FROM `Veriler`" UpdateCommand="UPDATE `Veriler` SET `ad` = ?, `soyad` = ?, `cinsiyet` = ?, `meslek` = ? WHERE `Kimlik` = ?">
        <DeleteParameters>
            <asp:Parameter Name="Kimlik" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Kimlik" Type="Int32" />
            <asp:Parameter Name="ad" Type="String" />
            <asp:Parameter Name="soyad" Type="String" />
            <asp:Parameter Name="cinsiyet" Type="Boolean" />
            <asp:Parameter Name="meslek" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ad" Type="String" />
            <asp:Parameter Name="soyad" Type="String" />
            <asp:Parameter Name="cinsiyet" Type="Boolean" />
            <asp:Parameter Name="meslek" Type="String" />
            <asp:Parameter Name="Kimlik" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>


</div>
     
                             
             
</div>
</asp:Content>

