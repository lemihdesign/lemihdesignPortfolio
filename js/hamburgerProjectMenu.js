const projectNavigation = document.querySelector('.projectNavigation');
const hamburger = document.querySelector('.hamburger');

hamburger.addEventListener('click', function() {
    projectNavigation.classList.toggle('projectNavigation--active');
})