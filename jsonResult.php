<?php
    include_once 'database.php';
    include_once 'teams.php';
    include_once 'matches.php';
    include_once 'results.php';

    $database = new Database();
    $db = $database->connect();

    $teams = new Teams($db);
    $teamsAll = $teams->getTeams();
    $num = $teamsAll->rowCount();

    $results = new Results($db);

    if($num > 0){
        $json_array = array();
        while($row = $teamsAll->fetch(PDO::FETCH_ASSOC)){
            
                $goalsFor = $results->goalsFor($row['country']);                               //vraca broj datih golova
                $goalsAgainst = $results->goalsAgainst($row['country']);                       //vraca broj primljenih golova
                $goal_differential = $results->goal_differential($row['country']);             //vraaca gol razliku
                $getWins = $results->getWins($row['country']);                                 //vraca broj pobeda
                $getDraws = $results->getDraws($row['country']);                                 //vraca broj neresenih
                $gamesPlayed = $results->gamesPlayed($row['country']);                            //vraca broj odigranih utakmica                      
                $getLosses = $results->getLosses($row['country']);                               //vraca broj izgubljenih utakmica 
                $getPoints = $results->getPoints($row['country']);                                //vraca poene ukupno
                $getPointsGroup = $results->getPointsGroup($row['country']);                      //vraca broj bodova u grupi ali nisam ubacivao dole jer je u zadataku ukupan broj bodova 
                
                $json_array = array(
                    'id' => $row['id'],
                    'country' => $row['country'],
                    'alternate_name' => $row['alternate_name'],
                    'fifa_code' => $row['fifa_code'],
                    'group_id' => $row['group_id'],
                    'group_letter' => $row['group_letter'],
                    'wins' => $getWins,
                    'draws' => $getDraws,
                    'losses' => $getLosses,
                    'games_played' => $gamesPlayed,
                    'points' => $getPoints,
                    'goals_for' => $goalsFor,
                    'goals_against' => $goalsAgainst,
                    'goal_differential' => $goal_differential,
                );
                $json_arr[]=$json_array;

        }
    }

 

    echo "<br>";
        print_r(json_encode($json_arr));
    echo "<br>";



?>