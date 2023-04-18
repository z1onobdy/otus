<?php
$host = '192.168.33.17';
$user = 'mysql';
$password = 'mysql1234';

$mysqli = new mysqli($host, $user, $password);

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}
echo "Frontend IP address: ", $_SERVER['FE_IP_ADDR'], "\n";
echo "Front-end: ", $_SERVER['FE_SERVER'], "\n";
printf("MYSQL server version: %s\n", $mysqli->server_version);

$mysqli->close();
?>


