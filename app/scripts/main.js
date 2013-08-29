// Sticky navigation JS
//Based off of the ever-awesome HappyCog site! http://happycog.com/
$(document).ready(function () {
  var $nav = $('#nav'); // Define nav by element ID
  var $navSpacer = $('<div />', {// Define nav spacer
    "class": "nav-drop-spacer",
    "height": $nav.outerHeight()
  });
  if ($nav.length) //if $nav exists...
  {
    $(window).scroll(function ()// On window scroll...
    {
      //If $nav isn't already fixed and page has scrolled down past nav...
      if (!$nav.hasClass('fix') && $(window).scrollTop() > $nav.offset().top)
      {
        $nav.before($navSpacer);// Add nav spacer before nav element
        $nav.addClass("fix");// Fix nav element via CSS class
      }
      //Otherwise, unfix $nav and nuke the spacer
      else if ($nav.hasClass('fix')  && $(window).scrollTop() < $navSpacer.offset().top)
      {
        $nav.removeClass("fix");// Unfix nav element
        $navSpacer.remove();// Remove nav spacer
      }
    });
  }
});
