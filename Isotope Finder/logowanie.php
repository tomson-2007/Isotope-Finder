<?php
$conn = mysqli_connect("localhost","root","","zastosowania");

if(!$conn) {
    die("Błąd połączenia z bazą danych!". mysqli_connect_error());
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header><h1>Logowanie do wyszukiwarki zastoswań izotopów</h1></header>
    
    <div class="logowanie" id="logowanie">
        <form action="logowanie.php" method="POST" id="form_logowanie" class="form_logowanie">
            <label for="login">Login:</label>
            <input type="text" required name="login" id="login"><br>

            <label for="haslo">Hasło:</label>
            <input type="password" required name="haslo" id="haslo"><br>

            <input type="reset" value="wyczyść">
            <input type="submit" value="zaloguj się">
        </form>
        <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $kw = "SELECT * FROM users WHERE login = '$login' AND haslo = '$haslo';";
            $result = mysqli_query($conn,$kw);

            if (mysqli_num_rows($result) > 0) {
            header('Location: index.php');
            exit();
            } else {
            echo "Błędne dane.";
            }
        }
        ?>
    </div>

    <div class="brak_konta" id="brak_konta">
        <p>Nie masz jeszcze konta? Zarejestruj się abym mógł na podstawie twoich danych osobowych wziąć kredyt z banku i cię solidnie zadłużyć!</p><br>
        <a href="rejestracja.php">Tutaj się zarejestruj!</a>
    </div>

    <div class="admin_panel" id="admin_panel">
        <a href="adminpanel_logowanie.php">Logowanie do admin panelu</a>
    </div>

    <footer>&#128522; &#128513; &#128578; Autor: Tomek D z klasy 4c &#128578; &#128513; &#128522;</footer>
</body>
</html>

<?php
$conn->close();
?>