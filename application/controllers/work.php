<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Work extends CI_Controller {

	public function index()
	{
		$this->db->order_by("id", "desc");
		$query = $this->db->get('work_articles');
		$data['articles'] = $query->result();
		$this->load->view('work',$data);
	}

	public function article ($id = null){
		if (!$id){
			redirect('work');
		}

		$this->db->where('id',$id);
		$query = $this->db->get('work_articles');
		$data['main_article'] = $query->result()[0];

		$this->db->where('id !=',$id);
		$this->db->order_by('rand()');
		$query = $this->db->get('work_articles',8);
		$data['sidebar_articles'] = $query->result();

		$this->db->where('item_id',$id);
		$this->db->order_by('priority');
		$query = $this->db->get('work_images');
		$data['gallery'] = $query->result();

		$data['page'] = 'work';

		$this->load->view('article',$data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */