<?php

    class Results{

        private $conn;
            
        public function __construct($db){
            $this->conn = $db;
        }


        public function getWins($country){
            $stage_name = $this->stageName($country);
            $wins = 0;

            foreach($stage_name as $value){

                if($value['stage_name'] == 'First stage'){
                    $winsGroup = $this->getWinsGroup($country);
                    for($i=0;$i<count($winsGroup);$i++){
                        $wins +=  $winsGroup[$i]['COUNT(winner)'];
                    }
                }elseif($value['stage_name'] == 'Round of 16'){
                    $roundName = 'Round of 16';
                    $win = $this->getGoalsNotGroup($country,$roundName);  
                    $wins += $win;
                
                }elseif($value['stage_name'] == 'Quarter-finals'){
                    $roundName = 'Quarter-finals';
                    $win = $this->getGoalsNotGroup($country,$roundName);  
                    $wins += $win;
                
                }elseif($value['stage_name'] == 'Semi-finals'){
                    $roundName = 'Semi-finals';
                    $win = $this->getGoalsNotGroup($country,$roundName);  
                    $wins += $win;
                
                }elseif($value['stage_name'] == 'Play-off for third place'){
                    $roundName = 'Play-off for third place';
                    $win = $this->getGoalsNotGroup($country,$roundName);  
                    $wins += $win;
                
                }elseif($value['stage_name'] == 'Final'){
                    $roundName = 'Final';
                    $win = $this->getGoalsNotGroup($country,$roundName);  
                    $wins += $win;
                
                }

            }

            return $wins;
        }



        public function getDraws($country){
            $stage_name = $this->stageName($country);
            $draws = 0;

            foreach($stage_name as $value){

                if($value['stage_name'] == 'First stage'){
                    $drawsGroup = $this->getDrawsGroup($country);
                    for($i=0;$i<count($drawsGroup);$i++){
                        $draws +=  $drawsGroup[$i]['COUNT(winner)'];
                    }
                }elseif($value['stage_name'] == 'Round of 16'){
                    $roundName = 'Round of 16';
                    $draw = $this->getDrawsNoGroup($country,$roundName);  
                    $draws += $draw;
                
                }elseif($value['stage_name'] == 'Quarter-finals'){
                    $roundName = 'Quarter-finals';
                    $draw = $this->getDrawsNoGroup($country,$roundName);  
                    $draws += $draw;
                
                }elseif($value['stage_name'] == 'Semi-finals'){
                    $roundName = 'Semi-finals';
                    $draw = $this->getDrawsNoGroup($country,$roundName);  
                    $draws += $draw;
                
                }elseif($value['stage_name'] == 'Play-off for third place'){
                    $roundName = 'Play-off for third place';
                    $draw = $this->getDrawsNoGroup($country,$roundName);  
                    $draws += $draw;
                
                }elseif($value['stage_name'] == 'Final'){
                    $roundName = 'Final';
                    $draw = $this->getDrawsNoGroup($country,$roundName);  
                    $draws += $draw;
                
                }

            }

            return $draws;
        }



        public function getWinsGroup($country){
            $query = "SELECT COUNT(winner)
                      FROM matches
                      WHERE winner = '$country' AND stage_name='First stage'";

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $wins = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $wins;
        }

        public function getGoalsNotGroup($country,$roundName){
            $query="SELECT m.id, m.home_team_country, m.away_team_country
                    FROM matches m
                    WHERE (m.home_team_country='$country' OR m.away_team_country='$country') AND m.stage_name='$roundName'";
                    $stmt = $this->conn->prepare($query);
                    $stmt->execute();
                    $roundName = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $wins = 0;
                    foreach($roundName as $value){
                        $matchId = $value['id'];
                        $gameResult = $this->goalsTeamMatch($matchId, $country);
                        if($gameResult[0]['homeCountry'] == $country){
                            if($gameResult[0]['homeGoals'] > $gameResult[0]['awayGoals']){
                                $wins += 1;
                            }
                        }elseif($gameResult[0]['awayCountry'] == $country){
                            if($gameResult[0]['awayGoals'] > $gameResult[0]['homeGoals']){
                                $wins += 1;
                            }
                        }

                    }
            return $wins;
        }

        public function goalsTeamMatch($matchId,$country){
            $query = "SELECT h.goals as homeGoals, a.goals as awayGoals, h.country as homeCountry, a.country as awayCountry
                      FROM home_team h, away_team a
                      WHERE h.match_id = '$matchId' AND a.match_id = '$matchId'";

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $wins = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $wins;
        }


        public function getDrawsGroup($country){
            $query = "SELECT COUNT(winner)
                      FROM matches
                      WHERE winner = 'Draw' AND stage_name='First stage' AND ( home_team_country='$country' OR away_team_country='$country')";

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $draws = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $draws;
        }

        public function getDrawsNoGroup($country, $roundName){
            $query="SELECT m.id, m.home_team_country, m.away_team_country
                    FROM matches m
                    WHERE (m.home_team_country='$country' OR m.away_team_country='$country') AND m.stage_name='$roundName'";
                    $stmt = $this->conn->prepare($query);
                    $stmt->execute();
                    $roundName = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $draws = 0;
                    foreach($roundName as $value){
                        $matchId = $value['id'];
                        $gameResult = $this->goalsTeamMatch($matchId, $country);
                        if($gameResult[0]['homeCountry'] == $country){
                            if($gameResult[0]['homeGoals'] == $gameResult[0]['awayGoals']){
                                $draws += 1;
                            }
                        }elseif($gameResult[0]['awayCountry'] == $country){
                            if($gameResult[0]['awayGoals'] == $gameResult[0]['homeGoals']){
                                $draws += 1;
                            }
                        }

            }
            return $draws;
        }


        public function stageName($country){
            $query = "SELECT DISTINCT stage_name
                      FROM matches m
                      WHERE home_team_country='$country' OR away_team_country ='$country'";

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $stageName = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $stageName;
        }


        public function gamesPlayed($country){
            $query = "SELECT COUNT(stage_name)
                      FROM matches m
                      WHERE home_team_country='$country' OR away_team_country ='$country'";

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $gamesPlayed = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $gamesPlayedTotal = $gamesPlayed[0]['COUNT(stage_name)'];
            return $gamesPlayedTotal;
        }

        public function getLosses($country){
            $gamesTotal = $this->gamesPlayed($country);
            $gamesWin = $this->getWins($country);
            $gamesDraw = $this->getdraws($country);

            $gamesLost = $gamesTotal-$gamesWin-$gamesDraw;
            return $gamesLost;
        }

        public function getPoints($country){                //kao na JSON-u koji ste poslali ali bodovi se dobijaju samo u grupi
            $gamesWin = $this->getWins($country);
            $pointsWin = 3*$gamesWin;
            $gamesDraw = $this->getDraws($country);
            $pointsDraw = 1*$gamesDraw;
            // $gamesLost = $this->getLosses($country);
            $totalPoints = $pointsWin+$pointsDraw;
            return $totalPoints;
        }

        public function getPointsGroup($country){                //samo bodovi ostavreni u grupi
            $gamesWin = $this->getWinsGroup($country);
            $gamesWin2 = $gamesWin[0]['COUNT(winner)'];
            $pointsWin = 3*$gamesWin2;

            $gamesDraw = $this->getDrawsGroup($country);
            $gamesDraw2 = $gamesDraw[0]['COUNT(winner)'];
            $pointsDraw = 1*$gamesDraw2;
            $totalPointsGroup = $pointsWin+$pointsDraw;
            return $totalPointsGroup;
        }



        public function goalsFor($country){
            $homeGoals = $this->homeGoals($country);
            $awayGoals = $this->awayGoals($country);

            for($i=0;$i<count($homeGoals);$i++){
                $numGoals[]=$homeGoals[$i]['goals'];
            }
            for($i=0;$i<count($awayGoals);$i++){
                $numGoals[]=$awayGoals[$i]['goals'];
            }

            $totalGoals = 0;
            for($i=0;$i<count($numGoals);$i++){
                $totalGoals +=  $numGoals[$i];
            }
            return $totalGoals;
        }



        public function homeGoals($country){
            $query = "SELECT goals
                      FROM home_team h
                      WHERE h.country='$country'";

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $homeGoals = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $homeGoals;
        }

        public function awayGoals($country){
            $query = "SELECT goals
                      FROM away_team a
                      WHERE a.country='$country'";

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $awayGoals = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $awayGoals;
        }


        public function goalsAgainst($country){
            $query="SELECT m.id, m.home_team_country, m.away_team_country
                    FROM matches m
                    WHERE m.home_team_country='$country' OR m.away_team_country='$country'";
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $against1 = $stmt->fetchAll(PDO::FETCH_ASSOC);

            foreach($against1 as $value){
                $matchId = $value['id'];
                if($country != $value['home_team_country']){
                    $query="SELECT h.goals
                            FROM home_team h
                            WHERE h.match_id='$matchId'";
                    $stmt = $this->conn->prepare($query);
                    $stmt->execute();
                    $against[] = $stmt->fetchAll(PDO::FETCH_ASSOC);
                }elseif($country == $value['home_team_country']){
                    $query="SELECT a.goals
                            FROM away_team a
                            WHERE a.match_id='$matchId'";
                    $stmt = $this->conn->prepare($query);
                    $stmt->execute();
                    $against[] = $stmt->fetchAll(PDO::FETCH_ASSOC);
                }
               
            } 
            $totalGoalsAgainst = 0;
            for($i=0;$i<count($against);$i++){
                $totalGoalsAgainst +=  $against[$i][0]['goals'];
            }
            return $totalGoalsAgainst;
        }


        public function goal_differential($country){
            $goalsScored = $this->goalsFor($country);
            $goalsAgainst = $this->goalsAgainst($country);
            $goalsDiff = $goalsScored - $goalsAgainst;
            return $goalsDiff;
        }




    }

?>