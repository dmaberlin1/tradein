package com.dmadev.tradein.controllers;

import com.dmadev.tradein.models.User;
import com.dmadev.tradein.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping("/registration")
    public String registration(){
        return "registration.ftlh";
    };

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        //если сервис вернёт false
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "registration.ftlh";
        }
        return "redirect:/login";
    }

    @GetMapping("/user/{id}")
    public String userInfo(@PathVariable("user") User user,Model model){
        model.addAttribute("user",user);
        model.addAttribute("products",user.getProducts());
        return "user-info";
    }


}
