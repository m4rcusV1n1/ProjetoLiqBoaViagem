<%@ Page Title="" Language="C#" MasterPageFile="~/administrador/administrador.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="ProjetoBOBV.administrador.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<legend>
      <i class="glyphicon glyphicon-home" style="margin-left:15px;"></i> Página Principal<br />
        </legend>
<div class="row" style="margin-left:50px;">
    <div class="col-md-5">
<div class="list-group text-center">
  <a href="#" class="list-group-item active">
    <h4 class="list-group-item-heading">Qtd Venda D-1</h4>
    <h1 class="list-group-item-text">
        <asp:Label ID="txtvendad_1" runat="server" Text=""></asp:Label></h1>
  </a>
</div>
    </div>

        <div class="col-md-5">
<div class="list-group text-center">
  <a href="#" class="list-group-item active">
    <h4 class="list-group-item-heading">Qtd Venda <asp:Label ID="txtdataatual" runat="server" Text=""></asp:Label></h4>
    <h1 class="list-group-item-text">
        <asp:Label ID="txtvendaatual" runat="server" Text=""></asp:Label></h1>
  </a>
</div>
    </div>
</div>

<hr />

    <table class="table">
  <thead>
    <tr>
      <th>Intervalo</th>
      <th>09:00</th>
        <th>10:00</th>
        <th>11:00</th>
        <th>12:00</th>
        <th>13:00</th>
        <th>14:00</th>
        <th>15:00</th>
        <th>16:00</th>
        <th>17:00</th>
        <th>18:00</th>
        <th>19:00</th>
        <th>20:00</th>
        <th>21:00</th>
        <th>22:00</th>
        
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Fixo</th>
    <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        </tr>
      <tr>
        <th>Velox</th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>

      <tr>
        <th>TV</th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>

      <tr>
        <th>Pós </th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>

      <tr>
        <th>Controle </th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>


       <tr>
        <th>4P </th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>

        <tr>
        <th>3PM </th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
      <tr>
        <th>3PRES </th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>


      <tr>
        <th>2PRES </th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>


      
      <tr>
        <th>OS ÚNICA </th>
           <td>0</td>
<td>0</td>
      <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
  </tbody>
</table>
</asp:Content>
