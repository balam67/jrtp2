package login.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import login.Role;

@Entity
@Table(name = "user_roles")
public class UserRole {

	    //public static final String ADMIN = "ADMIN";
	   // public static final String USER = "USER";
	    // define more roles here if needed
	    
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name = "user_id")
	    private User user;

	    @Enumerated(EnumType.STRING)
	    @Column(name = "role", length = 20)
	    private Role role;

	    public UserRole() {
	    }

	    public UserRole(User user, Role role) {
	        this.user = user;
	        this.role = role;
	    }

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public Role getRole() {
			return role;
		}

		public void setRole(Role role) {
			this.role = role;
		}

		@Override
		public String toString() {
			return "UserRole [id=" + id + ", user=" + user + ", role=" + role + "]";
		}

		public UserRole(Long id, User user, Role role) {
			super();
			this.id = id;
			this.user = user;
			this.role = role;
		}

	    // getters and setters
  
	 
}
