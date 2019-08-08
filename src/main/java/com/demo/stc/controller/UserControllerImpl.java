package com.demo.stc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.demo.stc.model.User;
import com.demo.stc.service.*;

public class UserControllerImpl implements UserController {

	private UserService userService;


	public User registerUser(User user) throws Exception {
	
		return userService.registerUser(user);
	}

	
	public User updateUser(User user) throws Exception {
	
		return userService.updateUser(user);
	}
	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring.xml");
		long mobile=8608565912L;
		User user=(User)applicationContext.getBean("user");
		user.setId(242412);
		user.setMobileNumber(mobile);
		user.setUserName("senthil");
		user.setPassword("ssss");
		user.setUserType("U");
		user.setEmail("senth@gamil.com");
		user.setConfirmed(true);
		System.out.println(user);
		UserController userController=(UserController)applicationContext.getBean("userControllerImpl");
		userController.registerUser(user);
	}

}
