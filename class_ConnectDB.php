<?php
class ConnectDB { //Создание класса

  public $db; 
  
  private static $connect = null;
  
  private function __construct() { //Соединение с базой
    $this->db = new mysqli("localhost", "root", "", "sensores");
    $this->db->query("SET NAMES 'utf8'");
  }
  
  public static function getObject() {//Проверка на наличие соединения
    if (self::$connect === null) self::$connect = new ConnectDB();
    return self::$connect;
  }
  
  public function __destruct() { //Закрытие соединения
    if ($this->db) $this->db->close();
  }

}