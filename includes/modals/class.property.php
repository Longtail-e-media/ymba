<?php
class Property extends DatabaseObject{

	protected static $table_name= "tbl_property";
	protected static $db_fields= array('id','ext_user_id','title','image','content','slug','sortorder','category','excerpt','featured','payment_type','sold_out','status','user_property_location','expire_on','call_us','call_us_mobile','list_price','selling_price','sold_price','build_up_area','bedroom','land','land_area','plot_no','road_access','road_width','bathroom','kitchen','property_type','property_status','province','district','municipality_or_vdc','city','location','no_of_storey','parking_spot','facing_direction','furnished','garden','swimming','security','gym_hall','elevator_or_lift','power_backup','community_housing','community_monthly_fee','community_water_supply','structure_style','other_structure_style','main_road','distance_from_mainroad','nearest_landmark','distance_from_landmark','living_room','basement','attached_bathroom','servant_room','study_room','dining_room','family_lounge','laundry_room','no_of_store','puja_room','maid_room','maid_toilet','drinking_water_supply','electricity','sewage','cable_line','telecommunication','guard_house','under_ground_water_tank','solar_water_heater','bigha','katha','dhur','haath','ropani','aana','paisa','dam','google_map','meta_title','meta_keywords','meta_description');

	public $id;
    public $title;
    public $ext_user_id;
    public $image;
    public $content;
    public $slug;
    public $sortorder;
    public $category;
    public $excerpt;
    public $featured;
    public $payment_type;
    public $sold_out;
    public $status;
    public $expire_on;
    public $call_us;
    public $call_us_mobile;
    public $road_access;
    public $road_width;
    public $list_price;
    public $selling_price;
    public $sold_price;
    public $land;
    public $land_area;
    public $build_up_area;
    public $plot_no;
    public $bedroom;
    public $bathroom;
    public $kitchen;
    public $property_type;
    public $property_status;
    public $province;
    public $district;
    public $municipality_or_vdc;
    public $city;
    public $location;
    public $user_property_location;
    public $no_of_storey;
    public $parking_spot;
    public $facing_direction;
    public $furnished;
    public $garden;
    public $swimming;
    public $security;
    public $gym_hall;
    public $elevator_or_lift;
    public $power_backup;
    public $community_housing;
    public $community_monthly_fee;
    public $community_water_supply;
    public $structure_style;
    public $other_structure_style;
    public $main_road;
    public $distance_from_mainroad;
    public $nearest_landmark;
    public $distance_from_landmark;
    public $living_room;
    public $basement;
    public $attached_bathroom;
    public $servant_room;
    public $study_room;
    public $dining_room;
    public $family_lounge;
    public $laundry_room;
    public $no_of_store;
    public $puja_room;
    public $maid_room;
    public $maid_toilet;
    public $drinking_water_supply;
    public $electricity;
    public $sewage;
    public $cable_line;
    public $telecommunication;
    public $guard_house;
    public $under_ground_water_tank;
    public $solar_water_heater;
    public $bigha;
    public $katha;
    public $dhur;
    public $haath;
    public $ropani;
    public $aana;
    public $paisa;
    public $dam;
    public $google_map;
    public $meta_title;
    public $meta_keywords;
    public $meta_description;
   

   public static function checkDupliName($title = '')
    {
        global $db;
        $query = $db->query("SELECT title FROM " . self::$table_name . " WHERE title='$title' LIMIT 1");
        $result = $db->num_rows($query);
        if ($result > 0) {
            return true;
        }
    }

   // All Propery Display
    public static function allProperty()
    {
        global $db;
        $sql = "SELECT * FROM " . self::$table_name . " WHERE status='1' AND sold_out='0' AND ext_user_id='0' ORDER BY sortorder ASC";
        return self::find_by_sql($sql);
    }
    
    // Homepage Display
    public static function homefeaturedProperty($limit = '')
    {
        global $db;
        $lmt = !empty($limit) ? ' LIMIT ' . $limit : '';
        $sql = "SELECT * FROM " . self::$table_name . " WHERE status='1' AND featured='1' AND sold_out='0' AND ext_user_id='0' ORDER BY sortorder ASC $lmt";
        return self::find_by_sql($sql);
    }

// Featured property detail page display
    public static function detailfeaturedProperty($limit = '')
    {
        global $db;
        $lmt = !empty($limit) ? ' LIMIT ' . $limit : '';
        $sql = "SELECT * FROM " . self::$table_name . " WHERE status='1' AND featured='1' AND sold_out='0' AND ext_user_id='0' ORDER BY sortorder ASC $lmt";
        return self::find_by_sql($sql);
    }

    // Article display
    public static function getProperty($page = "")
    {
        global $db;
        $result_array = self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE name='{$page}' AND status=1 LIMIT 1");
        return !empty($result_array) ? array_shift($result_array) : false;
    }
    
    //count total property by using user id
    public static function getTotalProp($ext_user_id=''){
        global $db;
        $cond = !empty($ext_user_id)?' ext_user_id='.$ext_user_id:'';
        $query = "SELECT COUNT(id) AS tot FROM ".self::$table_name." WHERE $cond ";
        $sql = $db->query($query);
        $ret = $db->fetch_array($sql);
        return $ret['tot'];
    }

