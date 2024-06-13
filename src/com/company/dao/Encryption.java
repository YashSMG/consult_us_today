package com.company.dao;

import com.lambdaworks.crypto.SCryptUtil;


public class Encryption {
	
	public static String encrypt(String input) {
		    
	        String generatedSecuredPasswordHash = SCryptUtil.scrypt(input, 16, 16, 16);
	       
	        System.out.println(generatedSecuredPasswordHash);
	       
		return generatedSecuredPasswordHash;
	}
	
	public static boolean validatePass(String password, String ScryptPassword) {
		
			boolean matched = SCryptUtil.check(password, ScryptPassword);
	        System.out.println(matched);
	         
		return matched;
	}

}
