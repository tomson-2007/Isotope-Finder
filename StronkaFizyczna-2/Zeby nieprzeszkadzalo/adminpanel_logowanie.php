<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die("Błąd połączenia z bazą danych :(");
}

$login = $_POST['login'];
$haslo = $_POST['haslo'];

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $login = trim($_POST['login']);
    $haslo = trim($_POST['haslo']);

    $kw = "SELECT * FROM administracja_dane WHERE login = '$login' AND haslo = '$haslo';";
    $wynik = mysqli_query($conn, $kw);

    if (mysqli_num_rows($wynik) > 0) {
        header('Location: adminpanel.php');
        exit();
    } else {
        echo "Błędne dane. Proszę wrócić do ponownego logowania się!";
    }
}

$conn->close();
?>