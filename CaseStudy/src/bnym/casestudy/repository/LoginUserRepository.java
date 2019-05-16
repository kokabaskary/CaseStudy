package bnym.casestudy.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import bnym.casestudy.entity.LoginUser;

@Repository
public interface LoginUserRepository extends CrudRepository<LoginUser, Long> {

}
