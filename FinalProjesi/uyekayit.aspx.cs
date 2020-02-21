using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace FinalProjesi
{
    public partial class uyekayit : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        OleDbDataReader dr;
        OleDbCommand komut;
        protected void Page_Load(object sender, EventArgs e)
        {
            anasayfamaster.menuismi = "Üye Kayıt";
        }

       

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            if (tbsifre.Text.Count() < 4)
            {
                lbsif.Visible = true;
            }
            else
            {
                lbsif.Visible = false;
                OleDbCommand cmd2 = new OleDbCommand();
                cmd2.Connection = conn;
                cmd2.CommandText = "select * from uye where uyekullanıcıadi='" + tbkullanıcıadi.Text + "'";
                if (conn.State == ConnectionState.Closed) conn.Open();
                dr = cmd2.ExecuteReader();
                if (dr.Read())
                {
                    lbkul.Visible = true;

                }
                else
                {
                    if (conn.State == ConnectionState.Closed) conn.Open();
                    string sorgu = "INSERT INTO uye (uyeadi,uyesoyadi,uyekullanıcıadi,uyesifre,uyerutbe) VALUES (@uyeadi,@uyesoyadi,@uyekullanıcıadi,@uyesifre,@uyerutbe)";
                    komut = new OleDbCommand(sorgu, conn);
                    komut.Parameters.AddWithValue("@uyeadi", tbadi.Text);
                    komut.Parameters.AddWithValue("@uyesoyadi", tbsoyadi.Text);
                    komut.Parameters.AddWithValue("@uyekullanıcıadi", tbkullanıcıadi.Text);
                    komut.Parameters.AddWithValue("@uyesifre", tbsifre.Text);
                    komut.Parameters.AddWithValue("@uyerutbe", "Üye");

                    komut.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("uyegiris.aspx");
                }
            }
        }
    }
}