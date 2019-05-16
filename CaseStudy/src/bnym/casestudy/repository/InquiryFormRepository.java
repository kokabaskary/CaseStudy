package bnym.casestudy.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import bnym.casestudy.entity.InquiryForm;

@Repository
public interface InquiryFormRepository extends CrudRepository<InquiryForm, Long> {

}
