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

function getUserSkills($uid) {
    $query = $GLOBALS['conn']->prepare(
        "SELECT * FROM `UserSkill` WHERE User = ?"
    );
    $success = $query->execute([$uid]);
    $skills = [];
    while ($entry = $query->fetch()) {
        $skills[] = $entry['Skill'] . ', ' . $entry['YearsExp'];
    }
    return $skills;
}

?>