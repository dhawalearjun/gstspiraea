package com.nextsaa.gstspiraea.service.impl;

import com.nextsaa.gstspiraea.dto.UserDetailsDTO;
import com.nextsaa.gstspiraea.entity.UserDetails;
import com.nextsaa.gstspiraea.exceptions.DataNotFoundException;
import com.nextsaa.gstspiraea.mapper.UserDetailsMapper;
import com.nextsaa.gstspiraea.repository.UserDetailsRepository;
import com.nextsaa.gstspiraea.service.ConfigService;
import com.nextsaa.gstspiraea.service.UserService;
import com.nextsaa.gstspiraea.util.ExceptionConstants;
import com.nextsaa.gstspiraea.util.ObjectMapperUtils;
import com.nextsaa.gstspiraea.util.Utility;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
    private final UserDetailsRepository userDetailsRepository;
	
	@Autowired
    private final ConfigService configService;
	
	@Autowired
    private JavaMailSender javaMailSender;
	
	/*@Autowired ,PasswordEncoder passwordEncoder
    private final PasswordEncoder passwordEncoder;*/ 

    public UserServiceImpl(final UserDetailsRepository userDetailsRepository, ConfigService configService) {
        this.userDetailsRepository = userDetailsRepository;
        //this.passwordEncoder = passwordEncoder;
		this.configService = configService;
    }
    
	@Override
	public UserDetailsDTO getUserById(Long id) {
		UserDetails user = userDetailsRepository.findById(id)
                .orElseThrow(() -> new DataNotFoundException(ExceptionConstants.USER_RECORD_NOT_FOUND));
        return UserDetailsMapper.mapUserToDto(user);
	}

	@Override
	public UserDetailsDTO createUser(UserDetailsDTO userDetailsDTO) {
	        UserDetails user = userDetailsRepository.save(UserDetailsMapper.mapUserToEntity(userDetailsDTO));
	        SimpleMailMessage msg = new SimpleMailMessage();
	        msg.setTo(userDetailsDTO.getUserEmail());
	        msg.setFrom(configService.getConfigByKey("originatorEmail").getConfigvalue());
	        msg.setSubject(configService.getConfigByKey("registrationMailSubject").getConfigvalue());
	        msg.setText(configService.getConfigByKey("registrationMailBody").getConfigvalue());
	        javaMailSender.send(msg);
	        return UserDetailsMapper.mapUserToDto(user);
	}

	@Override
	public UserDetailsDTO updateEmployee(UserDetailsDTO userDetailsDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean checkLoginDetails(String username, String password,String role) {
		UserDetails user = userDetailsRepository.findByLoginUser(username);
		//passwordEncoder.encode
		if(user.getLoginPassword().equals(password)&&user.getRole().equalsIgnoreCase(role)) {			
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<UserDetailsDTO> getAllUsers() {
		return ObjectMapperUtils.mapAll(userDetailsRepository.findAll(),UserDetailsDTO.class);
	}

	@Override
	public UserDetailsDTO updateLoginDetails(UserDetailsDTO userDetailsDTO) {
		String loginUserName=null;
		String password=Utility.generateCommonLangPassword();
		if(userDetailsDTO.getFirstName().length()>4) {
			loginUserName=userDetailsDTO.getFirstName().substring(0, 4);
		}
		if(userDetailsDTO.getUserEmail().length()>4) {
			loginUserName=loginUserName.concat("1"+userDetailsDTO.getUserEmail().substring(0, 4));
		}
		
		SimpleMailMessage msg = new SimpleMailMessage();
        msg.setTo(userDetailsDTO.getUserEmail());
        msg.setFrom(configService.getConfigByKey("originatorEmail").getConfigvalue());
        msg.setSubject(configService.getConfigByKey("loginMailSubject").getConfigvalue());
        msg.setText(configService.getConfigByKey("loginMailBody").getConfigvalue()+"\n UserName: "+loginUserName + "\n Password: " +password);
        javaMailSender.send(msg);
        
        UserDetails user =userDetailsRepository.findById(userDetailsDTO.getUserId()).orElseThrow(() -> new DataNotFoundException(ExceptionConstants.USER_RECORD_NOT_FOUND));
        user.setLoginUserName(loginUserName);
        user.setLoginPassword(password);
        user.setModifiedOn(LocalDateTime.now());
        user.setModifiedBy("ADMIN");
		return UserDetailsMapper.mapUserToDto(userDetailsRepository.save(user));
	}
}
