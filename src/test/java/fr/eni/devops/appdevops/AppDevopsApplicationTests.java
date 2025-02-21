package fr.eni.devops.appdevops;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;

@Import(TestcontainersConfiguration.class)
@SpringBootTest
class AppDevopsApplicationTests {

	@Test
	void contextLoads() {
	}

}
