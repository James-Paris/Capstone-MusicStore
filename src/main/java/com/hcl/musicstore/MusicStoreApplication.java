package com.hcl.musicstore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.hcl.musicstore.model.User;
import com.hcl.musicstore.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class MusicStoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(MusicStoreApplication.class, args);
	}

//	@Autowired
//	UserRepository userRepository;
//
//
//	public void run(String... args) throws Exception {
//
//		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//
//
//		User user = User.builder()
//				.id(1111)
//				.username("josh")
//				.password(bCryptPasswordEncoder.encode("pass"))
//				.email("josh.persaud@hcl.com")
//				.build();
//
//		userRepository.save(user);
//	}
}

