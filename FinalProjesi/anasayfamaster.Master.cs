using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Text;

namespace FinalProjesi
{
    public partial class anasayfamaster : System.Web.UI.MasterPage
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public StringBuilder menutut = new StringBuilder();
        public static StringBuilder iceriktut = new StringBuilder();
        public static string menuismi { get; set; }
        public static string kul { get; set; }
        public static string rütbe { get; set; }
        public static bool kontrol { get; set; }
        OleDbDataReader dr;
        void kulcek()
        {
            OleDbCommand cmd = new OleDbCommand();
            string sorgu = "select uyerutbe from uye where uyekullanıcıadi='" + kul + "'"; // admin ve üye girişlerini ayırt edebilmek için bu fonksiyonu yazdım.
            cmd = new OleDbCommand(sorgu, conn);
            if (conn.State == ConnectionState.Closed) conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                rütbe = dr.GetValue(0).ToString();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = Application.Get("ziyaretci").ToString();   //online kullanıcı sayısı
            string toplam = "select ip from ziyaretcisayi GROUP BY ip";   // Aynı olan ip adreslerini grupluyor. 
            OleDbDataAdapter dat = new OleDbDataAdapter(toplam, conn);    // ip adresi farklı gelince toplam ziyaret artıyor.
            DataSet datb = new DataSet();
            dat.Fill(datb, "ziyaretcisayi");
            Label2.Text = datb.Tables[0].Rows.Count.ToString();

            lbgiris.Visible = true;
            lbkaydol.Visible = true;
            LinkButton4.Visible = false;

            if (kontrol == true)
            {
                //buraya birdaha bakk!!!!!
                kulcek();
                if (rütbe == "Admin") lbyorumyap.Text = "Yönetim";   // Eğer adminden giriş yaptıysa yorum yap butonu yönetim oluyor ve admin sayfasına geciş yapabiliyorum.
                lbyorum.Visible = true;
                LinkButton4.Visible = true;
                lbgiris.Visible = false;
                lbkaydol.Visible = false;
                lbhaftamac.Visible = true;         // üyeye özel sayfalar
                lbPuan.Visible = true;              
                lbyorum.Visible = true;
                lbtransfer.Visible = true;
                lbyorumyap.Visible = true;
                LinkButton3.Text = kul;
                adminpanel.kullanad = kul;
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("menu.xml"));   // xml dosyamı okuttum.
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (i == 0) menutut.Append(" <li class='sidebar-brand'>");   //sola menü ekleme
                    else menutut.Append(" <li>");
                    menutut.Append("<a href='sayfalar.aspx?id=" + ds.Tables[0].Rows[i]["id"] + "'>");
                    menutut.Append(ds.Tables[0].Rows[i]["ad"]);
                    menutut.Append("</a> </li>");
                }
                //sayfanın içeriği oluşturma
                string id = "0";
                if (Request.QueryString.Count > 0) id = Request.QueryString[0]; // bir sayfadan başka bir sayfaya geçişi yada sayfanın sunucuya gidip geri gelmesi esnasında bazı bilgileri saklamak ve gerektiğinde tekrar kullanmak isteyebiliriz.bu durumlarda furum yönetimi nesneleri kullanırız query string de bunlardan biri.
                if (conn.State == ConnectionState.Closed) conn.Open();
                string sec = "select * from sayfabilgileri where sayfano='" + id + "'";
                OleDbDataAdapter da = new OleDbDataAdapter(sec, conn);
                da.Fill(ds, "sayfabilgileri");
                if (ds.Tables["sayfabilgileri"].Rows.Count > 0)
                {

                    iceriktut.Append(ds.Tables["sayfabilgileri"].Rows[0]["icerik"].ToString()); // sayfanın içeriğini oluşturdum.
                    sayfalar.icerik1.Clear();
                    sayfalar.icerik1.Append(iceriktut);
                }

                iceriktut.Clear();

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (id == ds.Tables[0].Rows[i]["id"].ToString())
                    {
                        menuismi = ds.Tables[0].Rows[i]["ad"].ToString(); // id satırına göre menü isimlerini çektim
                        sayfalar.menuismi = menuismi;
                    }
                }
                conn.Close();

            }
        }

        protected void lbkaydol_Click(object sender, EventArgs e)
        {
            Response.Redirect("uyekayit.aspx");
        }

        protected void lbgiris_Click(object sender, EventArgs e)
        {
            Response.Redirect("uyegiris.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            kontrol = false;
            LinkButton3.Visible = false;
            Response.Redirect("uyegiris.aspx");
        }

        protected void lbyorumyap_Click(object sender, EventArgs e)
        {
            if (rütbe == "Admin")
            {

                Response.Redirect("adminanasayfa.aspx");
            }
            else
            {
                Response.Redirect("yorumyap.aspx");
            }
        }

        protected void lbyorum_Click(object sender, EventArgs e)
        {
            Response.Redirect("yorumlar.aspx");
        }

        protected void lbtransfer_Click(object sender, EventArgs e)
        {
            Response.Redirect("transferhaberleri.aspx");
        }

        protected void lbPuan_Click(object sender, EventArgs e)
        {
            Response.Redirect("puandurumu.aspx");
        }

        protected void lbhaftamac_Click(object sender, EventArgs e)
        {
            Response.Redirect("fikstür.aspx");
        }

        
    }
}