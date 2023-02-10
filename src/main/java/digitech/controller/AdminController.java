package digitech.controller;

import digitech.dto.UserDto;
import digitech.model.User;
import digitech.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class AdminController {
    @Autowired
    private UserServiceImpl userService;

    @PostMapping(value = "/admin/user")
//    @ResponseBody
//    @RequestMapping(path = "/admin/user", method = RequestMethod.POST)
    RedirectView createUser(@ModelAttribute UserDto userDto) {
        User user = User.builder()
                .email(userDto.getEmail())
                .password(userDto.getPassword())
                .name(userDto.getName())
                .build();
        User createdUser = userService.createUser(user);
        System.out.println(createdUser + " User created");
        return new RedirectView("/testform");
    }

    @GetMapping("/admin/users")
    public void getUsers() {
        userService.getUsers();
        System.out.println("Total users: " + userService.getUsers());
    }


}
