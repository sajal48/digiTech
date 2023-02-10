package digitech.controller;

import digitech.dao.RoleDao;
import digitech.dto.UserDto;
import digitech.model.Role;
import digitech.model.Student;
import digitech.model.User;
import digitech.service.StudentService;
import digitech.service.impl.UserServiceImpl;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {

	@Autowired
	private StudentService ss;
	@Autowired
	private RoleDao roleDao;

	@Autowired
	private UserServiceImpl userService;

	@PostConstruct
	public String init(Model model) {
		System.out.println("index");

		return "index";
	}

	@GetMapping("/init")
	public void initialize(){
		Role adminRole=Role.builder()
				.roleName("ADMIN")
				.build();
		Role employeeRole=Role.builder()
				.roleName("EMPLOYEE")
				.build();
		Role userRole=Role.builder()
				.roleName("USER")
				.build();

		roleDao.save(adminRole);
		roleDao.save(employeeRole);
		roleDao.save(userRole);
		System.out.println("Role saved");
	}


	@RequestMapping("/testform")
	public String test(Model model) {
		System.out.println("form-test");

		return "service_form";
	}
	@RequestMapping("/")
	public String home(Model model) {
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
