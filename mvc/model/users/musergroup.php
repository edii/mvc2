<?php
/*
 * model Input
 */

class Musers extends \CDetectedModel { //extends \CDetectedModel 
    
    public static $db;
    public $_table_name;
    
    private $_mod_access = true; // true or false
    private $_type; // type panel

    
    public function init() {
        self::$db = \init::app() -> getDBConnector(); // connected DB
        if(!$this->_mod_access) throw new \CException(\init::t('init','Not access this controller!'));
        $this -> _type = \init::app() -> _getPanel();
        
        $this -> _pk = 'userID';
        $this -> _table_name = 'user';
    }
    
    public function attributeNames() {
        
    }
    
    /**
     * getOwnerID
     * @param type $_id
     * @return type array owner
     */
    public function getUserID( $_id ) {
        $_user = false;
        if((int)$_id) {
            
            $sql = self::$db -> select( $this->_table_name , 'user', array('target' => 'main'))
                         -> fields('user', array('userID',
                                                  'OwnerID',
                                                  'adminID',
                                                  'timeCreated',
                                                  'timeSaved',
                                                  'timeStart',
                                                  'timeEnd',
                                                  'createdIP',
                                                  'savedIP',
                                                  'hidden',
                                                  'type',
                                                  'groupID',
                                                  'email',
                                                  'userName',
                                                  'login',
                                                  'password',
                                                  'passwordEnabled',
                                                  'deleted',
                                                  'timeDeleted',
                                                  'status',
                                                  'ownerParentID',
                                                  'owners',
                                                  'lastVisit',
                                                  'userFields',
                                                  'userParentID',
                                                  'userLanguage'
                                                ));
            $sql ->condition('hidden', 0, '=') 
                 ->condition('userID', (int)$_id, '='); 
            $_user = $sql -> execute()->fetchAssoc(); 
            
        } 
         
        return $_user;
    }
    
    /**
     * 
     * @param type $attributes
     */
    public function getUsers() {
        
        $sql = self::$db -> select( $this->_table_name , 'user', array('target' => 'main'))
                         -> fields('user', array('userID',
                                                  'OwnerID',
                                                  'adminID',
                                                  'timeCreated',
                                                  'timeSaved',
                                                  'timeStart',
                                                  'timeEnd',
                                                  'createdIP',
                                                  'savedIP',
                                                  'hidden',
                                                  'type',
                                                  'groupID',
                                                  'email',
                                                  'userName',
                                                  'login',
                                                  'password',
                                                  'passwordEnabled',
                                                  'deleted',
                                                  'timeDeleted',
                                                  'status',
                                                  'ownerParentID',
                                                  'owners',
                                                  'lastVisit',
                                                  'userFields',
                                                  'userParentID',
                                                  'userLanguage'));
        $sql ->condition('hidden', 0, '='); 
        $_users = $sql -> execute()->fetchAll(); 
        
        
        
        /* memcached test */
        $_cache = \init::app() -> getMemcaches();        
        if(is_object($_cache)) {
            $_res = false;
            $_key = 'users_cache';
            if(!$_res = $_cache ->getValues($_key)) :
                $_cache -> setValue($_key, $_users, 86000);
                $_users = $_cache -> getValues($_key);
            else :
                $_users = $_cache -> getValues($_key);
            endif;
        } 
        /* end */
        
        return $_users;
    }
    
    
    /*
     * Example User Save, Delete, Update
     */
    /* public function save($runValidation=true, $attributes = NULL) {
        
        
        if($runValidation and is_array($attributes)) {
            if($_ownerID = (int)$attributes['OwnerID']) {
               $_date['OwnerName'] = (string)$attributes['OwnerName'];  
                
              // update  
              $_update = self::$db -> update($this->_tableName, array('target' => 'main')) 
                        -> fields($_date)
                        ->condition('OwnerID', $_ownerID, '='); 
              if(!$_update -> execute()) 
                  throw new CHttpException(404,\init::t('init','Fatal error dont update Owner'));
              //die('update');
              
            } else {
                // insert
                $attributes['OwnerID'] = null;
                
                
            }
        }
    } */
}
