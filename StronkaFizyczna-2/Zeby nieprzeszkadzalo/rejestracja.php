<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    echo "Proszę wprowadzić konkretne dane w wyznaczone pola!";
} else {
    header("Location: logowanie.html");
}

$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$login = $_POST['login'];
$haslo = $_POST['password'];

$kw = "INSERT INTO users(imie, nazwisko, login, haslo) VALUES('$imie', '$nazwisko', '$login', '$haslo');";
mysqli_query($conn, $kw);

exit();

$conn->close();
?>