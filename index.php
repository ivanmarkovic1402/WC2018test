<?php

    include_once 'database.php';
    include_once 'teams.php';
    include_once 'matches.php';
    include_once 'results.php';



    $url_teams = 'https://worldcup.sfg.io/teams/';
    $content_json_teams = file_get_contents($url_teams);
    $json_array_teams = json_decode($content_json_teams, true);


    $url_matches = 'https://worldcup.sfg.io/matches';
    $content_json_matches = file_get_contents($url_matches);
    $json_array_matches = json_decode($content_json_matches, true);

   

    $url_results = 'https://worldcup.sfg.io/teams/results';
    $content_json_results = file_get_contents($url_results);
    $json_array_results = json_decode($content_json_results, true);






    $database = new Database();
    $db = $database->connect();

    $teams = new Teams($db);

        if(isset($_POST['btn_submit'])){
            $data= [
                'id'=> $_POST['id'],
                'country' => $_POST['country'],
                'alternate_name' => $_POST['alternate_name'],
                'fifa_code' => $_POST['fifa_code'],
                'group_id' => $_POST['group_id'],
                'group_letter' => $_POST['group_letter']
            ];
            $teams->update($data);
        }


        if(isset($_POST['new_btn_submit'])){
            $data= [
                'country' => $_POST['newCountry'],
                'alternate_name' => $_POST['newAlternate_name'],
                'fifa_code' => $_POST['newFifa_code'],
                'group_id' => $_POST['newGroup_id'],
                'group_letter' => $_POST['newGroup_letter']
            ];
            $teams->insert($data);
        }

    $result = $teams->getTeams();
    $num = $result->rowCount();

    


        if($num > 0){
            echo "<b>List of all countries:</b> <br><hr>";
            echo "<table>";
            while($row = $result->fetch(PDO::FETCH_ASSOC)){
                echo "<tr><td colspan='4'>".$row['country']."</td></tr>";

                echo "<form action='' method='post'>";
                    echo "<tr><td><input type='hidden' name='id' value=".$row['id']."></td>";
                    echo "<td><input type='text' name='country' value=".$row['country']."></td>";
                    echo "<td><input type='text' name='alternate_name' value=".$row['alternate_name']."></td>";
                    echo "<td><input type='text' name='fifa_code' value=".$row['fifa_code']."></td>";
                    echo "<td><input type='text' name='group_id' value=".$row['group_id']."></td>";
                    echo "<td><input type='text' name='group_letter' value=".$row['group_letter']."></td>";
                    echo "<td><input type='submit' name='btn_submit' value='Update'></td>";

                echo "</form>";
            }
            echo "</table>";

        }elseif($num == 0){
            $teams->insertJSON($json_array_teams);
        }


    $matches = new Matches($db);
    $resultMatches = $matches->getMatches();
    $numMatches = $resultMatches->rowCount();
    
        if($numMatches == 0){
            $matches->insertJSON($json_array_matches);
        }


    $weatherTemp = $matches->getMatchesWeather();

    // var_dump($weatherTemp);


    // $results = new Results($db);



?>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<hr>
<b>Form for adding new country</b>
<form action="" method="POST">
    <table>
        <tr><td>Country name</td><td><input type="text" name="newCountry"></td></tr>
        <tr><td>Country alternate name</td><td><input type="text" name="newAlternate_name"></td></tr>
        <tr><td>Fifa code</td><td><input type="text" name="newFifa_code"></td></tr>
        <tr><td>Group id</td><td><input type="text" name="newGroup_id"></td></tr>
        <tr><td>Group letter</td><td><input type="text" name="newGroup_letter"></td></tr>
        <tr><td colspan="2"><input type="submit" name="new_btn_submit" value="Add new country"></td></tr>

    </table>
</form>
<hr>
<button><a href='jsonResult.php' target='_blank'>Get JSON with all teams and points,goals,wins,losses,draws....</a></button>
<br>
<hr>
<button id='button'>Get all matches including weather data</button>
<div id='weatherMatches'>
    <?php 
        echo "<br>";
        print_r(json_encode($weatherTemp));
        echo "<br>";
    ?>
    <hr>
</div>

<br><br><br><br><br>
<script>
    $(document).ready(function(){
        $("#weatherMatches").hide();
    });

    $(document).ready(function(){
        $("#button").click(function(){
            $("#weatherMatches").toggle();
        });
    });
</script>