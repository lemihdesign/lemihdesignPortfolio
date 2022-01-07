window.addEventListener('scroll', function() {
    const scrollFromTop = window.scrollY;
    if(scrollFromTop > 50) {
        document.querySelector('header').classList.add('active');
    } else if(scrollFromTop ==0 ) {
        document.querySelector('header').classList.remove('active');
    }
})

document.querySelector('.wolontariusz').addEventListener('mouseover', function() {
    document.querySelector('.wolontariuszImage').classList.add('showImage');
    document.querySelector('.wolontariusz').classList.add('projectAreaLabel--active');
    document.querySelector('.wolontariuszDesc').classList.add('projectAreaLabel--active');
})

document.querySelector('.wolontariusz').addEventListener('mouseleave', function() {
    document.querySelector('.wolontariuszImage').classList.remove('showImage');
    document.querySelector('.wolontariusz').classList.remove('projectAreaLabel--active');
    document.querySelector('.wolontariuszDesc').classList.remove('projectAreaLabel--active');
})

document.querySelector('.portfolio').addEventListener('mouseover', function() {
    document.querySelector('.portfolioImage').classList.add('showImage');
    document.querySelector('.portfolio').classList.add('projectAreaLabel--active');
    document.querySelector('.portfolioDesc').classList.add('projectAreaLabel--active');
})

document.querySelector('.portfolio').addEventListener('mouseleave', function() {
    document.querySelector('.portfolioImage').classList.remove('showImage');
    document.querySelector('.portfolio').classList.remove('projectAreaLabel--active');
    document.querySelector('.portfolioDesc').classList.remove('projectAreaLabel--active');
})