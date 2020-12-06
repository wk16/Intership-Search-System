<?php

function createUser($name, $university, $degree, $major, $grade, $gpa, $wa) {
    $uid = rand();
    $query = $GLOBALS['conn']->prepare("INSERT INTO `User`(
        `U_ID`, `Name`, `University`, `Degree`, `Major`, `Grade`, `GPA`, `WorkAuthorized`
    ) VALUES (
        ?, ?, ?, ?, ?, ?, ?, ?
    )");
    $success = $query->execute([
        $uid, $name, $university, $degree, $major, $grade, $gpa, $wa
    ]);
    return $success ? $uid : 0;
}

function getUser($uid) {
    $query = $GLOBALS['conn']->prepare(
        "SELECT * FROM `User` WHERE U_ID = ?"    
    );
    $query->execute([$uid]);
    if ($entry = $query->fetch()) {
        return $entry;
    }
    return NULL;
}

?>