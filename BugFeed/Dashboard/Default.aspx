<%@ Page Language="C#" Title="Dashboard" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BugFeed.Dashboard.Default" MasterPageFile="~/MasterPages/DashboardMasterPage.master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="page-head">
    <h2 class="page-head-title">Panels</h2>
    <nav aria-label="breadcrumb" role="navigation">
      <ol class="breadcrumb page-head-nav">
        <li class="breadcrumb-item"><a href="#">Home</a></li>
        <li class="breadcrumb-item"><a href="#">UI Elements</a></li>
        <li class="breadcrumb-item active">Panels</li>
      </ol>
    </nav>
  </div>
  <div class="main-content container-fluid">
    <div class="row">
      <div class="col-lg-4">
        <div class="card card-flat">
          <div class="card-header">Flat Panel</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-default">
          <div class="card-header">
            <div class="tools"><span class="icon s7-upload"></span><span class="icon s7-edit"></span><span class="icon s7-close"></span></div>
            <span class="title">Default Panel</span>
          </div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-border">
          <div class="card-header"><span class="title">Panel with border</span></div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card">
          <div class="card-header card-header-divider">Panel with subtitle<span class="card-subtitle">Panel subtitle description</span></div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-default">
          <div class="card-header card-header-divider">
            Dismissable panel
                  <div class="tools"><span class="icon mdi mdi-close"></span></div>
            <span class="card-subtitle">Panel subtitle description</span>
          </div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-border">
          <div class="card-header card-header-divider">
            Panel with tools
                  <div class="tools dropdown">
                    <span class="icon mdi mdi-edit"></span><span class="icon mdi mdi-refresh-sync"></span><a href="#" role="button" data-toggle="dropdown" class="dropdown-toggle"><span class="icon mdi mdi-more-vert"></span></a>
                    <div role="menu" class="dropdown-menu float-right">
                      <a href="#" class="dropdown-item">Action</a><a href="#" class="dropdown-item">Another action</a><a href="#" class="dropdown-item">Something else here</a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">Separated link</a>
                    </div>
                  </div>
            <span class="card-subtitle">Panel subtitle description</span>
          </div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card card-contrast">
          <div class="card-header card-header-contrast">Heading contrast<span class="card-subtitle">Panel subtitle description</span></div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-default card-contrast">
          <div class="card-header">
            Body contrast
                  <div class="tools"><span class="icon mdi mdi-close"></span></div>
            <span class="card-subtitle">Panel subtitle description</span>
          </div>
          <div class="card-body card-body-contrast">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.	</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-border card-contrast">
          <div class="card-header card-header-contrast">
            Panel with body contrast
                  <div class="tools"><span class="icon mdi mdi-refresh-sync"></span><span class="icon mdi mdi-close"></span></div>
            <span class="card-subtitle">Panel subtitle description</span>
          </div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio.</p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card card-border-color card-border-color-primary">
          <div class="card-header">Border primary</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-border-color card-border-color-danger">
          <div class="card-header">Border danger</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-border-color card-border-color-warning">
          <div class="card-header">Border warning</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card card-border-color card-border-color-success">
          <div class="card-header">Border success</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-border-color">
          <div class="card-header">Border default</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-border-color card-border-color-dark">
          <div class="card-header">Border dark</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card card-full-primary">
          <div class="card-header">Primary Panel</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-full-danger">
          <div class="card-header">Danger Panel</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-full-warning">
          <div class="card-header">Warning Panel</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card card-full-success">
          <div class="card-header">Success Panel</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-full">
          <div class="card-header">Default Full Panel</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-full-dark">
          <div class="card-header">Dark Panel</div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="card card-full-color card-full-primary">
          <div class="card-header card-header-contrast">
            Success Panel
                  <div class="tools"><span class="icon mdi mdi-close"></span></div>
            <span class="card-subtitle">Panel subtitle description</span>
          </div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-full-color card-full-danger">
          <div class="card-header card-header-contrast">
            Default Full Panel
                  <div class="tools"><span class="icon mdi mdi-close"></span></div>
            <span class="card-subtitle">Panel subtitle description</span>
          </div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card card-full-color card-full-warning">
          <div class="card-header card-header-contrast">
            Dark Panel
                  <div class="tools"><span class="icon mdi mdi-close"></span></div>
            <span class="card-subtitle">Panel subtitle description</span>
          </div>
          <div class="card-body">
            <p>Quisque gravida aliquam diam at cursus, quisque laoreet ac lectus a rhoncusac tempus odio. </p>
            <p>Aliquam posuere volutpat turpis, ut euimod diam pellentesque at. Sed sit amet nulla a dui dignisim euismod. Morbi luctus elementum dictum. Donec convallis mattis elit id varius. Quisque facilisis sapien quis mauris, erat condimentum.</p>
          </div>
        </div>
      </div>
    </div>
  </div>

</asp:Content>