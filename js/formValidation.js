const form = document.querySelector("form");
const sendStatus = form.querySelector('.sendStatus');

form.onsubmit = (e) => {
    e.preventDefault();
    sendStatus.style.display = "block";
    sendStatus.style.color = "green";

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/contactForm.php", true);
    xhr.onload = () => {
        if(xhr.readyState == 4 && xhr.status == 200) {
            let response = xhr.response;
            if(response.indexOf("Pola imię, e-mail oraz wiadomość są polami wymaganymi!") != -1 || response.indexOf("Podaj prawidłowy adres e-mail!") != -1 || response.indexOf("Błąd przy wysyłaniu wiadomości.") != -1) {
                sendStatus.style.color = "crimson";
            } else {
                form.reset();
                setTimeout(() => {
                    sendStatus.style.display = "none";
                }, 3000);
            }
            sendStatus.innerHTML = response;
        }
    }
    let formData = new FormData(form);
    xhr.send(formData);
}

