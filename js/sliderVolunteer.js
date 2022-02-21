const imagesTab = ['src/projects/e-volunteer/rawImages/newReport1.jpg', 'src/projects/e-volunteer/rawImages/helpScreen.jpg', 'src/projects/e-volunteer/rawImages/newReport2.jpg', 'src/projects/e-volunteer/rawImages/editReport.jpg', 'src/projects/e-volunteer/rawImages/reports.jpg', 'src/projects/e-volunteer/rawImages/seniorMainDesktop.jpg', 'src/projects/e-volunteer/rawImages/volunteerMainDesktop.jpg', 'src/projects/e-volunteer/rawImages/changePassword.jpg'];
const image = document.querySelector('.sliderImage');
const nextBtn = document.querySelector('.nextBtn');
const prevBtn = document.querySelector('.prevBtn');
let currentImage = 0;

function nextImage() {
    if(currentImage == imagesTab.length - 1 || currentImage > imagesTab.length) {
        currentImage = 0;
    } else {
        currentImage++;
    }

    console.log(currentImage)
    image.src = imagesTab[currentImage];
}

function prevImage() {
    currentImage--;
    if(currentImage < 0) {
        currentImage = imagesTab.length - 1;
    }
    
    console.log(currentImage)
    image.src = imagesTab[currentImage];
}

nextBtn.addEventListener('click', nextImage);
prevBtn.addEventListener('click', prevImage);