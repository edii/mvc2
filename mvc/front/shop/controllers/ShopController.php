<?php

class ShopController extends \Controller
{
        private $_pdo;
    
	public $layout = 'smartel'; //'column1'

	private $_model;
        private $_msection = false;
        private $_mproducts = false;
        private $_mproducts_categories = false;

        public function init() {
            if(empty($this -> _msection))
               $this -> _msection = \init::app() -> getModels('section/msection');
            if(empty($this -> _mproducts))
               $this -> _mproducts = \init::app() -> getModels('products/mproducts');
           if(empty($this -> _mproducts_categories))
               $this -> _mproducts_categories = \init::app() -> getModels('products_categories/mproducts_categories');
        
           $this -> _pdo = \init::app() -> getDBConnector();
        }
        
        /* --- // page content --- */
	public function actionIndex()
	{
            $this->layout( $this -> layout );
            $secID = false; 
            $secAlies = false;
            $secUrl = false;
            
            if($section = \init::app() -> getTreeSection() and is_array( $section )) {
                $secID = $section['id'];
                $secAlies = $section['alias'];
                $secUrl = $section['url'];
            }
            
            $products = array();
            $products = $this -> _mproducts_categories -> getProductsCategoryWhere( 
                        array('AND' => ['field' => 'cat.alias', 
                                        'value' => $this -> _pdo -> quote( $secAlies ), 
                                        'symbol' => '='])
                    ); 
            
            echo "<pre>";
            var_dump( $products );
            echo "</pre>";
            
            $this->render('productList', array());
            
	}
       
        
}
