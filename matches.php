<?php

    class Matches {
        private $conn;
            
        public function __construct($db){
            $this->conn = $db;
        }

        public function insertJSON($json_array_matches){
            foreach($json_array_matches as $value){
                $this->insert($value);
            }
        }

        public function insert($data){
            try{
                $sql = "INSERT INTO matches(venue, location, status, time, fifa_id, attendance, stage_name, home_team_country, away_team_country, datetime, winner, winner_code, last_event_update_at, last_score_update_at) VALUES(:venue, :location, :status, :time, :fifa_id, :attendance, :stage_name, :home_team_country, :away_team_country, :datetime, :winner, :winner_code, :last_event_update_at, :last_score_update_at)";
                $query = $this->conn->prepare($sql);
                    $query->bindParam(":venue", $data['venue']);
                    $query->bindParam(":location", $data['location']);
                    $query->bindParam(":status", $data['status']);
                    $query->bindParam(":time", $data['time']);
                    $query->bindParam(":fifa_id", $data['fifa_id']);
                    $query->bindParam(":attendance", $data['attendance']);
                    $query->bindParam(":stage_name", $data['stage_name']);
                    $query->bindParam(":home_team_country", $data['home_team_country']);
                    $query->bindParam(":away_team_country", $data['away_team_country']);
                    $query->bindParam(":datetime", $data['datetime']);
                    $query->bindParam(":winner", $data['winner']);
                    $query->bindParam(":winner_code", $data['winner_code']);
                    $query->bindParam(":last_event_update_at", $data['last_event_update_at']);
                    $query->bindParam(":last_score_update_at", $data['last_score_update_at']);

                $query->execute();

                $match_id = $this->conn->lastInsertId();

                $sqlWeather = "INSERT INTO weather(match_id, humidity, temp_celsius, temp_farenheit, wind_speed, description) VALUES(:match_id, :humidity, :temp_celsius, :temp_farenheit, :wind_speed, :description)";
                $queryWeather = $this->conn->prepare($sqlWeather);
                    $queryWeather->bindParam(":match_id", $match_id);
                    $queryWeather->bindParam(":humidity", $data['weather']['humidity']);
                    $queryWeather->bindParam(":temp_celsius", $data['weather']['temp_celsius']);
                    $queryWeather->bindParam(":temp_farenheit", $data['weather']['temp_farenheit']);
                    $queryWeather->bindParam(":wind_speed", $data['weather']['wind_speed']);
                    $queryWeather->bindParam(":description", $data['weather']['description']);

                $queryWeather->execute();

                $sqlHomeTeam = "INSERT INTO home_team(match_id, country, code, goals, penalties) VALUES(:match_id, :country, :code, :goals, :penalties)";
                $queryHomeTeam = $this->conn->prepare($sqlHomeTeam);
                    $queryHomeTeam->bindParam(":match_id", $match_id);
                    $queryHomeTeam->bindParam(":country", $data['home_team']['country']);
                    $queryHomeTeam->bindParam(":code", $data['home_team']['code']);
                    $queryHomeTeam->bindParam(":goals", $data['home_team']['goals']);
                    $queryHomeTeam->bindParam(":penalties", $data['home_team']['penalties']);

                $queryHomeTeam->execute();


                $sqlAwayTeam = "INSERT INTO away_team(match_id, country, code, goals, penalties) VALUES(:match_id, :country, :code, :goals, :penalties)";
                $queryAwayTeam = $this->conn->prepare($sqlAwayTeam);
                    $queryAwayTeam->bindParam(":match_id", $match_id);
                    $queryAwayTeam->bindParam(":country", $data['away_team']['country']);
                    $queryAwayTeam->bindParam(":code", $data['away_team']['code']);
                    $queryAwayTeam->bindParam(":goals", $data['away_team']['goals']);
                    $queryAwayTeam->bindParam(":penalties", $data['away_team']['penalties']);

                $queryAwayTeam->execute();

            }catch(PDOExeption $e){
                echo 'Error: '. $e->getMessage();
            }
        }


        public function getMatches(){
            $query = 'SELECT *
                      FROM matches';

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            return $stmt;
        }

        public function getMatchesWeather(){
            $query = 'SELECT *
                      FROM matches m
                      LEFT JOIN weather w ON m.id = w.match_id
                      ORDER BY w.temp_celsius DESC';

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            $weatherTemp = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $weatherTemp;
        }

       
    }

?>