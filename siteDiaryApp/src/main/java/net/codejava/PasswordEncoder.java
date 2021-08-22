package net.codejava;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoder {

	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String rawPassword = "Carlos2021";
		String encodedPAssword = encoder.encode(rawPassword);
		
		System.out.println(encodedPAssword);


	}

}
