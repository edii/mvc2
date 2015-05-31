<?php

class FilesController extends \Controller
{
	public $layout = 'dashboard';

	private $_users;
        
        // section (model)
        private $_msection = false;
        
        private $_files = array();
        /**
         * construct
         */
        public function init() {
           $this -> _users = \init::app() -> getModels('auth/users');
           if(empty($this -> _msection))
               $this -> _msection = \init::app() -> getModels('section/msection');
        }
        
        public function actionIndex() {
        }
        
        public function actionUploadImages() {
            $this->layout( false );
            
            $_requst = \init::app() -> getRequest() -> getParams();

            
            $UploadFiles = \init::app() -> getCUploadedFile();
            $_files = $UploadFiles::getInstances('files');
            
            if(is_array($_files) and count($_files) > 0) {
                foreach($_files as $file):
                    $file -> saveAs('files/products/test.jpg', false);
                endforeach;
            }
            
            echo "<pre>";
            var_dump( $_files );
            echo "</pre>";
            
            $_arr = array( '1', '10' );
            
            // echo json_encode($_arr);
           header('Content-Type: application/json');
           echo json_encode($_arr, JSON_PRETTY_PRINT);
               
//            $_lang = \init::app() -> getLanguage();
//            
//            // $this->layout( false );
//            $validate = $this -> _users -> getRight();
//            if(!$validate)
//                $this -> redirect('/'._request_uri.'/home/login');
//            
//            $this->render('list', array(
//                'products' => $this->_mproducts ->getProducts(),
//            ));
            
        }
        
}        
