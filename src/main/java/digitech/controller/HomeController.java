package digitech.controller;


import digitech.dto.TrainingDto;
import digitech.model.Event;
import digitech.model.Service;
import digitech.model.User;
import digitech.service.AdminService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {

	@Autowired
	private AdminService adminService;
//	@PostConstruct
//	public String init(Model model) {
//		System.out.println("index");
//
//		return "index";
//	}



	@RequestMapping("/testform")
	public String test(Model model) {
		System.out.println("form-test");

		return "service_form";
	}
	@RequestMapping("/admin/service_form")
	public String serviceForm(Model model) {
		System.out.println("form-test");
		return "service_form";
	}
	@RequestMapping("/not_authorized")
	public String notAuthorized(Model model) {
		System.out.println("not_authorized");
		return "not_authorized";
	}


	@RequestMapping("/")
	public String home(Model model) {
		System.out.println("index");
		return "index";
	}
	@GetMapping("/login")
	String login(){
		return "login";
	}

	@GetMapping("/signup")
	String signup(){
		return "signup";
	}
	@RequestMapping("/about")
	public String about() {
		System.out.println("about");
		return "about";
	}
	@RequestMapping("/events")
	public String events() {
		System.out.println("event_main_page");
		return "event_main_page";
	}
	@RequestMapping("/services")
	public String services() {
		System.out.println("services");
		return "services";
	}
	@RequestMapping("/admin/user")
	public String serviceForm() {
		System.out.println("service_form");
		return "add_user";
	}
	@RequestMapping("/admin/add_service")
	public String addServiceForm() {
		System.out.println("service_form");
		return "add_service";
	}
	@RequestMapping("/event-form")
	public String eventForm() {
		System.out.println("event_form");
		return "event_form";
	}
	@RequestMapping("/training-registration")
	public String trainingRegistrationForm() {
		System.out.println("training_registration_form");
		return "training_registration_form";
	}
	@RequestMapping("/new-file")
	public String newFile() {
		System.out.println("new_file");
		return "new_file";
	}
	@RequestMapping("/trainings")
	public String trainings() {
		System.out.println("trainings");
		return "trainings";
	}

	@RequestMapping("/privacy_policy")
	public String privacyPolicy() {
		System.out.println("trainings");
		return "privacy_policy";
	}


}
