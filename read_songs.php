<?php
$servername = "localhost";
$username = "ESP32";
$password = "esp32io.com";
$dbname = "db_esp32songs";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM tbl_songs";
$result = $conn->query($sql);

// if ($result->num_rows > 0) {
//   // output data of each row
//   while($row = $result->fetch_assoc()) {
//     echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
//   }
// } else {
//   echo "0 results";
// }  
$songs = [];

if ($result->num_rows > 0) { 
  // fetch all data from db into array  
  //$row = $result->fetch_all(MYSQLI_ASSOC);  
  while($row = $result->fetch_assoc()){
    $songs[] = $row;
  } 
}
else {
  echo "No songs in the database";
}   
 
$json_data = json_encode($songs);
echo $json_data;
$conn->close();
?>
