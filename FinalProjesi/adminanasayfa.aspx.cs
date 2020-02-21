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
    public partial class adminanasayfa : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        DataSet ds = new DataSet();
        public static string kullanici { get; set; }
        OleDbDataReader dr;
        int id;
        void vericek()
        {
            string seckomut = "Select u.uyekullanıcıadi,s.mesaj,s.yorumkonu,s.sizdentarih,s.yorumid,s.durum from sizdengelenler as[s],uye as [u] where s.uyeid=u.uyeid and durum='onaylanmadı'";
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
            vericek();
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek();
        }
    }
}