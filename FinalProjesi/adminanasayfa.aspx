<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="adminanasayfa.aspx.cs" Inherits="FinalProjesi.adminanasayfa" ValidateRequest="false"%>
  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        
        <div id="main-content"> <!-- Main Content Section with everything -->
			
			
			
			<!-- Page Head -->
			<h2>Hoşgeldin Yönetici</h2>		
			<ul class="shortcut-buttons-set">
				
				<li><a class="shortcut-button" href="kullaniciyonet.aspx"><span>
					<img src="admin/images/icons/pencil_48.png" alt="icon" /><br />
					Kullanıcı Yönet
				</span></a></li>
				
				<li><a class="shortcut-button" href="menüyönetimi.aspx"><span>
					<img src="admin/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					Menü Yönetimi
				</span></a></li>			
				<li><a class="shortcut-button" href="galeriyönetimi.aspx"><span>
					<img src="admin/images/icons/image_add_48.png" alt="icon" /><br />
					Galeri Editörü
				</span></a></li>
				
				<li><a class="shortcut-button" href="haberyönetimi.aspx"><span>
					<img src="admin/images/icons/clock_48.png" alt="icon" /><br />
					Haber Editörü
				</span></a></li>
				
				<li><a class="shortcut-button" href="sizdengelenler.aspx"><span>
					<img src="admin/images/icons/comment_48.png" alt="icon" /><br />
					Üyeden Gelenler
				</span></a></li>
                <li><a class="shortcut-button" href="duyuruayarlari.aspx"><span>
					<img src="admin/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					Duyuru Yönetimi
				</span></a></li>
                <li><a class="shortcut-button" href="fikstürayarlari.aspx"><span>
					<img src="admin/images/icons/clock_48.png" alt="icon" /><br />
					Fikstür Ayarları
				</span></a></li>
                <li><a class="shortcut-button" href="puandurumudüzenle.aspx"><span>
					<img src="admin/images/icons/pencil_48.png" alt="icon" /><br />
					Puan Durumu
				</span></a></li>
				
			</ul><!-- End .shortcut-buttons-set -->
			
			<div class="clear"></div> <!-- End .clear -->
			
			<div class="content-box-content"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>İçerik Kutusu</h3>
					
					
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					
					
					<div class="tab-content" id="tab2">
					
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" Height="154px" Width="1037px" OnPageIndexChanging="GridView1_PageIndexChanging" CellSpacing="1" GridLines="None">
                            <Columns>
                                <asp:BoundField DataField="uyekullanıcıadi" HeaderText="Kullanıcı Adı" />
                                <asp:BoundField DataField="yorumkonu" HeaderText="Konu" />
                                <asp:BoundField DataField="mesaj" HeaderText="Mesaj" />
                                <asp:BoundField DataField="sizdentarih" HeaderText="Tarih" />
                                <asp:BoundField DataField="durum" HeaderText="Durum" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
						
					</div> <!-- End #tab2 -->        
					
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->
			
			
			
			
			<div class="clear"></div>
			
			
		
			
		</div> <!-- End #main-content -->
</asp:Content>
