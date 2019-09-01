using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoBOBV
{
    public partial class Principal1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(@"Data Source=appctx06sallm\SQLEXPRESS; Initial Catalog=oi_internet; User Id=sa; Password=todo@2015;");

            SqlCommand comm = new SqlCommand("select top 1 * from tb_lancamento_euindico where resultado in ('Em Tratamento', 'Sem Contato', 'Agendado', '') and status='1' and tentativa3 is null", conn);


            /* Aqui no CommandType tem que definir se vai utilizar uma Stored Procedure ou uma query */
            //comm.CommandType = CommandType.StoredProcedure; /* Quando usa SP's */
            /* ou */
            comm.CommandType = CommandType.Text; /* Quando usa Query */

            /* paramentros do banco*/

            comm.Parameters.Add(new SqlParameter("@id", "id"));
            comm.Parameters.Add(new SqlParameter("@dt_email", "dt_email"));
            comm.Parameters.Add(new SqlParameter("@id_colaborador", "id_colaborador"));
            comm.Parameters.Add(new SqlParameter("@tel_colaborador", "tel_colaborador"));
            comm.Parameters.Add(new SqlParameter("@email_colaborador", "email_colaborador"));
            comm.Parameters.Add(new SqlParameter("@nome_cliente", "nome_cliente"));
            comm.Parameters.Add(new SqlParameter("@nome_colaborador", "nome_colaborador"));
            comm.Parameters.Add(new SqlParameter("@tel_cliente", "tel_cliente"));
            comm.Parameters.Add(new SqlParameter("@cpf_cliente", "cpf_cliente"));
            comm.Parameters.Add(new SqlParameter("@email_cliente", "email_cliente"));
            comm.Parameters.Add(new SqlParameter("@uf_cliente", "uf_cliente"));
            comm.Parameters.Add(new SqlParameter("@cidade_cliente", "cidade_cliente"));
            comm.Parameters.Add(new SqlParameter("@outr_infor_cliente", "outr_infor_cliente"));
            comm.Parameters.Add(new SqlParameter("@produto_solicitado", "produto_solicitado"));
            comm.Parameters.Add(new SqlParameter("@protocolo_email", "protocolo_email"));
            comm.Parameters.Add(new SqlParameter("@status_marcacao", "status_marcacao"));
            comm.Parameters.Add(new SqlParameter("@dt_contato", "dt_contato"));
            comm.Parameters.Add(new SqlParameter("@hr_contato", "hr_contato"));
            comm.Parameters.Add(new SqlParameter("@resultado", "resultado"));
            comm.Parameters.Add(new SqlParameter("@sub_motivo", "sub_motivo"));
            comm.Parameters.Add(new SqlParameter("@itens_vendidos", "itens_vendidos"));
            comm.Parameters.Add(new SqlParameter("@mensalidade_produto", "mensalidade_produto"));
            comm.Parameters.Add(new SqlParameter("@dt_venda", "dt_venda"));
            comm.Parameters.Add(new SqlParameter("@cpf_venda", "cpf_venda"));
            comm.Parameters.Add(new SqlParameter("@dt_agendamento", "dt_agendamento"));
            comm.Parameters.Add(new SqlParameter("@os", "os"));
            comm.Parameters.Add(new SqlParameter("@tentativa1", "tentativa1"));
            comm.Parameters.Add(new SqlParameter("@tentativa2", "tentativa2"));
            comm.Parameters.Add(new SqlParameter("@tentativa3", "tentativa3"));
            comm.Parameters.Add(new SqlParameter("@MSISDN", "MSISDN"));






            conn.Open();
            DbDataReader dr = comm.ExecuteReader();
            if (!dr.HasRows)
            {
                txtmsg.Text = "Não existe mailing para tratamento!";
                txtsalvar.Enabled = false;

            }
            else
            {
                while (dr.Read())
                {


                    /* dados do banco x text box */
                    txtid.Text = dr["id"].ToString();
                    txtdtemail.Text = dr["dt_email"].ToString();
                    txtidcolaborador.Text = dr["id_colaborador"].ToString();
                    txttelefonecolaborador.Text = dr["tel_colaborador"].ToString();
                    txtemailcolaborador.Text = dr["email_colaborador"].ToString();
                    txtnomecliente.Text = dr["nome_cliente"].ToString();
                    txtnomecolaborador.Text = dr["nome_colaborador"].ToString();
                    txttelcliente.Text = dr["tel_cliente"].ToString();
                    txtcpfcliente.Text = dr["cpf_cliente"].ToString();
                    txtemailcliente.Text = dr["email_cliente"].ToString();
                    txtufcliente.Text = dr["uf_cliente"].ToString();
                    txtcidadecliente.Text = dr["cidade_cliente"].ToString();
                    txtinformacoes.Text = dr["outr_infor_cliente"].ToString();
                    txtproduto.Text = dr["produto_solicitado"].ToString();
                    txtprotocolo.Text = dr["protocolo_email"].ToString();
                    txtstatus.Text = dr["status_marcacao"].ToString();
                    txtdtcontato.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
                    txttime.Text = dr["hr_contato"].ToString();
                    txtresultado.Text = dr["resultado"].ToString();
                    txtsubmotivo.Text = dr["sub_motivo"].ToString();
                    txtprodutosolicitado.Text = dr["produto_solicitado"].ToString();
                    txtitensvendidos.Text = dr["itens_vendidos"].ToString();
                    txtmensalidade.Text = dr["mensalidade_produto"].ToString();
                    string datavenda = dr["dt_venda"].ToString();
                    txtdatavenda.Text = System.DateTime.Now.ToString("dd/MM/yyyy");

                    txtcpfvenda.Text = dr["cpf_venda"].ToString();
                    txtdataagendamento.Text = dr["dt_agendamento"].ToString();
                    txtos.Text = dr["os"].ToString();
                    txtcontato1.Text = dr["tentativa1"].ToString();
                    txtcontato2.Text = dr["tentativa2"].ToString();
                    txtcontato3.Text = dr["tentativa3"].ToString();
                    txtmsisdn.Text = dr["MSISDN"].ToString();




                    using (SqlConnection con = new SqlConnection(@"Data Source=appctx06sallm\SQLEXPRESS; Initial Catalog=oi_internet; User Id=sa; Password=todo@2015;"))
                    {
                        using (SqlCommand cmd = new SqlCommand("update tb_lancamento_euindico set status = @status, login = @login where id='" + txtid.Text + "'", con))
                        {
                            string login = (string)(Session["login"]);
                            string Status = "2";
                            cmd.Parameters.AddWithValue("Status", Status);
                            cmd.Parameters.AddWithValue("login", login);
                            con.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }


                }
                conn.Close();
                //fim do parametro para pouplar dados pessoais

            }
        }

        protected void txtsalvar_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("update tb_lancamento_euindico set codigo_mailing = @codigo_mailing,  dt_email = @dt_email, canal_entrada = @canal_entrada, protocolo_email = @protocolo_email, nome_colaborador = @nome_colaborador, id_colaborador = @id_colaborador, tel_colaborador = @tel_colaborador, email_colaborador = @email_colaborador, nome_cliente = @nome_cliente, tel_cliente = @tel_cliente, cpf_cliente = @cpf_cliente, email_cliente = @email_cliente, uf_cliente = @uf_cliente, cidade_cliente = @cidade_cliente, produto_cliente = @produto_cliente, outr_infor_cliente = @outr_infor_cliente, status_marcacao = @status_marcacao,  dt_contato = @dt_contato, hr_contato = @hr_contato, resultado = @resultado, sub_motivo = @sub_motivo, produto_solicitado = @produto_solicitado, itens_vendidos = @itens_vendidos, mensalidade_produto = @mensalidade_produto, dt_venda = @dt_venda,  cpf_venda = @cpf_venda, os = @os,  dt_agendamento = @dt_agendamento, MSISDN = @MSISDN,  tentativa1 = @tentativa1, tentativa2 = @tentativa2, tentativa3 = @tentativa3 where id='" + txtid.Text + "'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    string dt_contato = System.DateTime.Now.ToString("yyyy-MM-dd");

                    cmd.Parameters.AddWithValue("codigo_mailing", txtid.Text);
                    cmd.Parameters.AddWithValue("dt_email", Convert.ToDateTime(txtdtemail.Text).ToString("yyyy-MM-dd"));

                    //cmd.Parameters.AddWithValue("dt_email", txtdtemail.Text);
                    cmd.Parameters.AddWithValue("canal_entrada", txtcanalentrada.Text);
                    cmd.Parameters.AddWithValue("protocolo_email", txtprotocolo.Text);
                    cmd.Parameters.AddWithValue("nome_colaborador", txtnomecolaborador.Text);
                    cmd.Parameters.AddWithValue("id_colaborador", txtidcolaborador.Text);
                    cmd.Parameters.AddWithValue("tel_colaborador", txttelefonecolaborador.Text);
                    cmd.Parameters.AddWithValue("email_colaborador", txtemailcolaborador.Text);
                    cmd.Parameters.AddWithValue("nome_cliente", txtnomecliente.Text);
                    cmd.Parameters.AddWithValue("tel_cliente", txttelcliente.Text);
                    cmd.Parameters.AddWithValue("cpf_cliente", txtcpfcliente.Text);
                    cmd.Parameters.AddWithValue("email_cliente", txtemailcliente.Text);
                    cmd.Parameters.AddWithValue("uf_cliente", txtufcliente.Text);
                    cmd.Parameters.AddWithValue("cidade_cliente", txtcidadecliente.Text);
                    cmd.Parameters.AddWithValue("produto_cliente", txtproduto.Text);
                    cmd.Parameters.AddWithValue("outr_infor_cliente", txtinformacoes.Text);
                    cmd.Parameters.AddWithValue("status_marcacao", txtstatus.Text);
                    cmd.Parameters.AddWithValue("dt_contato", dt_contato);
                    cmd.Parameters.AddWithValue("hr_contato", txttime.Text);
                    cmd.Parameters.AddWithValue("resultado", txtresultado.Text);
                    cmd.Parameters.AddWithValue("sub_motivo", txtsubmotivo.Text);
                    cmd.Parameters.AddWithValue("produto_solicitado", txtprodutosolicitado.Text);
                    cmd.Parameters.AddWithValue("itens_vendidos", txtitensvendidos.Text);
                    cmd.Parameters.AddWithValue("mensalidade_produto", txtmensalidade.Text);

                    if (txtdatavenda.Text == "")
                    {
                        txtdatavenda.Text = "2018-01-01";
                        cmd.Parameters.AddWithValue("dt_venda", txtdatavenda.Text);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("dt_venda", Convert.ToDateTime(txtdatavenda.Text).ToString("yyyy-MM-dd"));
                    }
                    cmd.Parameters.AddWithValue("cpf_venda", txtcpfvenda.Text);
                    cmd.Parameters.AddWithValue("os", txtos.Text);
                    if (txtdataagendamento.Text == "")
                    {
                        txtdataagendamento.Text = "2018-01-01";
                        cmd.Parameters.AddWithValue("dt_agendamento", txtdataagendamento.Text);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("dt_agendamento", Convert.ToDateTime(txtdataagendamento.Text).ToString("yyyy-MM-dd"));
                    }
                    cmd.Parameters.AddWithValue("MSISDN", txtmsisdn.Text);

                    cmd.Parameters.AddWithValue("tentativa1", txtcontato1.Text);

                    cmd.Parameters.AddWithValue("tentativa2", txtcontato2.Text);

                    cmd.Parameters.AddWithValue("tentativa3", txtcontato3.Text);



                    con.Close();
                    try
                    {
                        con.Open();
                        using (SqlConnection con1 = new SqlConnection(@"Data Source=CARITA-PC\SQLEXPRESS; Initial Catalog=oi_internet; User Id=sa; Password=marcus123;"))
                        {
                            using (SqlCommand cmd1 = new SqlCommand("update tb_lancamento_euindico set status = @status where id='" + txtid.Text + "'", con))
                            {

                                string status = "1";
                                cmd1.Parameters.AddWithValue("status", status);

                                con1.Open();
                                cmd1.ExecuteNonQuery();
                            }
                        }
                        if (cmd.ExecuteNonQuery() > -1)
                        {

                            Response.Write("<script type='text/javascript'>alert('Cadastrado Com Sucesso');</script><script type='text/javascript'>window.location.href = 'home.aspx';</script>");
                            //lblMensagem.InnerText = "Atestado cadastrado com sucesso.";



                        }
                    }
                    catch (Exception ex)
                    {
                        //lblMensagem.InnerText = "Erro ao cadastrar post.\n" + ex.Message;
                        Response.Write("<script type='text/javascript'>alert('Erro ao cadastrar.\n') ; </script>" + ex.Message);

                    }

                    finally
                    {
                        con.Close();
                    }




                }
            }
        }
    }
}