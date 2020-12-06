<?php

function addUserSkill($skill, $user, $years) {
    $query = $GLOBALS['conn']->prepare("INSERT INTO `UserSkill`(
        `Skill`, `User`, `YearsExp`
    ) VALUES (
        ?, ?, ?
    )");
    $success = $query->execute([
        $skill, $user, $years
    ]);
    return $success ? True : False;
}

?>