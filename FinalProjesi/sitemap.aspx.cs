using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.OleDb;
using System.Xml;


namespace FinalProjesi
{
    public partial class sitemap : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        Response.Clear(); //sitemap xml formatlı olduğundan sayfamızın içeriğini temizliyoruz.
        Response.ContentType = "text/xml";

        XmlTextWriter xr = new XmlTextWriter(Response.OutputStream, Encoding.UTF8);
        xr.WriteStartDocument();
        xr.WriteStartElement("urlset"); // sitemap standartı gereği urlset düğümü oluşturuyoruz.

        // aşağıdaki kodlar ile sitemap`in hangi standartlara uygun olduğunuz belirliyoruz.
        xr.WriteAttributeString("xmlns", "http://www.sitemaps.org/schemas/sitemap/0.9");
        xr.WriteAttributeString("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
        xr.WriteAttributeString("xsi:schemaLocation","http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/siteindex.xsd");

        // Aşağıdaki 6 satır ile de herhangi bir sayfayı sitemap`e ekliyoruz.
        xr.WriteStartElement("url"); // sitemap standartına göre url düğümü oluşturuluyor.
        xr.WriteElementString("loc", "http://localhost:59288");
        xr.WriteElementString("lastmod", DateTime.Now.ToString("yyyy-MM-dd")); //son değiştirme tarihi
        xr.WriteElementString("changefreq", "daily"); // sayfa içeriğini değişme frekansı
        xr.WriteElementString("priority", "1"); // sayfanın değişme frekansına göre öncelik sırası
        xr.WriteEndElement();

        // Aşağıda ise dinamik olarak yani veritabanındaki bilgilere göre sitemap`imizi hazırlıyoruz.
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        OleDbCommand komut2 = new OleDbCommand("select haberid,baslik,tarih from  sporhaberleri", baglanti);
        baglanti.Open();
        OleDbDataReader oku2 = komut2.ExecuteReader();
        while (oku2.Read())
        {
            xr.WriteStartElement("url");
            xr.WriteElementString("loc", "http://localhost:59288/sayfalar.aspx?haberid" + oku2.GetInt32(0).ToString());
            xr.WriteElementString("lastmod", oku2.GetString(1));
            xr.WriteElementString("priority", "0.5");
            xr.WriteElementString("changefreq", "monthly");
            xr.WriteEndElement();
        }
        baglanti.Close();

        xr.WriteEndDocument();
        xr.Flush();
        xr.Close();
        Response.End();
        }
    }
}