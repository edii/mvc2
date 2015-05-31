<?php

class ShopController extends \Controller
{
        private $_pdo;
    
	public $layout = 'smartel'; //'column1'

	private $_model;
        private $_msection = false;
        private $_mproducts = false;
        private $_mproducts_categories = false;

        private $_request;
        
        public function init() {
            if(empty($this -> _msection))
               $this -> _msection = \init::app() -> getModels('section/msection');
            if(empty($this -> _mproducts))
               $this -> _mproducts = \init::app() -> getModels('products/mproducts');
           if(empty($this -> _mproducts_categories))
               $this -> _mproducts_categories = \init::app() -> getModels('products_categories/mproducts_categories');
        
           $this -> _pdo = \init::app() -> getDBConnector();
           $this -> _request = \init::app() -> getRequest() -> getParams();
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
            
            if(is_array($this -> _request) and count($this -> _request) > 0) {
                $productAlias = array_keys( $this -> _request )[0]; 
                // echo "Alias = ".$productAlias;
                $this->render('product', 
                                array(
                                    'product' => $this -> _mproducts -> getProductAlias( $productAlias ), 
                                    'BaseUrl' => $secUrl
                                ));
            } else if($secAlies) {
            
                $products = array();
                $products = $this -> _mproducts_categories -> getProductsCategoryWhere( 
                            array('AND' => ['field' => 'cat.alias', 
                                            'value' => $this -> _pdo -> quote( $secAlies ), 
                                            'symbol' => '='])
                        );
                $this->render('productList', array('products' => $products, 'BaseUrl' => $secUrl));    
            } else 
                $this -> redirect('/404');
            
	}
        
        // ------ AJAX -----------
       public function actionAjax() 
       {
           $this->layout( false );
           if( \init::app() -> getRequest() -> getIsAjaxRequest() ) {
               $_arr = array(
                   'result' => array(
                       array('_id'=> 1, '_category' => 1),
                       array('_id'=> 2, '_category' => 2),
                       array('_id'=> 3, '_category' => 3),
                       array('_id'=> 4, '_category' => 4),
                       array('_id'=> 5, '_category' => 5),
                       array('_id'=> 6, '_category' => 6),
                       array('_id'=> 7, '_category' => 7),
                  )     
               );
               // echo json_encode($_arr);
               header('Content-Type: application/json');
               echo json_encode($_arr, JSON_PRETTY_PRINT);
           }
           
       }        
        
}
