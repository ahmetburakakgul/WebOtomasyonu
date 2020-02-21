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
    public partial class kullaniciyonet : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        public static string kullanici { get; set; }
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        int id;
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
            vericek("Select * from uye");

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

        protected void ara_Click(object sender, EventArgs e)
        {
            string komut = "Select* from uye where uyekullanıcıad like '%" + TextBox1.Text + "%'";
            vericek(komut);
        }

        protected void temizle_Click(object sender, EventArgs e)
        {
            vericek("Select * From uye");
        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update uye set uyerutbe=@uyerutbe where uyekullanıcıadi='" + TextBox2.Text + "'";
            cmd.Parameters.AddWithValue("@uyerutbe", DropDownList1.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
            conn.Close();
            vericek("Select *From uye");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex + GridView1.PageIndex * GridView1.PageSize;
            TextBox2.Text = ds.Tables[0].Rows[kayitno]["uyekullanıcıadi"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[kayitno]["uyerutbe"].ToString();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            vericek("Select * From uye");
        }
    }
}