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
    public partial class sizdengelenler : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        DataSet ds = new DataSet();
        public static string kullanici { get; set; }
        OleDbDataReader dr;
        string komut;
        void vericek(string aranan)
        {
            string seckomut = aranan;
            ds.Clear();
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbDataAdapter da = new OleDbDataAdapter(seckomut, conn);
            da.SelectCommand.ExecuteNonQuery();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            vericek(komut = "Select u.uyekullanıcıadi,s.mesaj,s.sizdentarih,s.yorumid,s.yorumkonu from sizdengelenler as[s],uye as [u] where s.uyeid=u.uyeid and durum='onaylanmadı'"); 
        }

        protected void onayla_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update sizdengelenler set durum=@durum where yorumid=" + int.Parse(tbid.Text) + "";
            cmd.Parameters.AddWithValue("@durum", "onaylandı");
            cmd.ExecuteNonQuery();
            conn.Close();
            vericek(komut);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek(komut);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            ykonu.Text = ds.Tables[0].Rows[kayitno]["yorumkonu"].ToString();
            icerik.Text = ds.Tables[0].Rows[kayitno]["mesaj"].ToString();
            tbid.Text = ds.Tables[0].Rows[kayitno]["yorumid"].ToString();           
            
        }

        protected void sil_Click(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "delete from sizdengelenler where yorumid=@yorumid";
            cmd.Parameters.AddWithValue("@yorumid", int.Parse(tbid.Text));
            cmd.ExecuteNonQuery();
            conn.Close();
            vericek(komut);
            icerik.Text = "";
            tbid.Text = icerik.Text = "";
           
        }
    }
}