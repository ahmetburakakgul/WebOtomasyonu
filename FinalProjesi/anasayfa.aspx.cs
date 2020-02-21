using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Text;
using System.Drawing;

namespace FinalProjesi
{
    public partial class anasayfa : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static StringBuilder icerik = new StringBuilder();
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        public string ad, tarih, ad1, tarih1, ad2, tarih2, ad3, tarih3, ad4, tarih4, ad5, tarih5, id;
        public int haberid, haberid2;
        public string resim;
        void duyuru()
        {
            if(conn.State==ConnectionState.Closed) conn.Open();
            DataSet ds = new DataSet();
            string sec = "select*from duyuru"; // duyuru tablosunu çektim.
            OleDbDataAdapter da = new OleDbDataAdapter(sec, conn);
            da.Fill(ds, "duyuru");
            Repeater1.DataSource = ds.Tables["duyuru"];//Repeater veri listeleme işine yarıyor.
            Repeater1.DataBind();
            Panel1.BackColor = Color.White;
            Panel1.BorderColor = Color.Black;
            conn.Close();

        }
        void vericek()
        {

            int i = 1;
            OleDbCommand cmd = new OleDbCommand();
            string sorgu = "select baslik,icerik,tarih,resim,haberid from sporhaberleri where spordurum='onaylandı' ORDER BY haberid DESC"; //spor haberleri tablomu çektim ve idye göre sıraladım.
            cmd = new OleDbCommand(sorgu, conn);
            if (conn.State == ConnectionState.Closed) conn.Open();
            dr = cmd.ExecuteReader();//Executereader geriye oledbdatareader tipinde veri döndürmeye yarar.
            while (dr.Read())
            {
                if (i == 1) //Burayı en sondaki haber en başa gelsin diye yaptım.
                {
                    ad = dr["baslik"].ToString();
                    tarih = dr["tarih"].ToString();                   
                    Image1.ImageUrl = "resim/" + dr["resim"].ToString();
                    id = dr["haberid"].ToString();
                }
                else if (i == 2)
                {
                    ad1 = dr["baslik"].ToString();
                    tarih1 = dr["tarih"].ToString();
                    Image2.ImageUrl = "resim/" + dr["resim"].ToString();
                }
                else if (i == 3)
                {
                    ad2 = dr["baslik"].ToString();
                    tarih2 = dr["tarih"].ToString();
                    Image3.ImageUrl = "resim/" + dr["resim"].ToString();
                }
                else if (i == 4)
                {
                    ad3 = dr["baslik"].ToString();
                    tarih3 = dr["tarih"].ToString();
                    Image4.ImageUrl = "resim/" + dr["resim"].ToString();
                }
                else if (i == 5)
                {
                    ad4 = dr["baslik"].ToString();
                    tarih4 = dr["tarih"].ToString();
                    Image5.ImageUrl = "resim/" + dr["resim"].ToString();
                }
                else if (i == 6)
                {
                    ad5 = dr["baslik"].ToString();
                    tarih5 = dr["tarih"].ToString();
                    Image6.ImageUrl = "resim/" + dr["resim"].ToString();
                }
                i++;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            vericek();
            duyuru();
        }
    }
}