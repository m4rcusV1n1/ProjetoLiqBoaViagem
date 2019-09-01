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
    public partial class Mostrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            SqlConnection conn = new SqlConnection(@"Data Source=10.49.12.24;Initial Catalog=Oi_Internet;User ID=usr_ctx_oi;Password=oiinternet");

            SqlCommand comm = new SqlCommand("select top 1 * from euindico.cargavarejo where id='" + id + "'", conn);

            /* Aqui no CommandType tem que definir se vai utilizar uma Stored Procedure ou uma query */
            //comm.CommandType = CommandType.StoredProcedure; /* Quando usa SP's */
            /* ou */
            comm.CommandType = CommandType.Text; /* Quando usa Query */

            /* paramentros do banco*/

            comm.Parameters.Add(new SqlParameter("@id", "id"));
            comm.Parameters.Add(new SqlParameter("@DataEmail", "DataEmail"));
            comm.Parameters.Add(new SqlParameter("@IdColaborador", "IdColaborador"));
            comm.Parameters.Add(new SqlParameter("@TelefoneColaborador", "TelefoneColaborador"));
            comm.Parameters.Add(new SqlParameter("@EmailColaborador", "EmailColaborador"));
            comm.Parameters.Add(new SqlParameter("@NomeCliente", "NomeCliente"));
            comm.Parameters.Add(new SqlParameter("@NomeColaborador", "NomeColaborador"));
            comm.Parameters.Add(new SqlParameter("@TelefoneCliente", "TelefoneCliente"));
            comm.Parameters.Add(new SqlParameter("@CPFCliente", "CPFCliente"));
            comm.Parameters.Add(new SqlParameter("@EmailCliente", "EmailCliente"));
            comm.Parameters.Add(new SqlParameter("@UFCliente", "UFCliente"));
            comm.Parameters.Add(new SqlParameter("@CidadeCliente", "CidadeCliente"));
            comm.Parameters.Add(new SqlParameter("@OutrasInformacoes", "OutrasInformacoes"));
            comm.Parameters.Add(new SqlParameter("@ProdutoInteresse", "ProdutoInteresse"));
            comm.Parameters.Add(new SqlParameter("@ProtocoloEmail", "ProtocoloEmail"));


            conn.Open();
            DbDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                /* dados do banco x text box */
                txtid.Text = dr["id"].ToString();
                txtdtemail.Text = dr["DataEmail"].ToString();
                txtidcolaborador.Text = dr["IdColaborador"].ToString();
                txttelefonecolaborador.Text = dr["TelefoneColaborador"].ToString();
                txtemailcolaborador.Text = dr["EmailColaborador"].ToString();
                txtnomecliente.Text = dr["NomeCliente"].ToString();
                txtnomecolaborador.Text = dr["NomeColaborador"].ToString();
                txttelcliente.Text = dr["TelefoneCliente"].ToString();
                txtcpfcliente.Text = dr["CPFCliente"].ToString();
                txtemailcliente.Text = dr["EmailCliente"].ToString();
                txtufcliente.Text = dr["UFCliente"].ToString();
                txtcidadecliente.Text = dr["CidadeCliente"].ToString();
                txtinformacoes.Text = dr["OutrasInformacoes"].ToString();
                txtproduto.Text = dr["ProdutoInteresse"].ToString();
                txtprotocolo.Text = dr["ProtocoloEmail"].ToString();



            }
            conn.Close();
        }
            //fim do parametro para pouplar dados pessoais

             protected void txtsalvar_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO tb_lancamento_euindico (codigo_mailing, dt_email,canal_entrada, protocolo_email, nome_colaborador, id_colaborador, tel_colaborador, email_colaborador, nome_cliente, tel_cliente, cpf_cliente, email_cliente, uf_cliente, cidade_cliente, produto_cliente, outr_infor_cliente, status_marcacao, dt_contato, hr_contato, resultado, sub_motivo, produto_solicitado, itens_vendidos, mensalidade_produto, dt_venda, cpf_venda, os, dt_agendamento, MSISDN, observacao) values (@codigo_mailing, @dt_email,@canal_entrada, @protocolo_email, @nome_colaborador, @id_colaborador, @tel_colaborador, @email_colaborador, @nome_cliente, @tel_cliente, @cpf_cliente, @email_cliente, @uf_cliente, @cidade_cliente, @produto_cliente, @outr_infor_cliente, @status_marcacao, @dt_contato, @hr_contato, @resultado, @sub_motivo, @produto_solicitado, @itens_vendidos, @mensalidade_produto, @dt_venda, @cpf_venda, @os, @dt_agendamento, @MSISDN, @observacao)"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();

                    cmd.Parameters.AddWithValue("codigo_mailing", txtid.Text);
                    cmd.Parameters.AddWithValue("dt_email", txtdtemail.Text);
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
                    cmd.Parameters.AddWithValue("dt_contato", txtdtcontato.Text);
                    cmd.Parameters.AddWithValue("hr_contato", txttime.Text);
                    cmd.Parameters.AddWithValue("resultado", txtresultado.Text);
                    cmd.Parameters.AddWithValue("sub_motivo", txtsubmotivo.Text);
                    cmd.Parameters.AddWithValue("produto_solicitado", txtprodutosolicitado.Text);
                    cmd.Parameters.AddWithValue("itens_vendidos", txtitensvendidos.Text);
                    cmd.Parameters.AddWithValue("mensalidade_produto", txtmensalidade.Text);
                    cmd.Parameters.AddWithValue("dt_venda", txtdatavenda.Text);
                    cmd.Parameters.AddWithValue("cpf_venda", txtcpfvenda.Text);
                    cmd.Parameters.AddWithValue("os", txtos.Text);
                    cmd.Parameters.AddWithValue("dt_agendamento", txtdataagendamento.Text);
                    cmd.Parameters.AddWithValue("MSISDN", txtmsisdn.Text);
                    cmd.Parameters.AddWithValue("observacao", txtob.Text);



                    con.Close();
                    try
                    {
                        con.Open();
                        using (SqlConnection con1 = new SqlConnection(@"Data Source=10.49.12.24;Initial Catalog=Oi_Internet;User ID=usr_ctx_oi;Password=oiinternet"))
                        {
                            using (SqlCommand cmd1 = new SqlCommand("update euindico.cargavarejo set Status_fechamento = @Status_fechamento where id='" + txtid.Text + "'", con))
                            {

                                string Status_fechamento = "4";
                                cmd1.Parameters.AddWithValue("Status_fechamento", Status_fechamento);

                                con1.Open();
                                cmd1.ExecuteNonQuery();
                            }
                        }
                        if (cmd.ExecuteNonQuery() > -1)
                        {
                            Response.Write("<script type='text/javascript'>alert('Cadastrado Com Sucesso');</script>");
                            //lblMensagem.InnerText = "Atestado cadastrado com sucesso.";
                            Response.Redirect("MailingAtribuidos.aspx");


                        }
                    }
                    catch (Exception ex)
                    {
                        //lblMensagem.InnerText = "Erro ao cadastrar post.\n" + ex.Message;
                        Response.Write("<script type='text/javascript'>alert('Erro ao cadastrar.\n');</script>" + ex.Message);
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
