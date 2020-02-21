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
    public partial class fikstür : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static StringBuilder ictemiz1 = new StringBuilder();
        DataSet ds = new DataSet();
        int ligid;
        public string haftaadi;
        void vericek()
        {
            string seckomut = "Select * from fikstur where  haftaadi ORDER BY ligid ASC";
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
            ictemiz1.Clear();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ictemiz1.Clear();
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            ligid = int.Parse(ds.Tables[0].Rows[kayitno]["ligid"].ToString());
            haftaadi = ds.Tables[0].Rows[kayitno]["haftaadi"].ToString();
            ictemiz1.Append(ds.Tables[0].Rows[kayitno]["icerik"].ToString());
           
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek();
        }
    }
}