<?php
class ControllerExtensionModuleRevolution extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/rev/rev-slider.css');
		$this->document->addStyle('catalog/view/javascript/rev/settings.css');
		$this->document->addStyle('catalog/view/javascript/rev/revolution.css');
		$this->document->addScript('catalog/view/javascript/rev/jquery.themepunch.tools.min.js');
		$this->document->addScript('catalog/view/javascript/rev/jquery.themepunch.revolution.min.js');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'subtitle' => $result['subtitle'],
					'link'  => $result['link'],
					'link_text'  => $result['link_text'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}

		$data['module'] = $module++;

		return $this->load->view('extension/module/revolution', $data);
	}
}
