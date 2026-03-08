<?php
$conn = mysqli_connect("localhost","root","","zastosowania");

if(!$conn) {
    die("Błąd połączenia z bazą danych!". mysqli_connect_error());
}

$login = trim($_POST['login']);
$haslo = trim($_POST['haslo']);

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $login = trim($_POST['login']);
    $haslo = trim($_POST['haslo']);

    $kw = "SELECT * FROM users WHERE login = '$login' AND haslo = '$haslo';";
    $result = mysqli_query($conn,$kw);

    if (mysqli_num_rows($result) > 0) {
        header('Location: index.php');
        exit();
    } else {
        echo "Błędne dane.";
    }
}

$conn->close();
?>