<?php
    $mysqli = new mysqli('localhost', 'appuser', 'LF Tao', 'app');
    mysqli_query($mysqli, 'set names utf8');
    mysqli_query($mysqli, 'set character set utf8');
    if(mysqli_connect_error()){
        die('数据库连接失败'. mysqli_connect_error());
    } else {
        $searchText = $_GET['searchText'];
        $limit = $_GET['limit'];
        $offset = $_GET['offset'];
        if($searchText){
            $query = "select * from things where name like '%$searchText%' or sex like '%$searchText%' or academy like '%$searchText%' or ID like '%$searchText%' or studentID like '%$searchText%' or moreInfo like '%$searchText%' or location like '%$searchText%' order by createAt desc limit $limit offset $offset";
        } else {
            $query  = "select * from things order by createAt desc limit $limit offset $offset";
        }
        $res = $mysqli-> query($query);
        $data = array();
        $data['losts'] = array();
        if($res-> num_rows > 0){
            $i = 0;
            while($row = $res-> fetch_assoc()){
                $data['losts'][$i] = array(
                    'name' => $row['name'],
                    'sex' => $row['sex'],
                    'academy' => $row['academy'],
                    'studentID' => $row['studentID'],
                    'ID' => $row['ID'],
                    'moreInfo' => $row['moreInfo'],
                    'location' => $row['location'],
                    'type' => $row['type'],
                    'createAt' => $row['createAt'],
                    'findBy' => $row['findBy'],
                );
                $i ++;
            }
        }
        echo json_encode($data);
    }
?>