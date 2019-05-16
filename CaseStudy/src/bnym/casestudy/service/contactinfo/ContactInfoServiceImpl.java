package bnym.casestudy.service.contactinfo;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bnym.casestudy.entity.ContactInfo;
import bnym.casestudy.repository.ContactInformationRepository;


@Service
@Transactional
public class ContactInfoServiceImpl implements ContactInfoService {
	
	private ContactInformationRepository repository;
	
	
	public  ContactInfoServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Autowired
	public ContactInfoServiceImpl(ContactInformationRepository repository) {
	
		this.repository = repository;
	}
	
	


	@Override
	public boolean saveContactInfo(ContactInfo contactInfo) {
		try {
			repository.save(contactInfo);
			return true;
		} catch (Exception ex) {
			return false;
		}	}

	@Override
	public boolean deleteContactInfoById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

}
