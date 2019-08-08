package com.demo.stc.service;

import com.demo.stc.model.User;

public interface UserService {
	 public User registerUser(User user) throws Exception;
	 public User updateUser(User user)throws Exception;
	 
}
