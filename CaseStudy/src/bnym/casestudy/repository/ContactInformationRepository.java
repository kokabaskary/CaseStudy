package bnym.casestudy.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import bnym.casestudy.entity.ContactInfo;

@Repository
public interface ContactInformationRepository extends CrudRepository<ContactInfo, Long> {

}
