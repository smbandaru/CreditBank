package com.bandaru.sm.example.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bandaru.sm.example.model.UserApplication;
import com.bandaru.sm.example.service.UserService;

@Controller
public class UserController
{
    @Autowired
    UserService userService;

    @GetMapping("/userRegister")
    public ModelAndView getRegisterUserView()
    {
        return new ModelAndView("userRegister", "loanApplication", new UserApplication());
    }

    @PostMapping("/userRegister")
    public String registerUser(@Valid @ModelAttribute("loanApplication") UserApplication ua, BindingResult br)
    {
        if(br.hasErrors())
        {
            return "userRegister";
        }
        else
        {
            userService.addLoanApplication(ua);
            //get Bureau data and calculate valid/invalid


            return "redirect:dashboard";
        }
    }
}
