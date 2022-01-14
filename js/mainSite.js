$(document).on('scroll', function() {
    const scrollValue = $(this).scrollTop();
    const $mainSection = $('.main-section');
    const mainSectionFromTop = $mainSection.offset().top;
    const mainSectionHeight = $mainSection.outerHeight();
    
    if(scrollValue > mainSectionFromTop + mainSectionHeight/2 - $(window).height()) {
        $mainSection.addClass('activeTypography');
    } 
    if(scroll > mainSectionFromTop + mainSectionHeight - $(window).height()) {
        $mainSection.removeClass('activeTypography')
    }
  })

  var screenWidth = $(window).width();
  if(screenWidth < 1024) {
      $('.projectRedirect').on('click', function(e) {
        e.preventDefault();
      })
  }