using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBOBV.administrador
{
    public partial class administrador : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logado"] == null || (bool)Session["logado"] != true)
            {
                Response.Redirect("Default.aspx");

            }
            else
            {
                if (Session["login"] != null)
                {
                    string login = (string)(Session["login"]);
                    SqlConnection conn = new SqlConnection(@"Data Source=10.49.12.24;Initial Catalog=Oi_Internet;User ID=usr_ctx_oi;Password=oiinternet");
                    SqlCommand comm = new SqlCommand("SELECT * FROM tb_usuario_bo WHERE login='" + login + "'", conn);
                    comm.CommandType = CommandType.Text; /* Quando usa Query */

                    /* paramentros do banco*/
                    comm.Parameters.Add(new SqlParameter("@nome", "nome"));

                    conn.Open();
                    DbDataReader dr = comm.ExecuteReader();

                    while (dr.Read())
                    {

                        txtuser.Text = dr["Nome"].ToString();

                    }
                    conn.Close();


                }
            }
        }
    }
}