<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="consult.aspx.cs" Inherits="ProjetoBOBV.consult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          
    <link href="Scripts/font-awesome.min.css" rel="stylesheet" />
    <link href="Scripts/bootstrap-datetimepicker.css" rel="stylesheet" />
        <script src="Scripts/jquery-1.10.2.js"></script>
        <script src="Scripts/moment-with-locales.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap-datetimepicker.js"></script>
   
       

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <legend>
      <i class="glyphicon glyphicon-plus"></i> Mailing BO
  </legend>
      
        <asp:Label ID="txtmsg" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
         
        <!-- Inicio mailing cabeçalho com os dados do email -->
        <div class="row">
            <div class="col-md-3">
        
        <asp:Label ID="Label36" runat="server" Text="Código do Mailing"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtid" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
           </div>
        <div class="col-md-3">
        <asp:Label ID="Label14" runat="server" Text="Data do E-mail"></asp:Label>
        <asp:TextBox ID="txtdtemail" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    </div>
               <div class="col-md-3">
       
        <asp:Label ID="Label15" runat="server" Text="Canal de Entrada"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcanalentrada" runat="server" CssClass="form-control" ReadOnly="true" ></asp:TextBox>
                   </div>
       <div class="col-md-3">
        
        <asp:Label ID="Label16" runat="server" Text="Protocolo E-mail"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtprotocolo" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
           </div>

    </div>
        <!-- Fim do cabeçalho do email -->
        <!--inicio dados do colaborador -->
        <br />

        <asp:Label ID="Label3" runat="server" Text="Dados do Colaborador" style="font-weight: 700"></asp:Label>
        <hr />
        <asp:Label ID="Label1" runat="server" Text="Nome do Colaborador"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtnomecolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
    
        <div class="row">
         <div class="col-md-4">
         <asp:Label ID="Label2" runat="server" Text="Id do Colaborador"></asp:Label>
        <br />
             
        <asp:TextBox ID="txtidcolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
             <br />
             </div>
             <div class="col-md-4">
             <asp:Label ID="Label4" runat="server" Text="Telefone do Colaborador"></asp:Label>
        <br />
        <asp:TextBox ID="txttelefonecolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
             <br />
                 </div>
             <div class="col-md-4">
                     <asp:Label ID="Label5" runat="server" Text="Email do Colaborador"></asp:Label>
        <br />
        <asp:TextBox ID="txtemailcolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
             <br />
                 </div>
                </div>
        <!-- Fim dados do colaborador -->
        <!-- inicio dados do cliente -->
        <asp:Label ID="Label6" runat="server" Text="Dados do Cliente" style="font-weight: 700"></asp:Label>
        <br />
        <hr />
       
         <asp:Label ID="Label7" runat="server" Text="Nome do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtnomecliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    <div class="row">
        <div class="col-md-4">
         <asp:Label ID="Label8" runat="server" Text="Telefone do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txttelcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
        <div class="col-md-4">
         <asp:Label ID="Label9" runat="server" Text="CPF do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcpfcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
        <div class="col-md-4">
         <asp:Label ID="Label10" runat="server" Text="Email do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtemailcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
         <div class="col-md-4">
         <asp:Label ID="Label11" runat="server" Text="UF do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtufcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
             <div class="col-md-4">
         <asp:Label ID="Label12" runat="server" Text="Cidade do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcidadecliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
         <div class="col-md-4">
         <asp:Label ID="Label17" runat="server" Text="Produto do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtproduto" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>

        </div>

        <asp:Label ID="Label13" runat="server" Text="Outras Informações"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtinformacoes" runat="server" CssClass="form-control" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
        <!-- Fim dados do cliente -->
         <!-- inicio marcação operador -->
          <br />
         <asp:Label ID="Label18" runat="server" Text="Marcação do Operador" style="font-weight: 700"></asp:Label>
        <br />
        <hr />

    <div class="row">
    <div class="col-md-4">
    <asp:Label ID="Label20" runat="server" Text="Status"></asp:Label>
        <br />
        <asp:DropDownList ID="txtstatus" runat="server" CssClass="form-control" required="required">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Fechado</asp:ListItem>
            <asp:ListItem>Em Tratamento</asp:ListItem>
        </asp:DropDownList>

    </div>

          <div class="col-md-2">
    <asp:Label ID="Label21" runat="server" Text="Data Contato"></asp:Label>
        <br />
              <asp:TextBox ID="txtdtcontato" runat="server" CssClass="form-control"  required="required"></asp:TextBox>

    </div>
        <div class="col-md-2">
    <asp:Label ID="Label23" runat="server" Text="Hora Contato" ></asp:Label>
        <br />
              <asp:TextBox ID="txttime" runat="server" CssClass="form-control" TextMode="Time" required="required"></asp:TextBox>

    </div>

           <div class="col-md-4">
    <asp:Label ID="Label22" runat="server" Text="Resultado"></asp:Label>
        <br />
               <asp:DropDownList ID="txtresultado" runat="server" CssClass="form-control" required="required">
                   <asp:ListItem></asp:ListItem>
                   <asp:ListItem>Agendado</asp:ListItem>
                   <asp:ListItem>Em tratamento</asp:ListItem>
                   <asp:ListItem>Fechado</asp:ListItem>
                   <asp:ListItem>Recusa</asp:ListItem>
                   <asp:ListItem>Sem Contato</asp:ListItem>
                   <asp:ListItem>Venda</asp:ListItem>
               </asp:DropDownList>

    </div>



    </div>
        <div class="row">
