<?php

    class Teams {

        private $conn;
            
        public function __construct($db){
            $this->conn = $db;
        }

        public function insertJSON($json_array_teams){
            foreach($json_array_teams as $value){
                $this->insert($value);
            }
        }

        public function insert($data){
            try{
                $sql = "INSERT INTO teams(country, alternate_name, fifa_code, group_id, group_letter) VALUES(:country, :alternate_name, :fifa_code, :group_id, :group_letter)";
                $query = $this->conn->prepare($sql);
                    $query->bindParam(":country", $data['country']);
                    $query->bindParam(":alternate_name", $data['alternate_name']);
                    $query->bindParam(":fifa_code", $data['fifa_code']);
                    $query->bindParam(":group_id", $data['group_id']);
                    $query->bindParam(":group_letter", $data['group_letter']);
                
                $query->execute();
            }catch(PDOExeption $e){
                echo 'Error: '. $e->getMessage();
            }
        }

        public function getTeams(){
            $query = 'SELECT *
                      FROM teams';

            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            return $stmt;
        }


        public function update($data){
            try{
                $data= [
                    'id' => $data['id'],
                    'country' => $data['country'],
                    'alternate_name' => $data['alternate_name'],
                    'fifa_code' => $data['fifa_code'],
                    'group_id' => $data['group_id'],
                    'group_letter' => $data['group_letter'],
                ];
                $sql = "UPDATE teams SET country=:country, alternate_name=:alternate_name, fifa_code=:fifa_code, group_id=:group_id, group_letter=:group_letter WHERE id=:id";
                $query = $this->conn->prepare($sql);
                $query->execute($data);
            }catch(PDOExeption $e){
                echo 'Error: '. $e->getMessage();
            }
        }

    }

?>

