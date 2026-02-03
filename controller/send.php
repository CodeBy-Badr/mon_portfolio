
<?php

$name = $_POST['name'];
$email = $_POST['email'];
$sujet = $_POST['subject'];
$message = $_POST['message'];
$to = "badraddineaadou@gmail.com";
$headers = "From: " . $email;

// Dir l-condition hna bach tsift l-mail w t-verifiyi l-natija
if (mail($to, $sujet, $message, $headers)) {
    echo "L-mail tsift b-naja7!";
} else {
    echo "Kayn mouchkil, l-mail matsafetch.";
}
