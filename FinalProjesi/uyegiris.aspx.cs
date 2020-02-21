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
    public partial class uyegiris : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        OleDbDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            anasayfamaster.menuismi = "Üye Girişi";
            anasayfamaster.kul = "";
            anasayfamaster.kontrol = false;
        }    

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();
            string sorgu = "select* from uye where uyekullanıcıadi='" + tbkul.Text + "'and uyesifre='" + tbsifre.Text + "'";
            cmd = new OleDbCommand(sorgu, conn);
            if (conn.State == ConnectionState.Closed) conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                anasayfamaster.kul = tbkul.Text;
                haberyönetimi.kullanici = tbkul.Text;
                yorumyap.kullanici = tbkul.Text;
                sizdengelenler.kullanici = tbkul.Text;
                anasayfamaster.kontrol = true;
                Response.Redirect("anasayfa.aspx");
            }
            else
            {
                Label1.Visible = true;
            }
        }

       

      
    }
}