<div class="col-md-4">
    <asp:Label ID="Label24" runat="server" Text="Sub-Motivo"></asp:Label>
        <br />
               <asp:DropDownList ID="txtsubmotivo" runat="server" CssClass="form-control" required="required">
                   <asp:ListItem></asp:ListItem>
                   <asp:ListItem>Analise pendente  ( Prazo expirado-Siebel/Processo)</asp:ListItem>
                   <asp:ListItem>Area sem dispobilidade de serviços</asp:ListItem>
                    <asp:ListItem>Cliente com restriçao/não aprovado para o plano solicitado (Processo)</asp:ListItem>
                    <asp:ListItem>Cliente desistiu da solicitação</asp:ListItem>
                    <asp:ListItem>Cliente é desconhecido no telefone/ endereço informado</asp:ListItem>
                    <asp:ListItem>Cliente inadimplente / suspenso / bloqueio / fraude</asp:ListItem>
                    <asp:ListItem>Cliente já participa da oferta Fixo/ Movel</asp:ListItem>
                    <asp:ListItem>Cliente não elegível  - Migração de plano (downgrade)</asp:ListItem>
                    <asp:ListItem>Cliente não quis confirmar os dados</asp:ListItem>
                    <asp:ListItem>Cliente solicitou na loja</asp:ListItem>
                    <asp:ListItem>Desistência - Comprou da concorrência</asp:ListItem>
                    <asp:ListItem>Falta de dados do cliente</asp:ListItem>
                    <asp:ListItem>Inviabilidade Oi Velox</asp:ListItem>
                    <asp:ListItem>Motivo financeiros</asp:ListItem>
                    <asp:ListItem>Não aprovado na análise de crédito Oi</asp:ListItem>
                    <asp:ListItem>OS de fixo pendente / cancelado / Prazo expirado</asp:ListItem>
                    <asp:ListItem>Por motivos pessoais</asp:ListItem>
                    <asp:ListItem>Sem contato com cliente</asp:ListItem>
                    <asp:ListItem>Sem viabilidade / CEP inválido para a TV</asp:ListItem>
                    <asp:ListItem>Sem viabilidade de  Velox</asp:ListItem>
                    <asp:ListItem>Sem viabilidade para o fixo</asp:ListItem>
                    <asp:ListItem>Venda realizada por outro canal</asp:ListItem>
                    <asp:ListItem>Agendado retorno</asp:ListItem>
                    <asp:ListItem>Aguardando retorno (Alteração do plano)</asp:ListItem>
                    <asp:ListItem>Deseja outra Oferta</asp:ListItem>
                <asp:ListItem>Venda</asp:ListItem>
               </asp:DropDownList>

    </div>
            <div id="horario">
        <div class="col-md-2">
    <asp:Label ID="Label25" runat="server" Text="Produto Solicitado"></asp:Label>
        <br />
               <asp:DropDownList ID="txtprodutosolicitado" runat="server" CssClass="form-control" required="required">
                   <asp:ListItem></asp:ListItem>
                   <asp:ListItem>Fixo</asp:ListItem>
                   <asp:ListItem>Velox</asp:ListItem>
                   <asp:ListItem>TV </asp:ListItem>
                   <asp:ListItem Value="Pós "></asp:ListItem>
                   <asp:ListItem>Controle</asp:ListItem>
                   <asp:ListItem>2P BL</asp:ListItem>
                   <asp:ListItem>2P TV</asp:ListItem>
                   <asp:ListItem>3P</asp:ListItem>
                   <asp:ListItem>4P</asp:ListItem>
                   <asp:ListItem>Fibra TV+Internet</asp:ListItem>
                   <asp:ListItem>Fibra TV</asp:ListItem>
                   <asp:ListItem>Fibra Internet</asp:ListItem>
                </asp:DropDownList>

    </div>
                </div>
