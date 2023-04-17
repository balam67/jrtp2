package login.enquiry.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import login.enquiry.entity.EnquiryEntity;
import login.select.Course;

@Repository
public interface EnquiryRepository extends JpaRepository<EnquiryEntity, Long> {
    List<EnquiryEntity> findByCourse(Course course);


}
