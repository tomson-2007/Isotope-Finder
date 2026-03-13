<?php
$conn = mysqli_connect("localhost", "root", "", "zastosowania");

if(!$conn) {
    die("Błąd połączenia z bazą danych!" . mysqli_connect_error());
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stronka fizyczna dla najlepszej nauczycielki fizyki na świecie</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Wyszukiwarka zastosowań izotopów</h1>
    </header>

    <section>
        <div class="zasady" id="zasady">
            <h4>Jak korzystać z wyszukiwarki zastosowań?</h4>
            1. Aby wyszukać zastosowania dla poszczególnych izotopów, należy wpisać nazwę tego izotopu w pole "szukaj"<br>
            2. Następnie trzeba wcisnąć guzik "Szukaj"<br>
            3. Miłego wyszukiwania &#128522;
        </div>

        <hr>

        <div class="wyszukiwanie" id="wyszukiwanie">
            <search>
                <form action="index.php" method="GET">
                    <input type="text" name="szukaj" id="szukaj"><br>
                    <button type="submit" name="wyszukiwanie_przycisk" id="wyszukiwanie_przycisk">Szukaj</button>

                    <a href="index.php">
                        <input type="submit" name="wyczysc_zastosowanie" id="wyczysc_zastosowanie" value="Wyczyść">
                    </a>
                </form>
            </search>
        </div>

        <hr>

        <div class="zastosowanie" id="zastosowanie">
            <?php
            if(isset($_GET['wyszukiwanie_przycisk'])) {
                $slowo = $conn->real_escape_string($_GET['szukaj']);

                $look = "SELECT nazwa, zastosowanie1 FROM efekty WHERE nazwa LIKE '%$slowo%';";
                $result = $conn->query($look);

                echo "<h3>Wyniki dla: " . htmlspecialchars(($slowo)) . "</h3>";

                if($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo "Zastosowanie: <br><br>" . $row["zastosowanie1"] . "<br><hr>";
                    } 
                }
            }
            ?>
        </div>

        <hr>

        <div class="dodawanie" id="dodawanie">
            <h4>Dodaj izotop!</h4>

            <form method="POST" action="wysylanie.php">
                <label for="nazwa">Nazwa izotopu:</label><br>
                <input type="text" name="nazwa" id="nazwa" required><br>

                <label for="czas_rozpadu">Czas rozpadu:</label><br>
                <input type="number" name="czas_rozpadu" id="czas_rozpadu" required><br>

                <label for="izotop">Izotop:</label><br>
                <input type="text" name="izotop" id="izotop" required><br>

                <label for="jednostka">Jednostka:</label><br>
                <input type="text" name="jednostka" id="jednostka" placeholder="sekundy/minuty/godziny/dni/lata" required><br>

                <label for="zastosowania">Zastosowania:</label><br>
                <input type="text" name="zastosowanie" id="zastosowanie" required><br>

                <input type="submit" value="Wyślij!">
                <button type="reset" name="reset">Wyczyść</button>
            </form>
        </div>

        <hr>

        <div class="lista" id="lista">
            Uwaga!!!<br>
            Nie wszystkie izotopy są dodane do wyszukiwarki zastosowań, cała lista jest dostępna w linku poniżej:<br>
            <a href="lista_izotopow.php">Lista dodanych izotopów</a>
        </div>

        <div class="wyloguj" id="wyloguj">
            <form method="POST">
                <button class="wyloguj_przycisk" id="wyloguj_przycisk" name="wyloguj_przycisk" type="submit" method="POST">Wyloguj</button>
            </form>
            <?php
            if(isset($_POST['wyloguj_przycisk'])) {
                header('Location: logowanie.php');
                exit();
            }
            ?>
        </div>
    </section>

    <footer>
    &#128522; &#128513; &#128578; Autor: Tomek D z klasy 4c &#128578; &#128513; &#128522;
    </footer>
</body>
</html>
<?php
$conn -> close();
?>