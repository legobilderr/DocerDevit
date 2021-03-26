<?php $value = "World";

$servername = "project-name-mysql";
$username = "exampleuser";
$password = "examplepass";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

require('page-templates/index.html');
//Simplified
//
//$conn = mysqli_connect('localhost', 'username', 'password');
//$database = mysqli_select_db($conn, 'database');

?>
