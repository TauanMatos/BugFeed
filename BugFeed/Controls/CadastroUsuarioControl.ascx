<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CadastroUsuarioControl.ascx.cs" Inherits="BugFeed.Controls.CadastroUsuarioControl" %>
<span class="splash-title pb-4">Cadastro Usuário</span>
<div class="form-group row signup-password">
  <div class="col-6">
    <asp:TextBox runat="server" ID="txtNome" CssClass="form-control" placeholder="Nome"></asp:TextBox>
  </div>
  <div class="col-6">
    <asp:TextBox runat="server" ID="txtSobrenome" CssClass="form-control" placeholder="Sobrenome"></asp:TextBox>
  </div>
</div>
<div class="form-group">
  <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" placeholder="Username"></asp:TextBox>
</div>
<div class="form-group">
  <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" CssClass="form-control" placeholder="E-mail"></asp:TextBox>
</div>
<div class="form-group row signup-password">
  <div class="col-6">
    <uc:TextBoxPassword ID="txtPassword" runat="server"></uc:TextBoxPassword>
  </div>
  <div class="col-6">
    <uc:TextBoxPassword ID="txtConfirmaSenha" runat="server"></uc:TextBoxPassword>
  </div>
</div>
<div class="form-group">
  <uc:DatePicker ID="dtDatePicker" runat="server"></uc:DatePicker>
</div>
<div class="form-group pt-3 mb-3">
  <label class="custom-control custom-checkbox">
    <asp:CheckBox ID="cbxTermos" runat="server" CssClass="custom-control-input" /><span class="custom-control-label">By creating an account, you agree the <a href="#">terms and conditions</a>.</span>
  </label>
</div>

