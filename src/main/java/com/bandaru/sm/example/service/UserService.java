package com.bandaru.sm.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bandaru.sm.example.model.UserApplication;
import com.bandaru.sm.example.repository.UserRepository;

@Service
public class UserService
{
    @Autowired
    UserRepository repository;

    public void addLoanApplication(UserApplication ua)
    {
        repository.save(ua);
    }


}
