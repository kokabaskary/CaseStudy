package bnym.casestudy.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import bnym.casestudy.entity.CustomCake;


@Repository
public interface CustomCakeRepository extends CrudRepository<CustomCake, Long> {

}
