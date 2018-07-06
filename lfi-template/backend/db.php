<?php
function connect() {
    $host = "host=127.0.0.1";
    $port = "port=5432";
    $dbname = "dbname=calem1";
    $cred = "user=postgres password=admin1";

    $db = pg_connect("$host $port $dbname $cred");

    if(!$db) {
        die("Error : Unable to open database<br>");
    }

    echo "Opened database successfully<br>";
}

function query() {
    /*
    $sql = "create table contoh1 (
        id int,
        nama varchar(20),
        umur int,
        primary key(id)
    );";
    */
    $sql = "drop table ccontoh1;";

    try {
        $ret = pg_query($db, $sql);
        echo "Query success!<br>";
    } catch(Exception $e) {
        echo "Query failed! $e<br>";
    }
    
    pg_close($db);
}




?>