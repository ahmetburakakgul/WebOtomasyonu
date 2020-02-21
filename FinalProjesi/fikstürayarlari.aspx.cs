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
    public partial class fikstürayarlari : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));        
        DataSet ds = new DataSet();
        void vericek()
        {
            string seckomut = "Select * from fikstur  where ligid ORDER BY haftaadi ASC";
            ds.Clear();
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbDataAdapter da = new OleDbDataAdapter(seckomut, conn);
            da.SelectCommand.ExecuteNonQuery();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();   // veri bağlama;
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            vericek();
            kaydet.Visible = false;
        }

        protected void ekle_Click(object sender, EventArgs e)
        {
            tbad.Text = icerik.Text = "";
            kaydet.Visible = true;
        }

        protected void sil_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "delete  from fikstur where ligid=@ligid";
            cmd.Parameters.AddWithValue("@ligid", int.Parse(tbid.Text));
            cmd.ExecuteNonQuery();
            conn.Close();
            tbad.Text = icerik.Text = "";
            vericek();
        }

        protected void duzelt_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmdd = new OleDbCommand();
            cmdd.Connection = conn;
            cmdd.CommandText = "update fikstur set haftaadi=@haftaadi,icerik=@icerik where ligid=" + int.Parse(tbid.Text) + "";
            cmdd.Parameters.AddWithValue("@haftaadi", tbad.Text);
            cmdd.Parameters.AddWithValue("@icerik", icerik.Text);
            cmdd.ExecuteNonQuery();
            conn.Close();
            vericek(); 
        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            if (tbad.Text == "" || icerik.Text == "")
            {
                lbuyarı.Visible = true;
                lbuyarı.Text = "Lütfen tüm alanları doldurunuz";
            }
            else
            {
                lbuyarı.Visible = false;
                
                if (ConnectionState.Closed == conn.State) conn.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = conn;
                cmd.CommandText = "insert into fikstur(haftaadi,icerik) values(@haftaadi,@icerik)";
                cmd.Parameters.AddWithValue("@hafta", tbad.Text);              
                cmd.Parameters.AddWithValue("@icerik", icerik.Text);
                cmd.ExecuteNonQuery();               
                conn.Close();
                vericek();
                kaydet.Visible = false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            tbad.Text = ds.Tables[0].Rows[kayitno]["haftaadi"].ToString();
            icerik.Text = ds.Tables[0].Rows[kayitno]["icerik"].ToString();
            tbid.Text = ds.Tables[0].Rows[kayitno]["ligid"].ToString();
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek();
        }
    }
}