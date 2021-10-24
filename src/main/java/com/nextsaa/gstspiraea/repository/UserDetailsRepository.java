package com.nextsaa.gstspiraea.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nextsaa.gstspiraea.entity.UserDetails;


@Repository
public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {

	@Query(value="SELECT * FROM `user_details` WHERE UPPER(loginuser_name)=:username ", nativeQuery = true)
	UserDetails findByLoginUser(@Param("username")String username);

}