    /************************** Category menu link  by me ***************************/
    public static function get_internal_link($Lsel = '', $LType = 0)
    {
        global $db;
        $sql = "SELECT slug, title FROM " . self::$table_name . " WHERE status='1' ORDER BY sortorder ASC";
        $pages = Category::find_by_sql($sql);
        $linkpageDis = ($Lsel == 1) ? 'hide' : '';

        $result = '';
        if ($pages):
            $result .= '<optgroup label="Category">';
            foreach ($pages as $pageRow):
                $sel = ($Lsel == ("page/" . $pageRow->slug)) ? 'selected' : '';
                $result .= '<option value="page/' . $pageRow->slug . '" ' . $sel . '>&nbsp;&nbsp;' . $pageRow->title . '</option>';
            endforeach;
            $result .= '</optgroup>';
        endif;
        return $result;
    }

    //FIND THE HIGHEST MAX NUMBER.
    public static function find_maximum($field = "sortorder")
    {
        global $db;
        $result = $db->query("SELECT MAX({$field}) AS maximum FROM " . self::$table_name);
        $return = $db->fetch_array($result);
        return ($return) ? ($return['maximum'] + 1) : 1;
    }

    //Find all the rows in the current database table.
    public static function find_all()
    {
        global $db;
        return self::find_by_sql("SELECT * FROM " . self::$table_name . " ORDER BY sortorder ASC");
    }

    //Find all active the rows in the current database table.
    public static function find_all_active()
    {
        global $db;
        return self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE status=1 ORDER BY sortorder ASC");
    }

    //Find a single row in the database where slug is provided.
    static function find_by_slug($slug = '')
    {
        global $db;
        $result_array = self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE slug='$slug' AND status='1' LIMIT 1");
        return !empty($result_array) ? array_shift($result_array) : false;
    }

    //Get sortorder by id
    public static function field_by_id($id = 0, $fields = "")
    {
        global $db;
        $sql = "SELECT $fields FROM " . self::$table_name . " WHERE id={$id} LIMIT 1";
        $result = $db->query($sql);
        $return = $db->fetch_array($result);
        return ($return) ? $return[$fields] : '';
    }

    //Find a single row in the database where id is provided.
    public static function find_by_id($id = 0)
    {
        global $db;
        $result_array = self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE id={$id} LIMIT 1");
        return !empty($result_array) ? array_shift($result_array) : false;
    }

    //Find rows from the database provided the SQL statement.
    public static function find_by_sql($sql = "")
    {
        global $db;
        $result_set = $db->query($sql);
        $object_array = array();
        while ($row = $db->fetch_array($result_set)) {
            $object_array[] = self::instantiate($row);
        }
        return $object_array;
    }

    //Instantiate all the attributes of the Class.
    private static function instantiate($record)
    {
        $object = new self;
        foreach ($record as $attribute => $value) {
            if ($object->has_attribute($attribute)) {
                $object->$attribute = $value;
            }
        }
        return $object;
    }

    //Check if the attribute exists in the class.
    private function has_attribute($attribute)
    {
        $object_vars = $this->attributes();
        return array_key_exists($attribute, $object_vars);
    }

    //Return an array of attribute keys and thier values.
    protected function attributes()
    {
        $attributes = array();
        foreach (self::$db_fields as $field):
            if (property_exists($this, $field)) {
                $attributes[$field] = $this->$field;
            }
        endforeach;
        return $attributes;
    }

    //Prepare attributes for database.
    protected function sanitized_attributes()
    {
        global $db;
        $clean_attributes = array();
        foreach ($this->attributes() as $key => $value):
            $clean_attributes[$key] = $db->escape_value($value);
        endforeach;
        return $clean_attributes;
    }

    //Save the changes.
    public function save()
    {
        return isset($this->id) ? $this->update() : $this->create();
    }

    //Add  New Row to the database
    public function create()
    {
        global $db;
        $attributes = $this->sanitized_attributes();
        $sql = "INSERT INTO " . self::$table_name . "(";
        $sql .= join(", ", array_keys($attributes));
        $sql .= ") VALUES ('";
        $sql .= join("', '", array_values($attributes));
        $sql .= "')";
        if ($db->query($sql)) {
            $this->id = $db->insert_id();
            return true;
        } else {
            return false;
        }
    }

    //Update a row in the database.
    public function update()
    {
        global $db;
        $attributes = $this->sanitized_attributes();
        $attribute_pairs = array();

        foreach ($attributes as $key => $value):
            $attribute_pairs[] = "{$key}='{$value}'";
        endforeach;

        $sql = "UPDATE " . self::$table_name . " SET ";
        $sql .= join(", ", array_values($attribute_pairs));
        $sql .= " WHERE id=" . $db->escape_value($this->id);
        $db->query($sql);
        return ($db->affected_rows() == 1) ? true : false;
        //return true;
    }
}

?>