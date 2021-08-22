package net.codejava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class AppController {
	@Autowired
	private UserRepository repo;
	
	@GetMapping("")
	public String viewHomePage() {
		return "index";
	}
	@GetMapping("/register")
	public String showSignUpForm(Model model) {
	model.addAttribute("user", new User());
	
	return "signup_form"; 
	}
	
	@PostMapping("/process_register")
	public String processRegistration(User user) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encodedPassword = encoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		
		repo.save(user);
		
		return "register_success";
	}
	
	@GetMapping("/sitediary")
	public String viewUsersList() {
		return "users";
	}
	
	@Autowired
	private diarytextService service1;
	
	@RequestMapping("/text")
	public String viewHomePage(Model model) {
		List<diarytext> listdiarytext = service1.listAll();
		model.addAttribute("listdiarytext", listdiarytext);
		return "text";
	}
	
	@RequestMapping("/new")
	public String showNewSiteDiaryForm(Model model) {
		diarytext sdtext = new diarytext();
		model.addAttribute("sdtext", sdtext);
		return "new_diary";
	}

	@RequestMapping(value = "/save", method=RequestMethod.POST)
	public String saveDiary(@ModelAttribute("sdtext") diarytext sdtext) {
		service1.save(sdtext);
		return "redirect:/text";
	}
	
	@RequestMapping("/edit/{id}")
	public ModelAndView showEditSiteDiaryForm(@PathVariable(name = "id") Long id) {
		ModelAndView mav = new ModelAndView("edit_sitediary");
		diarytext sdtext = service1.get(id);
		mav.addObject("sdtext", sdtext);
		
		return mav;
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteSiteDiary(@PathVariable(name = "id") Long id) {
		service1.delete(id);
		return "redirect:/text";
	}
	
}