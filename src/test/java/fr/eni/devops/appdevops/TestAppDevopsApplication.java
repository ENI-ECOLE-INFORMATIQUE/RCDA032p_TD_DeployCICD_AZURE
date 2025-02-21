package fr.eni.devops.appdevops;

import org.springframework.boot.SpringApplication;

public class TestAppDevopsApplication {

	public static void main(String[] args) {
		SpringApplication.from(AppDevopsApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
