<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if (!$conn) {
    die('błąd połączenia z bazą danych :('. mysqli_connect_error());
}

$nazwa = $_POST['nazwa'];
$czas_rozpadu = $_POST['czas_rozpadu'];
$izotop = $_POST['izotop'];
$jednostka = $_POST['jednostka'];
$zastosowanie = $_POST['zastosowanie'];

$sprawdzenie = "SELECT nazwa FROM pierwiastki;";
$wynik = mysqli_query($conn, $sprawdzenie);

if (mysqli_num_rows($wynik) < 0) {
    echo "Podany izotop jest już wprowadzony do bazy danych";
} else {

    $kw1 = "INSERT INTO pierwiastki(nazwa, czas_rozpadu, izotop, jednostka) VALUES('$nazwa', '$czas_rozpadu', '$izotop', '$jednostka')";

    $kw2 = "INSERT INTO efekty(nazwa, zastosowanie1) VALUES('$nazwa', '$zastosowanie')";

    mysqli_query($conn, $kw1);
    mysqli_query($conn, $kw2);

    header("Location: index.php");
    exit();
}

$conn->close();
?>