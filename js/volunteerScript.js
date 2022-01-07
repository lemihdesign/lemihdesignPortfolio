const images = ['src/projects/e-volunteer/wolontariuszAcceptedReport.png', 'src/projects/e-volunteer/wolontariuszCategory.png', 'src/projects/e-volunteer/wolontariuszVolonteer.png', 'src/projects/e-volunteer/wolontariuszReports.png', 'src/projects/e-volunteer/wolontariuszQ&A.png', 'src/projects/e-volunteer/wolontariuszSenior.png', 'src/projects/e-volunteer/wolontariuszNewReport.png', 'src/projects/e-volunteer/wolontariuszNewReport2.png', 'src/projects/e-volunteer/wolontariuszNewReport3.png', 'src/projects/e-volunteer/wolontariuszAcceptedReport.png'];
const image = document.querySelector('.headerImage');
let activeElement = 0;

function changeElement() {
    activeElement++;
    if(activeElement > images.length - 1) {
        activeElement = 0;
    }
    image.src = images[activeElement];
}

setInterval(changeElement, 4000);