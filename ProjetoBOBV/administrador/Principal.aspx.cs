using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBOBV.administrador
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdataatual.Text = DateTime.Today.ToString("dd/MM/yyyy");
            string dataatual = DateTime.Today.ToString("yyyy-MM-dd");
            string conn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conn))
            {

                using (SqlCommand cmd = new SqlCommand("select count(id) as TOTAL from tb_lancamento_euindico where dt_venda='" + dataatual + "'and resultado='Venda'"))

                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;

                    con.Open();

                    SqlDataReader read = cmd.ExecuteReader();
                   
                    if (read.Read())

                    {
                        int linhas = 0;
                        linhas = int.Parse(read["TOTAL"].ToString());
                        txtvendaatual.Text = read["TOTAL"].ToString();
                    }

                    else
                    {
                        txtvendaatual.Text = "0";
                          }



                    }
                con.Close();
                //teste


                using (SqlCommand cmd = new SqlCommand("select count(id) as TOTAL from tb_lancamento_euindico where convert(datetime,dt_venda,112) = convert(varchar,getdate()-1,112) and resultado='Venda'"))

                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;

                    con.Open();

                    SqlDataReader read = cmd.ExecuteReader();

                    if (read.Read())

                    {
                        int linhas = 0;
                        linhas = int.Parse(read["TOTAL"].ToString());
                        txtvendad_1.Text = read["TOTAL"].ToString();
                    }

                    else
                    {
                        txtvendaatual.Text = "0";
                    }



                }
                con.Close();
                //fim

            }
            
        }

    }
}