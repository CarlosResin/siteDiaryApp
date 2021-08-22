//package net.codejava;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//THIS HAD TO BE ADDED TO THE SAME MAPPING APPCONTROLLER IN ORDER TO WORK.
//
//@Controller
//public class repo1AppController {
//	@Autowired
//	private diarytextService service1;
//	
//	@RequestMapping("/sitediary/text")
//	public String viewHomePage(Model model) {
//		List<diarytext> listdiarytext = service1.listAll();
//		model.addAttribute("listdiarytext", listdiarytext);
//		return "text";
//	}
//}
