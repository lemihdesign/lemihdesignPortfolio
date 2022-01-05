window.addEventListener('scroll', function() {
    console.log('dziala')
    const scrollFromTop = window.scrollY;
    console.log(scrollFromTop)
    if(scrollFromTop > 50) {
        document.querySelector('header').classList.add('active');
    } else if(scrollFromTop ==0 ) {
        document.querySelector('header').classList.remove('active');
    }
})