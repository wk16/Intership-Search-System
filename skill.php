<?php

function getSkills() {
    $query = $GLOBALS['conn']->prepare(
        "SELECT * FROM `Skill` WHERE 1"    
    );
    $query->execute([]);
    $skills = [];
    while ($entry = $query->fetch()) {
        $skills[] = $entry['Name'];
    }
    return $skills;
}

?>