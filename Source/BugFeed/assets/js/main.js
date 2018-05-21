function pageLoad(sender, args) {
  var prm = Sys.WebForms.PageRequestManager.getInstance();
  prm.add_beginRequest(BeginRequestHandler);
  prm.add_endRequest(EndRequestHandler);
}

function BeginRequestHandler(sender, args) {
  toggleLoader(true);
}

function EndRequestHandler(sender, args) {
  toggleLoader(false);
}

function toggleLoader(visible) {
  $loaderWrapper = $('#loader-wrapper');
  if (visible)
    $loaderWrapper.fadeIn(100);
  else
    $loaderWrapper.fadeOut(100);
}

$(document).ready(function () {
  App.init();
  App.masks();
  App.formElements();
});