    <?php

/*
 * model Input
 */

class Msection extends \CDetectedModel { //extends \CDetectedModel 
    
    public static $db;
    public $_table_name = 'section';
    
    private $_mod_access = true; // true or false
    private $_type; // type panel

    
    public function init() {
        self::$db = \init::app() -> getDBConnector(); // connected DB
        if(!$this->_mod_access) throw new \CException(\init::t('init','Not access this controller!'));
        $this -> _type = \init::app() -> _getPanel();
        
        $this -> _pk = 'id';
        $this -> _table_name = 'section';
    }
    
    public function attributeNames() {
        
    }
    
    /**
     * getSectionID
     * @param type $_id
     * @return type array section
     */
    public function getSectionID( $_id ) {
        $_sections = false;
        if((int)$_id) {
            
            $sql = self::$db -> select( $this->_table_name , 'section', array('target' => 'main'))
                         -> fields('section', array('id',
                                                  'hidden',
                                                  'inMenu',
                                                  'alias',
                                                  'OwnerID',  
                                                  'UserID',
                                                  'timeCreated',
                                                  'timeSaved',
                                                  'type',
                                                  'languages',
                                                  'parentID',
                                                  'groupID',
                                                  'layout',
                                                  'box',
                                                  'boxStyle',
                                                  'accessGroups',
                                                  'arguments',
                                                  'link',
                                                  'target',
                                                  'name',
                                                  'title',
                                                  'description',
                                                  'keywords',
                                                  'position',
                                                  'introContent',
                                                  'content',
                                                  'clicks',
                                                  'viewOptions',
                                                  'controller',
                                                  'action',
                                                  'view',
                                                  'url',
                                                  'rout', 'styleMenu'));
            $sql ->condition('hidden', 0, '=') 
                 ->condition('id', (int)$_id, '='); 
            $_sections = $sql -> execute()->fetchAssoc(); 
            
        } 
         
        return $_sections;
    }
    
    /**
     * 
     * @param type $attributes
     */
    public function getSections( $where = false ) {
        
        $sql = self::$db -> select( $this->_table_name , 'section', array('target' => 'main'))
                         -> fields('section', array('id',
                                                  'hidden',
                                                  'inMenu',
                                                  'alias',
                                                  'OwnerID',  
                                                  'UserID',
                                                  'timeCreated',
                                                  'timeSaved',
                                                  'type',
                                                  'languages',
                                                  'parentID',
                                                  'groupID',
                                                  'layout',
                                                  'box',
                                                  'boxStyle',
                                                  'accessGroups',
                                                  'arguments',
                                                  'link',
                                                  'target',
                                                  'name',
                                                  'title',
                                                  'description',
                                                  'keywords',
                                                  'position',
                                                  'introContent',
                                                  'content',
                                                  'clicks',
                                                  'viewOptions',
                                                  'controller',
                                                  'action',
                                                  'view',
                                                  'url',
                                                  'rout',
                                                  'styleMenu'
                             ));
        $sql ->condition('hidden', 0, '='); 
        
        if(is_array($where)) {
            foreach ( $where as $_field => $_item ) :
                $sql ->condition( $_field, $_item['value'], $_item['symbol']);
            endforeach;
        }
        
        $_sections = $sql -> execute()->fetchAll(); 
        
        return $_sections;
    }
    
}