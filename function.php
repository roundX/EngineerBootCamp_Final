<?php

// DB接続
function jointDB()
{
    try {
        $pdo = new PDO('mysql:dbname=What_do_you_watch;charset=utf8;host=localhost', 'root', '');
    } catch (PDOException $e) {
        exit('DbConnectError:' . $e->getMessage());
    }

    return $pdo;
}
