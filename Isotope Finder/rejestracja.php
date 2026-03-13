<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    echo "Proszę wprowadzić konkretne dane w wyznaczone pola!";
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejestracja</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header><h1>Rejestracja!</h1></header>

    <div class="rejestracja" id="rejestracja">
        <form method="POST" class="form_rejestracja" id="form_rejestracja">
            <table>
                <tr>
                    <td><label for="imie">Imię:</label></td>
                    <td><input type="text" placeholder="Jan" required name="imie"></td>
                </tr>
                <tr>
                    <td><label for="nazwisko">Nazwisko:</label></td>
                    <td><input type="text" placeholder="Kowalski" name="nazwisko" required></td>
                </tr>
                <tr>
                    <td><label for="login">Login:</label></td>
                    <td><input type="number" maxlength="6" placeholder="123456" name="login" required></td>
                </tr>
                <tr>
                    <td><label for="haslo">Hasło:</label></td>
                    <td><input type="password" placeholder="IDoPieca123!" maxlength="12" name="haslo" required></td>
                </tr>
                <tr>
                    <td><label for="powtorka">Powtórz hasło:</label></td>
                    <td><input type="password" placeholder="IDoPieca123!" maxlength="12" name="haslo" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="zarejestruj się"></td>
                    <td><input type="reset" value="wyczyść"></td>
                </tr>
            </table>
            <?php
                if($_SERVER["REQUEST_METHOD"] == "POST") {

                $imie = $_POST['imie'];
                $nazwisko = $_POST['nazwisko'];
                $login = $_POST['login'];
                $haslo = $_POST['haslo'];

                $kw = "INSERT INTO users(imie, nazwisko, login, haslo) VALUES('$imie', '$nazwisko', '$login', '$haslo')";
                mysqli_query($conn, $kw);
                }
                ?>
        </form>
        <a href="logowanie.php">Powrót do logowania</a>
</div>

    <footer>&#128522; &#128513; &#128578; Autor: Tomek D z klasy 4c &#128578; &#128513; &#128522;</footer>
</body>
</html>

<?php
$conn->close();
?>