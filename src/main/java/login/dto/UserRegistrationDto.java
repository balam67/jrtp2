package login.dto;

import java.util.Set;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
public class UserRegistrationDto {

	
	    
	    @NotBlank(message = "First name is required")
	    private String firstName;

	    @NotBlank(message = "Last name is required")
	    private String lastName;

	    @NotBlank(message = "Email is required")
	    @Email(message = "Invalid email address")
	    private String email;

	    @NotBlank(message = "Username is required")
	    private String username;

	    @NotBlank(message = "Password is required")
	    private String password;

	    @NotBlank(message = "Phone number is required")
	    private String phoneNumber;

	    private Set<String> roles;

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getPhoneNumber() {
			return phoneNumber;
		}

		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}

		public Set<String> getRoles() {
			return roles;
		}

		public void setRoles(Set<String> roles) {
			this.roles = roles;
		}

		@Override
		public String toString() {
			return "UserRegistrationDto [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
					+ ", username=" + username + ", password=" + password + ", phoneNumber=" + phoneNumber + ", roles="
					+ roles + "]";
		}

	    // getters and setters omitted for brevity
	}


