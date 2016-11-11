package edu.colorado.csci5828.remotelypossible.dlap.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="phonenumber")
public class PhoneNumber {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id = null;
	
	@Column(name="areacode", length=3)
	private String areacode;
	
	@Column(name="prefix", length=3)
	private String prefix;
	
	@Column(name="number", length=4)
	private String number;
	
	public String getPhoneNumber() {
		return toString();
	}
	
	public String getAreacode() {
		return areacode;
	}
	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String toString() {
		return new String("("+areacode+") "+prefix+"-"+number);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	
}
