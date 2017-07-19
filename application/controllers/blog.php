<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends CI_Controller {

	public function index()
	{
		$query = $this->db->get('blog_articles');
		$data['articles'] = $query->result();
		$this->load->view('blog',$data);
	}

	public function article ($id = null){
		if (!$id){
			redirect('blog');
		}

		$this->db->where('id',$id);
		$query = $this->db->get('blog_articles');
		$data['main_article'] = $query->result()[0];

		$this->db->where('id !=',$id);
		$query = $this->db->get('blog_articles',8);
		$data['sidebar_articles'] = $query->result();

		$data['page'] = 'blog';

		$this->load->view('article',$data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */