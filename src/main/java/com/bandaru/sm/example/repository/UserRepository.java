package com.bandaru.sm.example.repository;

import org.springframework.data.repository.CrudRepository;

import com.bandaru.sm.example.model.UserApplication;

public interface UserRepository extends CrudRepository<UserApplication, String>
{

}
