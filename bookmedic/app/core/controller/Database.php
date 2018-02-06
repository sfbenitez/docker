<?php
class Database {
	public static $db;
	public static $con;
	function Database(){
		$this->user=$_ENV['MYSQL_ENV_MYSQL_USER'];$this->pass=$_ENV['MYSQL_ENV_MYSQL_PASSWORD'];$this->host=$_ENV['MYSQL_PORT'];$this->ddbb=$_ENV['MYSQL_ENV_MYSQL_DATABASE'];
	}

	function connect(){
		$con = new mysqli($this->host,$this->user,$this->pass,$this->ddbb);
		$con->query("set sql_mode=''");
		return $con;
	}

	public static function getCon(){
		if(self::$con==null && self::$db==null){
			self::$db = new Database();
			self::$con = self::$db->connect();
		}
		return self::$con;
	}

}
?>
