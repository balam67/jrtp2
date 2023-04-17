package login.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

    @Entity
	@Table(name = "users")
	public class User implements Serializable {
    	    
    	    @Id
    	    @GeneratedValue(strategy = GenerationType.IDENTITY)
    	    private Long id;
    	    
    	    @Column(name = "username", unique = true, nullable = false)
    	    private String username;
    	    
    	    @Column(name = "password", nullable = false)
    	    private String password;
    	    
    	    @Column(name = "enabled", nullable = false)
    	    private boolean enabled;
    	    
    	    @Column(name = "full_name")
    	    private String fullName;
    	    
    	    @Column(name = "email", unique = true, nullable = false)
    	    private String email;
    	    
    	    @Column(name = "phone_number", unique = true, nullable = false)
    	    private String phoneNumber;
    	    
    	    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    	    private Set<UserRole> userRole = new HashSet<UserRole>();

			public Long getId() {
				return id;
			}

			public void setId(Long id) {
				this.id = id;
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

			public boolean isEnabled() {
				return enabled;
			}

			public void setEnabled(boolean enabled) {
				this.enabled = enabled;
			}

			public String getFullName() {
				return fullName;
			}

			public void setFullName(String fullName) {
				this.fullName = fullName;
			}

			public String getEmail() {
				return email;
			}

			public void setEmail(String email) {
				this.email = email;
			}

			public String getPhoneNumber() {
				return phoneNumber;
			}

			public void setPhoneNumber(String phoneNumber) {
				this.phoneNumber = phoneNumber;
			}

			public Set<UserRole> getUserRole() {
				return userRole;
			}

			public void setUserRole(Set<UserRole> userRole) {
				this.userRole = userRole;
			}

			
			@Override
			public String toString() {
				return "User [id=" + id + ", username=" + username + ", password=" + password + ", enabled=" + enabled
						+ ", fullName=" + fullName + ", email=" + email + ", phoneNumber=" + phoneNumber + ", userRole="
						+ userRole + "]";
			}

    	    // constructors, getters and setters
	}


