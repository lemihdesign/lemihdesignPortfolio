const $mainSection = $('.main-section');
const $aboutMeSection = $('.aboutMe-section');
const $projectContainer = $('.projects');
const $projectBox = $('.box');

$(document).on('scroll', function() {
    const scrollValue = $(this).scrollTop();
    const mainSectionFromTop = $mainSection.offset().top;
    const mainSectionHeight = $mainSection.outerHeight();
    const projectSectionFromTop = $projectContainer.offset().top;
    const projectsSectionHeight = $projectContainer.outerHeight();
    const aboutMeSectionFromTop = $aboutMeSection.offset().top;
    const aboutMeSectionHeight = $aboutMeSection.outerHeight();
    
    if(scrollValue > mainSectionFromTop + mainSectionHeight/2 - $(window).height()) {
        $mainSection.addClass('activeTypography');
    } 
    if(scroll > mainSectionFromTop + mainSectionHeight - $(window).height()) {
        $mainSection.removeClass('activeTypography')
    }

    if(scrollValue > projectSectionFromTop + projectsSectionHeight/2 - $(window).height() - 150) {
        $projectBox.addClass('show');
    }
  })

  var screenWidth = $(window).width();
  if(screenWidth < 1024) {
      $('.projectRedirect').on('click', function(e) {
        e.preventDefault();
      })
  }