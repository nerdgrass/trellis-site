# Sticky navigation JS, based off of the ever-awesome HappyCog site! http://happycog.com/
$(document).ready ->
  $nav = $(".sticky-nav") # Define nav by element ID
  $subnav = $(".sticky-subnav") # Define subnav by ID
  $navSpacer = $("<div />", # Define nav spacer
    class: "nav-drop-spacer"
    height: $nav.outerHeight()
  )
  if $nav.length and $subnav.length #if both subnav and nav exist
    $(window).scroll -> # On window scroll...

      #If $nav isn't already fixed and page has scrolled down past nav...
      if not $nav.hasClass("nav-fix") and $(window).scrollTop() > $nav.offset().top
        $nav.before $navSpacer # Add nav spacer before nav element
        $nav.addClass "nav-fix" # Fix nav element via CSS class
        $subnav.addClass "subnav-fix" # Fix subnav element via CSS class

      #Otherwise, unfix $nav and nuke the spacer
      else if $nav.hasClass("nav-fix") and $(window).scrollTop() < $navSpacer.offset().top
        $nav.removeClass "nav-fix" # Unfix nav element
        $subnav.removeClass "subnav-fix" # Unfix nav element
        $navSpacer.remove() # Remove nav spacer
  else
    $(window).scroll -> # On window scroll...

      #If $nav isn't already fixed and page has scrolled down past nav...
      if not $nav.hasClass("nav-fix") and $(window).scrollTop() > $nav.offset().top
        $nav.before $navSpacer # Add nav spacer before nav element
        $nav.addClass "nav-fix" # Fix nav element via CSS class

      #Otherwise, unfix $nav and nuke the spacer
      else if $nav.hasClass("nav-fix") and $(window).scrollTop() < $navSpacer.offset().top
        $nav.removeClass "nav-fix" # Unfix nav element
        $navSpacer.remove() # Remove nav spacer
