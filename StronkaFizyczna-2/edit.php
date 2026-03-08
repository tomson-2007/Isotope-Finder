<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die("Błąd połączenia z bazą danych");
}

// Kwerendy do tabeli users

$kw_users = "SELECT id, imie, nazwisko, login, haslo FROM users;";
$result_users = mysqli_query($conn, $kw_users);

// Kwerendy do tabeli pierwiastki

$kw_pierwiastki = "SELECT id, nazwa, izotop, czas_rozpadu, jednostka FROM pierwiastki;";
$result_pierwiastki = mysqli_query($conn, $kw_pierwiastki);

// Kwerendy do tabeli efekty

$kw_efekty = "SELECT id, nazwa, zastosowanie1 FROM efekty;";
$result_efekty = mysqli_query($conn, $kw_efekty);

// Kwerendy do tabeli administracja_dane i administracja_osoby

$kw_admin = "SELECT administracja_osoby.id, administracja_osoby.imie, administracja_osoby.nazwisko, administracja_osoby.miasto, administracja_osoby.ulica, administracja_dane.login, administracja_dane.haslo FROM administracja_osoby JOIN administracja_dane";
$result_admin = mysqli_query($conn, $kw_admin);

header('Location: adminpanel.php');

$conn->close();
?>