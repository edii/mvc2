<?php

class HomeController extends \Controller
{
	public $layout = 'smartel'; //'column1'

	private $_model;
        private $_msection = false;
        
        private $_pdo;
        
        // public $homepage;

        public function init() {
            if(empty($this -> _msection))
               $this -> _msection = \init::app() -> getModels('section/msection');
            $this -> _pdo = \init::app() -> getDBConnector();
        }
        
        /* --- // page content --- */
        public function actionContent() {
            $this->layout( 'smartel' );
            $secID = false;
            if($section = \init::app() -> getTreeSection() and is_array( $section )) {
                    $secID = $section['id'];
            }
            
            // breandrumbs
            $breandcrumbs = false;
            $sections = \init::app() -> getTreeSections();
    
            $breandcrumbs[ 'home' ] = '/';
            if(is_array($sections) and count($sections) > 0) {
                foreach( $sections as $section ) :
                    $breandcrumbs[ $section['name'] ] = '/'.$section['url'];
                endforeach;
            }
            
            $_content = '';
            if(isset($this -> _msection -> getSectionID( $secID )['content'])) 
                $_content = $this -> _msection -> getSectionID( $secID )['content'];
            
            $this->render('content', 
                    array( 
                        'breandcrumbs' => \init::app() -> getCreateBradcrumbs( $breandcrumbs ), 
                        '_content' => $_content )
                    );
        }
        
	public function actionDB()
	{
            
            // \init::app()->setTheme( false );
            
            // connect db from controlers
            $_db = new CDatabase( 'main', NULL);
            
            
            // CI (mysql)
            //$_connector = $_db->getConnection()->query("SELECT * FROM section")->result_array();
            
            // CI (pdo)
            // $_connector = $_db->getConnection()->query("SELECT * FROM section")->result_array();
            
            // drupal
             $options['target'] = 'main';   
             $args = array();
             
             $_connector = $_db->getConnection();
             $_dbdefionitions = $_db->getDatabaseDefinition();
             
             $query_res = $_connector -> query("SELECT * FROM section", $args, $options)-> fetchAll();
             //$query_res = $_connector -> select('section', 's', $options) 
                               // -> fields('s', array('SectionID')) 
                                //-> range(0, 1)
                               // -> addTag('section_access')    
                                //-> execute()
                               // -> fetchObject();
             
//             $secondary = \init::app() -> getDBConnector( 'secondary' );
//             $phones_res = $secondary -> query("SELECT * FROM phones LIMIT 1", 
//                     array(), 
//                     array('target' => 'secondary'))-> fetchAll();

            
             $data = ['blaaaa'];
             $this->render('db', array(
			'data'=>$data,
		));
		
	}
        
        /**
	 * Displays a particular model.
	 */
	public function actionTest()
	{
            
                
               \init::app()->setTheme( 'column2' );
                
            
               $dataProvider = ['blaaa', 'ddddd'];
            
                $this->render('index', array(
			'dataProvider'=>$dataProvider,
		));  
	}

	public function actionIndex()
	{
            $this->homepage( true );
            $this->layout( 'smartel' );
            
            $this->render('index', array( 'page_home' => true) ); 
	}
       
        public function actionMenu() {
            
            $options['target'] = 'main';   
            $args = array();
             
            // $_dbdefionitions = $_db->getDatabaseDefinition();
            
            $front_section = $this -> _pdo -> query("SELECT s.id, 
                                                            s.hidden, 
                                                            s.alias, 
                                                            s.inMenu, 
                                                            s.parentID, 
                                                            s.name, 
                                                            s.title, 
                                                            s.description, 
                                                            s.keywords, s.url, s.styleMenu 
                                                        FROM `section` AS s 
                                                        WHERE parentID = 0
                                                            AND inMenu = 1
                                                            AND hidden = 0 
                                                            AND type = 'front'
                                                        ORDER BY `position` ASC    
                                                        ", $args, $options)
                                -> fetchAll();
            
            $this->render('menu', array(
                'front_section'=>$front_section,
                'sections_actual' => \init::app()->getTreeSection(),
            ));
        }
        
        // Sub-navigation
        public function subnavStaticPage() {
            $this->render('menu_subnavStaticPage');
        }
        
        public function actionSubnav() { 
            $options['target'] = 'main';   
            $args = array();
            $secID = false;
            if($section = \init::app() -> getTreeSection() and is_array( $section )) {
                    $secID = $section['id'];
            }
            
            
            $parenID = false;
            if($_sections = \init::app() -> getTreeSections() and is_array($_sections)) {
                $parenID = array_shift( $_sections )['id'];
            }
            
            if(!$parenID) return NULL;
            
            $_items = array();
            $_sections = $this -> _msection -> getSections(
                                array(
                                    // 'parentID' => ['value' => (int)$parenID, 'symbol' => '='],
                                    'inMenu' => ['value' => 1, 'symbol' => '='],
                                    'type' => ['value' => 'front', 'symbol' => '='],
                                    ));
            if(is_array($_sections) and count($_sections) > 0) {
                foreach($_sections as $_key => $_element) :
                    $_items[$_key] = (array)$_element;
                endforeach;
            }
            
            $_tree = \init::app() -> getCTree()
                    -> set( $_items, array('id' => 'id', 'p_id' => 'parentID') ) 
                    -> getTreeID( (int)$parenID );
            
//            echo "<pre>"; var_dump( $_tree ); echo "</pre>"; die('stop');
            
            return $this->renderView('menu_subnav', array(
                'sections'=>$_tree,
                'sections_actual' => \init::app()->getTreeSection(),
            ));
        }
        
        public function actionCarousel() {
            $this->render('carousel');
        }
}
