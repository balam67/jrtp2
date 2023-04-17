package login.enquiry.service;

import java.util.List;

import login.enquiry.entity.EnquiryEntity;


public interface EnquiryService {
	EnquiryEntity saveEnquiry(EnquiryEntity entity);
    List<EnquiryEntity> getAllEnquiries();

    EnquiryEntity getById(Long id);
}
