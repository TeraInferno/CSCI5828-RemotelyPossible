package edu.colorado.csci5828.remotelypossible.dlap.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="project")
public class Project {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id = null;
	
	@Column(name="description", nullable=false, length=80)
	private String description;
	
	@Column(name="url", length=256)
	private String url;
	
	@Column(name="requirement", length=1000)
	private String requirement;
	
	@Column(name="longdescription", length=1200)
	private String longDescription;
		
	@OneToOne
	private Faculty faculty1;
	
	@OneToOne
	private Faculty faculty2;
	
	@OneToOne
	private Faculty graduate;
	
	@Column
	private int communityDevelopmentFocus = 0;

	@ElementCollection
	private List<String> acceptedMajors;
	
	@Column(length=128)
	private String supervisionLevel;
	
	@Column(length=128)
	private String supervisor;
	
	@Column(length=128)
	private String natureOfWork;
	
	@Column(length=128)
	private String natureOfWorkOther;
	
	@Column(length=64)
	private String priorWork;
	
	@Column(length=64)
	private String priorWorkOther;
	
	@Column(length=64)
	private String desiredStudent;
	
	@Column(length=10)
	private String speedType;
	
	@Column
	private Boolean speedTypeNotSure;
	
	@Column(length=64)
	private String accountingContact;
	
	@Column(length=5)
	private String dlSupervisor;
	
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Faculty getFaculty1() {
		return faculty1;
	}

	public void setFaculty1(Faculty faculty1) {
		this.faculty1 = faculty1;
	}

	public Faculty getFaculty2() {
		return faculty2;
	}

	public void setFaculty2(Faculty faculty2) {
		this.faculty2 = faculty2;
	}

	public Faculty getGraduate() {
		return graduate;
	}

	public void setGraduate(Faculty graduate) {
		this.graduate = graduate;
	}

	public int getCommunityDevelopmentFocus() {
		return communityDevelopmentFocus;
	}

	public void setCommunityDevelopmentFocus(int communityDevelopmentFocus) {
		this.communityDevelopmentFocus = communityDevelopmentFocus;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getRequirement() {
		return requirement;
	}

	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}

	public String getLongDescription() {
		return longDescription;
	}

	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}

	public List<String> getAcceptedMajors() {
		return acceptedMajors;
	}

	public void setAcceptedMajors(List<String> acceptedMajors) {
		this.acceptedMajors = acceptedMajors;
	}

	public String getSupervisionLevel() {
		return supervisionLevel;
	}

	public void setSupervisionLevel(String supervisionLevel) {
		this.supervisionLevel = supervisionLevel;
	}

	public String getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(String supervisor) {
		this.supervisor = supervisor;
	}

	public String getNatureOfWork() {
		return natureOfWork;
	}

	public void setNatureOfWork(String natureOfWork) {
		this.natureOfWork = natureOfWork;
	}

	public String getNatureOfWorkOther() {
		return natureOfWorkOther;
	}

	public void setNatureOfWorkOther(String natureOfWorkOther) {
		this.natureOfWorkOther = natureOfWorkOther;
	}

	public String getPriorWork() {
		return priorWork;
	}

	public void setPriorWork(String priorWork) {
		this.priorWork = priorWork;
	}

	public String getPriorWorkOther() {
		return priorWorkOther;
	}

	public void setPriorWorkOther(String priorWorkOther) {
		this.priorWorkOther = priorWorkOther;
	}

	public String getDesiredStudent() {
		return desiredStudent;
	}

	public void setDesiredStudent(String desiredStudent) {
		this.desiredStudent = desiredStudent;
	}

	public String getSpeedType() {
		return speedType;
	}

	public void setSpeedType(String speedType) {
		this.speedType = speedType;
	}

	public Boolean getSpeedTypeNotSure() {
		return speedTypeNotSure;
	}

	public void setSpeedTypeNotSure(Boolean speedTypeNotSure) {
		this.speedTypeNotSure = speedTypeNotSure;
	}

	public String getAccountingContact() {
		return accountingContact;
	}

	public void setAccountingContact(String accountingContact) {
		this.accountingContact = accountingContact;
	}

	public String getDlSupervisor() {
		return dlSupervisor;
	}

	public void setDlSupervisor(String dlSupervisor) {
		this.dlSupervisor = dlSupervisor;
	}
	
	
}
