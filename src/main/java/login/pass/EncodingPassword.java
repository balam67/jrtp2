package login.pass;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class EncodingPassword {

	public static String encryptPassword(String password) {
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(password);
		

		return encodedPassword;
	}

	
	public String decryptEncodedPassword(String dbEncodedPassword) {
		
		// Retrieve the encoded password from the database
		String encodedPassword = "encoded_password_from_database";

		// Create a new instance of BCryptPasswordEncoder
		BCryptPasswordEncoder decoder = new BCryptPasswordEncoder();

		// Use the encoder to decode the password
		//String decodedPassword = decoder.decode(encodedPassword);

		// Print the decoded password
		//System.out.println(decodedPassword);

		
		return null;
	}
	
	public static void main(String[] args) {
		String encryptPassword = EncodingPassword.encryptPassword("Varun");
		System.out.println(encryptPassword);
	}
}
