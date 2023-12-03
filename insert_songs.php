<?php

if(isset($_GET["song_BPMin"])) {
   //Use & to separate the values in the web server call 
   //to call web server use "IP address"/"file name".php?"parameter"="input"
   
   $song_BPM = $_GET["song_BPMin"]; // get song BPM from HTTP GET
   $unescaped_song_URL = $_GET["song_URLin"]; // need to escape the input
   $song_name = $_GET["song_namein"]; //get song name from HTTP GET

   $servername = "localhost";
   $username = "ESP32";
   $password = "esp32io.com";
   $database_name = "db_esp32songs";

   // Create MySQL connection fom PHP to MySQL server
   $connection = new mysqli($servername, $username, $password, $database_name);
   // Check connection
   if ($connection->connect_error) {
      die("MySQL connection failed: " . $connection->connect_error);
   }

   $song_URL = mysqli_real_escape_string($connection, $unescaped_song_URL);
   $sql = "INSERT INTO tbl_songs (song__BPM, song_URL, song_name) VALUES ('$song_BPM', '$song_URL', '$song_name')";

   if ($connection->query($sql) === TRUE) {
      echo "New record created successfully";
   } else {
      echo "Error: " . $sql . " => " . $connection->error;
   }

   $connection->close();
} else {
   echo "song_BPM or song_URL or song_name is not set in the HTTP request";
}
?>
