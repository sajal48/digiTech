package digitech.controller;

import digitech.model.Student;
import digitech.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {

	@Autowired
	private StudentService ss;

	@RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("name","Piyal Ahmed");
		Student student = new Student();
		student.setName("test 2");
		ss.add(student);
		System.out.println("index");

		return "index";
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
	@RequestMapping("/service-form")
	public String serviceForm() {
		System.out.println("service_form");
		return "service_form";
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
}
