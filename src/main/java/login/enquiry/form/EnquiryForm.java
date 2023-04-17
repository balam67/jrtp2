package login.enquiry.form;



public class EnquiryForm {

	    private Long id;
	    
	    private String studentName;

	    private String phoneNumber;

	    private String course;
	    
	    private String classMode;

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
			return "Enquiry [id=" + id + ", studentName=" + studentName + ", phoneNumber=" + phoneNumber + ", course="
					+ course + ", classMode=" + classMode + ", enquiryStatus=" + enquiryStatus + "]";
		}
}
