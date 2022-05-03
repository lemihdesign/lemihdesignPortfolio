<?php
    $reportType = $_POST['reportType'];
    $clientName = $_POST['clientName'];
    $clientEmail = $_POST['email'];
    $msg = $_POST['msg'];

    if(!empty($clientName) && !empty($clientEmail) && !empty($msg)) {
        if(filter_var($clientEmail, FILTER_VALIDATE_EMAIL)) {
            $receiver = "hello@lemiszewski.pl";
            $subject = "[$reportType] Od: $clientName <$clientEmail>";
            $body = "Imię: $clientName\nEmail: $clientEmail\nTyp sprawy: $reportType\nWiadomość: $msg";
            $sender = "Od: $clientName";

            if(mail($receiver, $subject, $body, $sender)) {
                echo "Wiadomość wysłana. Oczekuj wiadomości zwrotnej pod podanym adresem e-mail.";
            } else {
                echo "Błąd przy wysyłaniu wiadomości.";
            }
        } else {
            echo "Podaj prawidłowy adres e-mail!";
        }
    } else {
        echo "Pola imię, e-mail oraz wiadomość są polami wymaganymi!";
    }
?>