<div class="col-md-2">
    <asp:Label ID="Label26" runat="server" Text="Total de Itens Vendidos"></asp:Label>
        <br />
       <asp:TextBox ID="txtitensvendidos" runat="server" CssClass="form-control" TextMode="number" ></asp:TextBox>         
    </div>
        
     <div class="col-md-2">
    <asp:Label ID="Label27" runat="server" Text="Mensalidades do Produto"></asp:Label>
        <br />
       <asp:TextBox ID="txtmensalidade" runat="server" CssClass="form-control" ></asp:TextBox>         
    </div>
       <div class="col-md-2">
           
    <asp:Label ID="Label28" runat="server" Text="Data da Venda"></asp:Label>
        <br />
           <div class="input-group date">
       <asp:TextBox ID="txtdatavenda" runat="server" CssClass="form-control"></asp:TextBox>  
                <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
               </div>       
    </div>    
        </div>
        <div class="row">
<div class="col-md-3">
    <asp:Label ID="Label29" runat="server" Text="CPF-Venda"></asp:Label>
    <br />
     <asp:TextBox ID="txtcpfvenda" runat="server" CssClass="form-control" TextMode="number" ></asp:TextBox>         
    </div>
<div class="col-md-3">
    <asp:Label ID="Label30" runat="server" Text="OS"></asp:Label>
    <br />
     <asp:TextBox ID="txtos" runat="server" CssClass="form-control"></asp:TextBox>         
    </div>

<div class="col-md-3">
    <asp:Label ID="Label31" runat="server" Text="Data do Agendamento"></asp:Label>
    <br />
     <div class="input-group date">
       <asp:TextBox ID="txtdataagendamento" runat="server" CssClass="form-control"></asp:TextBox>  
                <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
               </div>                
    </div>
<div class="col-md-3">
    <asp:Label ID="Label32" runat="server" Text="MSISDN"></asp:Label>
    <br />
     <asp:TextBox ID="txtmsisdn" runat="server" CssClass="form-control" TextMode="number" required="required"></asp:TextBox>         
    </div>
        </div>

       
<asp:Label ID="Label19" runat="server" Text="1° Tentativa de Contato"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcontato1" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>

        <asp:Label ID="Label33" runat="server" Text="2° Tentativa de Contato"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcontato2" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>

        <asp:Label ID="Label34" runat="server" Text="3° Tentativa de Contato"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcontato3" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
        <!-- fim div container -->

             <br />
        <asp:Button ID="txtsalvar" runat="server" Text="Salvar" CssClass="btn btn-large btn-primary" OnClick="txtsalvar_Click" />
         </div>
     <br />
     <br />

   <script type="text/javascript">
       $(function () {
           $('#ContentPlaceHolder1_txtdatavenda').datetimepicker({

               defaultDate: "08/02/2016",
               locale: 'pt-br'
           });
           $('#ContentPlaceHolder1_txtdataagendamento').datetimepicker({

               defaultDate: "08/02/2016",
               locale: 'pt-br'
           });
       });
            </script>
</asp:Content>
