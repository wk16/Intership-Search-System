<head>
    <link rel="stylesheet" type="text/css" href="main.css">
    <link href='https://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet'>
</head>

<?php

error_reporting(-1);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

include 'dbconnect.php';
include 'user.php';
include 'userskill.php';
include 'internship.php';

$uid = 0;
if (isset($_GET['uid'])) {
    $uid = $_GET['uid'];
    $info = getUser($uid);
    if ($info) {
        $name = $info['Name'];
        $university = $info['University'];
        $degree = $info['Degree'];
        $major = $info['Major'];
        $year = $info['Grade'];
        $gpa = $info['GPA'];
        $authorized = $info['WorkAuthorized'];
        $skills = getUserSkills($uid);
    } else {
        $uid = 0;
        $skills = [];
    }
} else if (isset($_GET['name'])) {
    $name = $_GET['name'];
    $university = $_GET['university'];
    $degree = $_GET['degree'];
    $major = $_GET['major'];
    $year = $_GET['year'];
    $gpa = $_GET['GPA'];
    $authorized = isset($_GET['authorized']) ? 1 : 0;
    $uid = createUser(
        $name,
        $university,
        $degree,
        $major,
        $year,
        $gpa,
        $authorized
    );
    $skills = [];
    for ($i = 1; $i < 6; $i++) {
        if (($_GET['skill' . strval($i)] != '---') && ($_GET['years' . strval($i)] > 0)) {
            addUserSkill($_GET['skill' . strval($i)], $uid, $_GET['years' . strval($i)]);
            $skills[] = $_GET['skill' . strval($i)] . ', ' . $_GET['years' . strval($i)];
        }
    }
}
?>


<div class="uid"><h2>Your ID is <?php echo strval($uid); ?></h2></div>
<div class="grid-container">
    <div class="profile">
        <h1>Your Profile:</h1>
<div class="attributes">
    Name: <b><?php echo $name; ?></b><br>
    University: <b><?php echo $university ?></b><br>
    Degree: <b><?php echo $degree; ?></b><br>
    Major: <b><?php echo $major; ?></b><br>
    Year: <b><?php echo $year; ?></b><br>
    GPA: <b><?php echo $gpa; ?></b><br>
    Work Authorized: <b><?php echo $authorized ? 'yes' : 'no'; ?></b><br>
</div>
</div>

<div class="skills">
<br><br><br><h2>Skills:</h2>
<div class="skills">
    <?php
        foreach ($skills as $s) {
            echo $s . ' years <br>';
        }
    ?>
</div>
</div>
</div>

<br><br>
<div class="internships">
<h2>Suggested Internships:</h2>
<div class="internships">
    <?php
        $suggestions = suggestInternships($uid);
        foreach ($suggestions as $i) {
            echo '<div class="internship">' 
                . $i['Name'] . " - "
                . $i['Role'] . " - "
                . $i['City'] . ", "
                . $i['State'] . ": "
                . $i['Description'] 
            . '</div>';
        }
    ?>
</div>
</div>