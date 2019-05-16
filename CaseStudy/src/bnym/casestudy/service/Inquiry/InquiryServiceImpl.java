package bnym.casestudy.service.Inquiry;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bnym.casestudy.entity.InquiryForm;

import bnym.casestudy.repository.InquiryFormRepository;

@Service
@Transactional
public class InquiryServiceImpl implements InquiryService {

	private InquiryFormRepository repository;

	 public InquiryServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	 

	@Autowired
	public InquiryServiceImpl(InquiryFormRepository repository) {
		this.repository = repository;
	}

	@Override
	public InquiryForm getInquiryFormById(Long id) {
		InquiryForm inquiryForm = repository.findById(id).get();
		return inquiryForm;
	}

	@Override
	public boolean saveInquiryForm(InquiryForm inquiryForm) {
		try {
			repository.save(inquiryForm);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteInquiryFormById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

}
