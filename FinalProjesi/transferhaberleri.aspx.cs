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
    public partial class transferhaberleri : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static StringBuilder ictemiz2 = new StringBuilder();
        DataSet ds = new DataSet();
        int haberid;
        public string baslik;
        void vericek()
        {
            string seckomut = "Select * from sporhaberleri  where  haberturu='Transfer Haberleri' and spordurum='onaylandı' ORDER BY tarih Desc";
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
            ictemiz2.Clear();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ictemiz2.Clear();
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            haberid = int.Parse(ds.Tables[0].Rows[kayitno]["haberid"].ToString());
            baslik = ds.Tables[0].Rows[kayitno]["baslik"].ToString();
            lbtarih.Text = ds.Tables[0].Rows[kayitno]["tarih"].ToString();
            ictemiz2.Append(ds.Tables[0].Rows[kayitno]["icerik"].ToString());
            Image1.ImageUrl = "resim/" + ds.Tables[0].Rows[kayitno]["resim"].ToString();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek();
        }
    }
}