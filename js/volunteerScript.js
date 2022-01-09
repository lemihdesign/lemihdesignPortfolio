const images = ['src/projects/e-volunteer/rawImages/volunteerDesktop2.jpg', 'src/projects/e-volunteer/rawImages/volunteerMainDesktop.jpg', 'src/projects/e-volunteer/rawImages/reports.jpg', 'src/projects/e-volunteer/rawImages/helpScreen.jpg', 'src/projects/e-volunteer/rawImages/profileScreen.jpg', 'src/projects/e-volunteer/rawImages/seniorMainDesktop.jpg', 'src/projects/e-volunteer/rawImages/newReport1.jpg', 'src/projects/e-volunteer/rawImages/newReport2.jpg', 'src/projects/e-volunteer/rawImages/notifications.jpg', 'src/projects/e-volunteer/rawImages/editReport.jpg'];
const image = document.querySelector('.mainImage');
let activeElement = 0;

function changeElement() {
    activeElement++;
    if(activeElement > images.length - 1) {
        activeElement = 0;
    }
    image.src = images[activeElement];
}

setInterval(changeElement, 4000);