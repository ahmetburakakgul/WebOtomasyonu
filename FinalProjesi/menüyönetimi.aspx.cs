using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Xml;
using System.Xml.Linq;

namespace FinalProjesi
{
    public partial class menüyönetimi : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/sporsitesi.mdb"));
        void oku()
        {
            ds.Clear();
            ds.ReadXml(Server.MapPath("menu.xml"));
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            oku();
        }

        protected void ekle_Click(object sender, EventArgs e)
        {
            string id;
            XmlDocument x = new XmlDocument();
            x.Load(Server.MapPath("menu.xml"));
            XmlNodeList du = x.SelectNodes("dikeymenu/menu");
            foreach (XmlNode a in du)
            {
                id = a.Attributes["id"].Value;
                if (id == tbid.Text) { Label1.Text = "Girdiğiniz Id Kullanılmaktadır."; Label1.Visible = true; }
                else Label1.Text = "";
            }
            if (Label1.Text != "Girdiğiniz Id Kullanılmaktadır.")
            {
                DataRow dr = ds.Tables[0].NewRow();
                dr["Ad"] = tbad.Text;
                dr["id"] = tbid.Text;
                ds.Tables[0].Rows.Add(dr);
                ds.WriteXml(Server.MapPath("menu.xml"));
                oku();
            }
        }

        protected void sil_Click(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex;
            if (kayitno >= 0)
            {
                ds.Tables[0].Rows[kayitno].Delete();
                ds.WriteXml(Server.MapPath("menu.xml"));
                oku();
            }
            if (conn.State == ConnectionState.Closed) conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "delete from sayfabilgileri where sayfano=@sayfano";
            cmd.Parameters.AddWithValue("@sayfano", tbid.Text);
            cmd.ExecuteNonQuery();
            tbid.Text = "";
            tbad.Text = "";
        }

        protected void duzelt_Click(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex;
            if (kayitno >= 0)
            {
                ds.Tables[0].Rows[kayitno]["Ad"] = tbad.Text;
                ds.Tables[0].Rows[kayitno]["id"] = tbid.Text;
                ds.WriteXml(Server.MapPath("menu.xml"));
                oku();
            }
        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex;
            conn.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            if (kayitno >= 0)
            {
                string tutid = ds.Tables[0].Rows[kayitno]["id"].ToString();
                cmd.CommandText = "delete from sayfabilgileri where sayfano='" + tutid + "'";
                cmd.ExecuteNonQuery();
                //----ekle
                cmd.CommandText = "insert into sayfabilgileri (sayfano,icerik) Values(@sayfano,@icerik)";
                cmd.Parameters.AddWithValue("@sayfano", tbid.Text);
                cmd.Parameters.AddWithValue("@icerik", tbicerik.Text);
                cmd.ExecuteNonQuery();
                //html yüzünden hata verdi source en üst satırda (ValidateRequest="false") yazdık

            }
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kayitno = GridView1.SelectedIndex;
            tbad.Text = ds.Tables[0].Rows[kayitno]["Ad"].ToString();
            tbid.Text = ds.Tables[0].Rows[kayitno]["id"].ToString();
            conn.Open();
            string sec = "select*from sayfabilgileri where sayfano='" + tbid.Text + "'";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, conn);
            da.Fill(ds, "sayfabilgileri");
            if (ds.Tables["sayfabilgileri"].Rows.Count > 0)
            {
                tbicerik.Text = ds.Tables["sayfabilgileri"].Rows[0]["icerik"].ToString();
            }
            else tbicerik.Text = "";
            conn.Close();
        }
    }
}