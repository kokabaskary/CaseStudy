package bnym.casestudy.service.contactinfo;

import bnym.casestudy.entity.ContactInfo;


public interface ContactInfoService {
	
	public boolean saveContactInfo(ContactInfo contactInfo);
	public boolean deleteContactInfoById(Long id);

}
