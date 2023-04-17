package login.enquiry.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import login.select.ClassMode;
import login.select.Course;
import login.select.EnquiryStatus;

@Entity
@Table(name = "enquiries")
public class EnquiryEntity {

	/*
	 * public static final String Course = "Course"; public static final String
	 * ClassMode = "ClassMode"; public static final String EnquiryStatus =
	 * "EnquiryStatus";
	 */

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	   // @NotBlank(message = "Student name is required")
	    private String studentName;

	    
	   // @NotBlank(message = "Phone number is required")
	    private String phoneNumber;

	    private String course;

	    @Column(name="classmode")
	    private String classMode;

	    
	    @Column(name="enquirystatus")
	    private String enquiryStatus;

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getStudentName() {
			return studentName;
		}

		public void setStudentName(String studentName) {
			this.studentName = studentName;
		}

		public String getPhoneNumber() {
			return phoneNumber;
		}

		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}

		public String getCourse() {
			return course;
		}

		public void setCourse(String course) {
			this.course = course;
		}

		public String getClassMode() {
			return classMode;
		}

		public void setClassMode(String classMode) {
			this.classMode = classMode;
		}

		public String getEnquiryStatus() {
			return enquiryStatus;
		}

		public void setEnquiryStatus(String enquiryStatus) {
			this.enquiryStatus = enquiryStatus;
		}

		@Override
		public String toString() {
			return "EnquiryEntity [id=" + id + ", studentName=" + studentName + ", phoneNumber=" + phoneNumber
					+ ", course=" + course + ", classMode=" + classMode + ", enquiryStatus=" + enquiryStatus + "]";
		}

		

}
