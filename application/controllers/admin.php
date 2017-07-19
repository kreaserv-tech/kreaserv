<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->ion_auth->logged_in()){
			redirect('auth/login');
		}
		$this->load->library('image_CRUD');
	}

	public function index()
	{
		$this->load->view('admin/dashboard');
	}

	public function work()
	{

		$crud = new grocery_CRUD();
 
	    $crud->set_table('work_articles');
		$crud->set_subject('Article');
	    $crud->unset_columns('created_date','flag');

		$crud->set_rules('main_image','main_image','required');
		$crud->set_rules('title','title','required');
		$crud->set_rules('description','description','required');
		$crud->set_rules('content','content','content');

		$crud->add_action('Photos', '', '','fa fa-2x fa-picture-o fancybox fancybox.iframe',array($this,'redirect_to_image_crud'));

	    $crud->unset_edit_fields('flag','created_date');
	    $crud->unset_add_fields('flag','created_date');
		$crud->callback_before_upload(array($this,'_file_validator_images'));
		$crud->set_field_upload('main_image','assets/uploads/');


 
		$data = $crud->render();
		$this->load->view('admin/crud_view',$data);
	}

	public function blog()
	{

		$crud = new grocery_CRUD();
 
	    $crud->set_table('blog_articles');
		$crud->set_subject('Blog');
	    $crud->unset_columns('created_date','flag');

		$crud->set_rules('main_image','main_image','required');
		$crud->set_rules('title','title','required');
		$crud->set_rules('description','description','required');
		$crud->set_rules('content','content','content');

	    $crud->unset_edit_fields('flag','created_date');
	    $crud->unset_add_fields('flag','created_date');
		$crud->callback_before_upload(array($this,'_file_validator_images'));
		$crud->set_field_upload('main_image','assets/uploads/');
 
		$data = $crud->render();
		$this->load->view('admin/crud_view',$data);
	}


	public function images(){
		$image_crud = new image_CRUD();
		$image_crud->set_primary_key_field('id');
		$image_crud->set_url_field('url');
		$image_crud->set_table('work_images')
		->set_relation_field('item_id')
		->set_ordering_field('priority')
		->set_image_path('assets/uploads');

		$data = $image_crud->render();
		$this->load->view('admin/image_crud_view',$data);
	}

	function redirect_to_image_crud($primary_key,$row) {
	    return site_url('admin/images/').'/'.$row->id;
	}

	function _file_validator_images($files_to_upload,$field_info) {
		$type = $files_to_upload[$field_info->encrypted_field_name]['type'];
		$types = array('image/png','image/jpg','image/jpeg');
		if (!in_array($type, $types)) {
			return 'Sorry, we can upload only jpeg/png here.';
		}
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */