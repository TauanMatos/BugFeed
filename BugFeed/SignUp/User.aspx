<%@ Page Title="Cadastro Usuário" Language="C#" MasterPageFile="~/MasterPages/SplashScreenMasterPage.master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="BugFeed.SignUp.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="be-wrapper be-login be-signup">
    <div class="be-content">
      <div class="main-content container-fluid">
        <div class="splash-container sign-up">
          <div class="card card-border-color card-border-color-primary">
            <div class="card-header">
              <img src="/assets/img/logo@2x.png" alt="logo" width="102" height="27" class="logo-img"><span class="splash-description">Digite suas informações de usuário.</span>
            </div>
            <div class="card-body">
              <uc:CadastroUsuario runat="server" ID="CadastroUsuario"></uc:CadastroUsuario>
              <div class="form-group pt-2">
                <asp:Button runat="server" ID="btnCadastrar" CssClass="btn btn-block btn-primary btn-xl" Text="Cadastrar" OnClick="btnCadastrar_Click" />
              </div>
              <div class="title"><span class="splash-title pb-3">Or</span></div>
              <div class="form-group row social-signup pt-0">
                <div class="col-6">
                  <button type="button" class="btn btn-lg btn-block btn-social btn-facebook btn-color"><i class="mdi mdi-facebook icon icon-left"></i>Facebook</button>
                </div>
                <div class="col-6">
                  <button type="button" class="btn btn-lg btn-block btn-social btn-google-plus btn-color"><i class="mdi mdi-google-plus icon icon-left"></i>Google Plus</button>
                </div>
              </div>
            </div>
          </div>
          <div class="splash-footer">© 2018 BugFeed</div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
