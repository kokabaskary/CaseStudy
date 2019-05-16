package bnym.casestudy.service.Inquiry;

import bnym.casestudy.entity.InquiryForm;

public interface InquiryService {
	
	public InquiryForm getInquiryFormById(Long id);
	public boolean saveInquiryForm(InquiryForm inquiryForm);
	public boolean deleteInquiryFormById(Long id);

}
