package com.webApp.crud.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customertype")
public class CustomerType {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "customer_type_id")
	private int customerTypeId;

	@Column(name = "customer_type_name")
	private String customerTypeName;

	public int getCustomerTypeId() {
		return customerTypeId;
	}

	public void setCustomerTypeId(int customerTypeId) {
		this.customerTypeId = customerTypeId;
	}

	public String getCustomerTypeName() {
		return customerTypeName;
	}

	public void setCustomerTypeName(String customerTypeName) {
		this.customerTypeName = customerTypeName;
	}

}
