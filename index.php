<?

require_once $_SERVER['DOCUMENT_ROOT'].'/lib/class_ConnectDB.php';

$db = ConnectDB::getObject();

$id = $_POST[id];
$time = $_POST[s_time];
$s1 = $_POST[s1];
$s2 = $_POST[s2];
$s3 = $_POST[s3];
$s4 = $_POST[s4];

//if(!$id)exit;

$file = fopen('sensores.html', 'a');

if(!$file){
  break;
}else{
  
  $db->db->query("INSERT INTO `sensores`.`object1` (`time`, `s1`, `s2`, `s3`, `s4`) VALUES (UNIX_TIMESTAMP(), $s1, $s2, $s3, $s4)");
  
  $string = $id.','.$time.','.$s1.','.$s2.','.$s3.','.$s4.PHP_EOL;
  echo $string;
  fwrite($file, $string);
}
fclose($file);