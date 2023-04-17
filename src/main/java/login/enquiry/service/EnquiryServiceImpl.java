package login.enquiry.service;

import java.util.List;

import javax.persistence.EntityNotFoundException;

import login.enquiry.repository.EnquiryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import login.enquiry.entity.EnquiryEntity;
import login.enquiry.form.EnquiryForm;

@Service
public class EnquiryServiceImpl implements EnquiryService{

	@Autowired
	private EnquiryRepository EnquiryRepository;

	@Override
	public EnquiryEntity saveEnquiry(EnquiryEntity entity) {
		EnquiryEntity savedEntity = EnquiryRepository.save(entity);
		return savedEntity;
	}

	@Override
	public List<EnquiryEntity> getAllEnquiries() {
		List<EnquiryEntity> findAllEnquries = EnquiryRepository.findAll();
		return findAllEnquries;
	}
	
	
	

    @Override
    public EnquiryEntity getById(Long id) {
        return EnquiryRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Enquiry not found with id " + id));
    }
	
   
}
