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
	
}
