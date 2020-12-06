<?php

function suggestInternships($uid) {
    $query = $GLOBALS['conn']->prepare(
        "SELECT C.Name, I.Role, I.City, I.State, I.Description FROM `Company` C, `Offers` O, `Internship` I, `User` U
        WHERE U_ID = ?
        AND Grade >= MinYear
        AND (WorkAuthorized = 1 OR WorkAuthorization = 0)
        AND C.C_ID = O.Company
        AND I.I_ID = O.Internship
        AND NOT EXISTS (
            SELECT `ISkill` FROM `InternshipSkill` J
            WHERE J.internship = I.I_ID
            AND J.required
            EXCEPT
            SELECT `ISkill` FROM `InternshipSkill` K, `UserSkill` V
            WHERE K.ISkill = V.Skill
            AND K.internship = I.I_ID
            AND V.user = ?
            AND V.yearsExp >= K.yearsExp
        )"
    );
    $query->execute([$uid, $uid]);
    $interns = [];
    while ($entry = $query->fetch()) {
        $interns[] = $entry;
    }
    return $interns;
}

function filterInternships($uid, $pay, $state, $key) {
    $query = $GLOBALS['conn']->prepare(
        "SELECT * FROM `Internship` I, `User` U
        WHERE U_ID = ?
        AND Grade = MinYear
        AND (WorkAuthorized = 1 OR WorkAuthorization = 0)
        AND HourlyPay > ?
        AND State = ?
        AND Description LIKE '%?%'
        AND NOT EXISTS (
            SELECT `skill` FROM `InternshipSkill` J
            WHERE J.internship = I.I_ID
            AND J.required
            EXCEPT
            SELECT `skill` FROM `InternshipSkill` K, `UserSkill` V
            WHERE J.internship = I.I_ID
            AND V.user = ?
            AND V.yearsExp >= K.yearsExp
        )"
    );
    $query->execute([$uid, $pay, $state, $key, $uid]);
    $interns = [];
    while ($entry = $query->fetch()) {
        $interns[] = $entry;
    }
    return $interns;
}

function findPeerAppliedInternships($uid) {
    $query = $GLOBALS['conn']->prepare(
        "SELECT * FROM `Internship` I, `Applied` A, `User` U
        WHERE I.I_ID = A.Internship
        AND U.U_ID = A.User
        AND A.Status LIKE 'accepted'
        AND U.University = (
            SELECT `University` FROM `User`
            WHERE U_ID = ?
        )"
    );
    $query->execute([$uid]);
    $interns = [];
    while ($entry = $query->fetch()) {
        $interns[] = $entry;
    }
    return $interns;
}

?>