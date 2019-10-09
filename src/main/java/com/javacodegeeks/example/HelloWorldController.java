package com.javacodegeeks.example;

import java.time.LocalTime;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

	@GetMapping("/hello")
	public LocalTime sayHello() {
		return java.time.LocalTime.now();  
		//return "Hello Java Code Geeks!";
		
	}
}
