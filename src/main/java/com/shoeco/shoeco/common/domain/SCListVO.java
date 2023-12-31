package com.shoeco.shoeco.common.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString	
public class SCListVO {

	//sc_products
	private long prodCode;
	private long brandCode;
	private String prodName;
	private String gender;
	private long sellPrice;
	private String category;
	private String material;
	private String country;
	
	//sc_products_option
	private String prodOptionNo;
//	private String prodCode;
	private int prodSize;
	private String color;
	private long prodCount;
	
	
	//sc_brand
//	private String brandCode;
	private String brandName;
	private String businessNo;
	private String managerName;
	private long brandPhoneNo;
	private String brandEmail;
	
	
	 
	//sc_products_attachments
	private String prodAttachUuid;
	//private String prodCode;
	private String uploadPath;
	private String prodFileName;
	private String prodFileType;
	
}
