<%@ Page Title="Cadastro de Empresas" Language="C#" MasterPageFile="~/MasterPages/SplashScreenMasterPage.master" AutoEventWireup="true" CodeBehind="Business.aspx.cs" Inherits="BugFeed.SignUp.Business" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <asp:UpdatePanel runat="server">
    <ContentTemplate>
      <div class="main-content container-fluid">
        <div class="card card-border-color">
          <div class="row">
            <div class="col-md-12">
              <div class="card-header" style="text-align: center;">
                <img src="/assets/img/logo@2x.png" alt="logo" width="102" height="27" class="logo-img"><span class="splash-description">Digite as informações da empresa.</span>
              </div>
            </div>
          </div>
          <div class="row" style="margin-bottom: -60px">
            <div class="col-lg-6">
              <div class="card card-border-color card-border-color-primary">
                <div class="card-body">
                  <span class="splash-title pb-4">Informacões da empresa</span>
                  <div class="form-group row">
                    <div class="col-6">
                      <asp:TextBox runat="server" ID="txtNome" CssClass="form-control" placeholder="Nome"></asp:TextBox>
                    </div>
                    <div class="col-6">
                      <asp:TextBox runat="server" ID="txtSite" TextMode="Url" CssClass="form-control" placeholder="Site" MaxLength="100"></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group" style="margin-bottom: 19px;">
                    <asp:TextBox runat="server" ID="txtDestinatario" CssClass="form-control" placeholder="Endereço"></asp:TextBox>
                  </div>
                  <div class="form-group" style="margin-bottom: 4px;">
                    <asp:TextBox runat="server" ID="txtComplemento" CssClass="form-control" placeholder="Complemento"></asp:TextBox>
                  </div>
                  <div class="form-group row sign-up">
                    <div class="col-6">
                      <asp:TextBox runat="server" ID="txtBairro" CssClass="form-control" placeholder="Bairro" MaxLength="30"></asp:TextBox>
                    </div>
                    <div class="col-6">
                      <asp:TextBox runat="server" ID="txtCidade" CssClass="form-control" placeholder="Cidade" MaxLength="50"></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group row sign-up">
                    <div class="col-6">
                      <asp:TextBox runat="server" ID="txtEstado" CssClass="form-control" placeholder="Estado" MaxLength="50"></asp:TextBox>
                    </div>
                    <div class="col-6">
                      <asp:TextBox runat="server" ID="txtPais" CssClass="form-control" placeholder="País" MaxLength="2"></asp:TextBox>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card card-border-color card-border-color-primary">
                <div class="card-body">
                  <span class="splash-title pb-4">Informações do usuário</span>
                  <uc:CadastroUsuario runat="server" ID="CadastroUsuario" />
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="splash-container sign-up">
                <div class="form-group pt-3 mb-3">
                  <label class="custom-control custom-checkbox">
                    <asp:CheckBox ID="cbxTermos" runat="server" CssClass="custom-control-input" /><span class="custom-control-label">By creating an account, you agree the <a href="#">terms and conditions</a>.</span>
                  </label>
                </div>
                <div class="form-group pt-2">
                  <asp:Button runat="server" ID="btnCadastrar" CssClass="btn btn-block btn-primary btn-xl" Text="Cadastrar" OnClick="btnCadastrar_Click" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>
