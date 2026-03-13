<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die("Błąd połączenia z bazą danych :(");
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie - admin panel</title>
    <link rel="stylesheet" href="adminpanel.css">
</head>
<body>
    <header><h1>Logowanie do admin panelu</h1></header>

    <section id="logowanie" class="logowanie">
        <form method="POST" action="adminpanel_logowanie.php">
            <label for="login">Login:</label>
            <input type="text" id="login" name="login" required><br><br>

            <label for="haslo">Hasło:</label>
            <input type="password" id="haslo" name="haslo" required><br><br>

            <input type="submit" value="Zaloguj">
            <input type="reset" value="Wyczyść"><br><br>
            <a href="logowanie.php">Logowanie do strony głównej</a>
        </form>

        <?php
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
        ?>
    </section>
</body>
</html>

<?php
$conn->close();
?>