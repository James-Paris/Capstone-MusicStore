package com.hcl.musicstore;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.hcl.musicstore.model.User;
import com.hcl.musicstore.repository.UserRepository;

@Component    
public class CommandLineAppStartupRunner implements CommandLineRunner {
    @Autowired
    UserRepository userRepository;
    
    BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

    @Override
    public void run(String...args) throws Exception {
        User admin = new User();
        admin.setUsername("admin");
        admin.setPassword("password");
        admin.setPassword(bCryptPasswordEncoder.encode(admin.getPassword()));
        admin.setRole("ADMIN");
        userRepository.save(admin);
    }
}