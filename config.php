<?php
define("DB_SERVER", "database-1.clvm1duzjt8u.us-east-1.rds.amazonaws.com");
define("DB_USERNAME", "admin");
define("DB_PASSWORD", "Chaitanya123");
define("DB_NAME", "registered");

# Connection
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

# Check connection
if (!$link) {
  die("Connection failed: " . mysqli_connect_error());
}
