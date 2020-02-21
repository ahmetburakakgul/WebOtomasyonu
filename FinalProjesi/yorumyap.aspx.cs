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
    public partial class yorumyap : System.Web.UI.Page
    {
        public static string kullanici { get; set; }
        public static string kullaniciad { get; set; }
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        OleDbDataReader dr;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();
            string sorgu = "select uyeid from uye where uyekullanıcıadi='" + kullanici + "'";
            cmd = new OleDbCommand(sorgu, conn);
            if (conn.State == ConnectionState.Closed) conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                id = int.Parse(dr.GetValue(0).ToString());
            }
        }

        protected void gonder_Click(object sender, EventArgs e)
        {
            
                if (ConnectionState.Closed == conn.State) conn.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = conn;
                cmd.CommandText = "insert into sizdengelenler(uyeid,mesaj,durum,yorumkonu,sizdentarih) Values(@uyeid,@mesaj,@durum,@yorumkonu,@sizdentarih)";
                cmd.Parameters.AddWithValue("@uyeid", id);                
                cmd.Parameters.AddWithValue("@mesaj", icerik.Text);                
                cmd.Parameters.AddWithValue("@durum", "onaylanmadı");
                cmd.Parameters.AddWithValue("@yorumkonu", tbadı.Text);
                cmd.Parameters.AddWithValue("@sizdentarih", DateTime.Now.ToLongDateString());        
                cmd.ExecuteNonQuery();
                //html yüzünden hata verdi source en üst satırda (ValidateRequest="false") yazdık
                conn.Close();
                tbadı.Text = icerik.Text = "";
        }

        protected void iptal_Click(object sender, EventArgs e)
        {
            tbadı.Text = ""; icerik.Text = "";
        }
    }
}