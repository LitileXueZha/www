<?php
/**
 * Created by PhpStorm.
 * User: 战不败象征
 * Date: 2016/10/25
 * Time: 18:58
 */
$mysqli = new mysqli('127.0.0.1','root','123456','exampledb');
$find = $_GET['find'];
$query = '';
switch ($find){
    case 'country':
        $query = 'select id,countryName from country';
        break;
    case 'states':
        $query = 'select id,stateName from states where countryId='.$_GET['id'];
        break;
    case 'towns':
        $query = 'select id,townName from towns where stateId='.$_GET['id'];
        break;
    case 'information':
        $query = 'select id,description from towninfo where townId='.$_GET['id'].' limit 1';
        break;
}
if ($mysqli->query($query)){
    $result = $mysqli->query($query);
    if ($find == 'information'){
        if($result->num_rows > 0){
            $row = $result->fetch_array();
            echo $row[1];
        }
        else{
            echo '我没写信息 ->_->';
        }
    }
    else{
        ?>
        <option class="list-group-item" value="">选择：</option>
<?php
        while ($row = $result->fetch_array()){
    ?>
    <option class="list-group-item" value="<?php echo $row[0]; ?>"> &nbsp;&nbsp;<?php echo $row[1]; ?></option>
    <?php
        }
    }
}
?>