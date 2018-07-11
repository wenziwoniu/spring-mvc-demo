package com.vivebest.spring.mvc.service;

import java.util.List;

import com.vivebest.spring.mvc.entity.User;

public interface UserService {
    User findOne(Integer id);

    List<User> find();
}