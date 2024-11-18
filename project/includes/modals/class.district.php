<?php
class District extends DatabaseObject {

	protected static $table_name = "tbl_district";
	protected static $db_fields = array('id', 'slug' ,'title', 'status', 'sortorder');
	
	var $id;
	var $slug;
	var $title;
	var $status;
	var $sortorder;
	

	//Find a single row in the database where slug is provided.
	public static function find_by_slug($slug=0){
		global $db;
		$sql = "SELECT * FROM ".self::$table_name." WHERE slug='$slug' LIMIT 1";
		$result_array = self::find_by_sql($sql);
		return !empty($result_array) ? array_shift($result_array) : false;
	}
	
	
	//Get All Districts
	public static function getDistricts()
	{
		global $db;
		return self::find_by_sql("SELECT * FROM ".self::$table_name." WHERE status='1' ORDER BY sortorder ASC");

	}
	

	public static function checkDupliTitle($title='')
	{
		global $db;
		$query = $db->query("SELECT title FROM ".self::$table_name." WHERE title='$title' LIMIT 1");
		$result= $db->num_rows($query);
		if($result>0) {return true;}
	}
	
	
	//FIND THE HIGHEST MAX NUMBER.
	static function find_maximum($field="sortorder"){
		global $db;
		$result = $db->query("SELECT MAX({$field}) AS maximum FROM ".self::$table_name);
		$return = $db->fetch_array($result);
		return ($return) ? ($return['maximum']+1) : 1 ;
	}
	
	// get the district name from it's id
	static function getDistrictName($id=0){
		global $db;
		$result = $db->query("SELECT title FROM ".self::$table_name." WHERE id='{$id}'");
		$return = $db->fetch_array($result);
		return ($return) ? $return['title'] : '' ;
	}
	
	//Find all the rows in the current database table.
	static function find_all(){
		global $db;
		return self::find_by_sql("SELECT * FROM ".self::$table_name." ORDER BY sortorder DESC");
	}

	//Find all the rows in the current database table.
	static function get_all(){
		global $db;
		$sql="SELECT id,title FROM ".self::$table_name." WHERE status=1 ORDER BY sortorder ASC";
		return self::find_by_sql($sql);
	}

	public static function getTotalparent(){
		global $db;		
		$query = "SELECT COUNT(id) AS tot FROM ".self::$table_name." WHERE status=1 ";
		$sql = $db->query($query);
		$ret = $db->fetch_array($sql);
		return $ret['tot'];
	}

	//Find a single row in the database where id is provided.
	public static function find_by_id($id=0){
		global $db;
		$result_array = self::find_by_sql("SELECT * FROM ".self::$table_name." WHERE id={$id} LIMIT 1");
		return !empty($result_array) ? array_shift($result_array) : false;
	}

	public static function field_by_id($id=0,$fields=""){
		global $db;
		$sql = "SELECT $fields FROM ".self::$table_name." WHERE id={$id} LIMIT 1";
		$result = $db->query($sql);
		$return = $db->fetch_array($result);
		return ($return) ? $return[$fields] : '' ;
	}

	public static function type_by_id($type=1){
		global $db;
		$sql = "SELECT id FROM ".self::$table_name." WHERE type={$type} LIMIT 1";
		$result = $db->query($sql);
		$return = $db->fetch_array($result);
		return ($return)? $return['id'] : 0;
	}
	
	//Find rows from the database provided the SQL statement.
	static function find_by_sql($sql=""){
		global $db;
		$result_set = $db->query($sql);
		$object_array = array();
		while($row = $db->fetch_array($result_set)){
			$object_array[] = self::instantiate($row);
		}
		return $object_array;
	}
	//front list district data with province id
	 public static function get_all_districtdata_front($provid=0, $selid=''){
		global $db;		
		$sql = "SELECT id,title FROM ".self::$table_name." WHERE province_id='$provid' ORDER BY sortorder ASC";
		$record = self::find_by_sql($sql);
		$result='';
		if($record){
				// $result.='<option value="">Search District</option>';
			foreach($record as $row){
				$sel = ($selid==$row->id)?'selected':'';
				$result.='<option value="'.$row->id.'" '.$sel.'>'.$row->title.'</option>';
			}
		}else{
			$result.='<option value="">Choose</option>';
		}
		return $result;
	}
	
	//Filter all district 
    public static function get_all_districtdata($distid=0){
        global $db;     
        $sql = "SELECT id,title FROM ".self::$table_name." WHERE status='1' ORDER BY sortorder ASC";
        $record = self::find_by_sql($sql);
        
        $result='';
        if($record){
                // $result.='<option value=" ">None</option>';
            foreach($record as $row){
                $result.='<option value="'.$row->id.'">'.$row->title.'</option>';
            }
        }else{
            $result.='<option value="all">None</option>';
        }
        return $result;
    }

	
	//Instantiate all the attributes of the Class.
	static function instantiate($record){
		$object  = new self;
		foreach($record as $attribute=>$value){
			if($object->has_attribute($attribute)){
				$object->$attribute = $value;
			}
		}
		return $object;
	}
	
	//Check if the attribute exists in the class.
	function has_attribute($attribute){
		$object_vars = $this->attributes();
		return array_key_exists($attribute, $object_vars);
	}
	
	//Return an array of attribute keys and thier values.
	protected function attributes(){
		$attributes = array();
		foreach(self::$db_fields as $field):
			if(property_exists($this, $field)){
				$attributes[$field] = $this->$field;
			}
		endforeach;
		return $attributes;
	}
	
	//Prepare attributes for database.
	protected function sanitized_attributes(){
		global $db;
		$clean_attributes = array();
		foreach($this->attributes() as $key=>$value):
			$clean_attributes[$key] = $db->escape_value($value);
		endforeach;
		return $clean_attributes;
	}
	
	//Save the changes.
	function save(){
		return isset($this->id) ? $this->update() : $this->create();
	}
	
	//Add  New Row to the database
	function create(){
		global $db;
		$attributes = $this->sanitized_attributes();
		$sql = "INSERT INTO ".self::$table_name."(";
		$sql.= join(", ", array_keys($attributes));
		$sql.= ") VALUES ('";
		$sql.= join("', '", array_values($attributes));
		$sql.= "')";
		if($db->query($sql)){
			$this->id = $db->insert_id();
			return true;
		} else {
			return false;
		}
	}
	
	//Update a row in the database.
	function update(){
		global $db;
		$attributes = $this->sanitized_attributes();
		$attribute_pairs = array();
		
		foreach($attributes as $key=>$value):
			$attribute_pairs[] = "{$key}='{$value}'";
		endforeach;
		
		$sql = "UPDATE ".self::$table_name." SET ";
		$sql.= join(", ", array_values($attribute_pairs));
		$sql.= " WHERE id=".$db->escape_value($this->id);
		$db->query($sql);
		return ($db->affected_rows()==1) ? true : false;
		//return true;
	}
}
?>