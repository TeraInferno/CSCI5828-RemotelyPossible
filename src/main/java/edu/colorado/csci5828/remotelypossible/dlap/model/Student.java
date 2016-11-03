package edu.colorado.csci5828.remotelypossible.dlap.model;

import javax.persistence.*;

import java.util.List;

@Entity
@Table(name="student")
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id = null;
	
	@Column
	private Long studentId = null;

	@Column(length=50)
	private String name;

	@Column(length=1)
	private String gender;

	@Column(length=3)
	private String hispanic;

	@ElementCollection
	private List<String> race;

	@Column(length=64)
	private String boulderAddress;

	@OneToOne
	private PhoneNumber boulderPhone;

	@Column(length=50)
	private String boulderEmail;

	@Column(length=64)
	private String summerAddress;

	@OneToOne
	private PhoneNumber summerPhone;

	@Column(length=50)
	private String summerEmail;

	@Column(length=128)
	private String primaryMajor;

	@Column(length=128)
	private String secondaryMajor;

	@Column(length=9)
	private String studentNumber;

	@Column(length=6)
	private String gpa;

	@Column(length=20)
	private String schoolLevel;

	@Column(length=2)
	private String graduationMonth;

	@Column(length=4)
	private String graduationYear;

	@Column
	private boolean previousWorkExperienceExists;

	@Column(length = 75)
	private String firstSkill;

	@Column(length = 75)
	private String secondSkill;

	@Column(length = 75)
	private String thirdSkill;

	@Column(length=256)
	private String resumeUrl;

	@Column(length=256)
	private String coverLetterUrl;

  public Long getStudentId() {
    return studentId;
  }

  public void setStudentId(Long studentId) {
    this.studentId = studentId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }

  public String getHispanic() {
    return hispanic;
  }

  public void setHispanic(String hispanic) {
    this.hispanic = hispanic;
  }

  public List<String> getRace() {
    return race;
  }

  public void setRace(List<String> race) {
    this.race = race;
  }

  public String getBoulderAddress() {
    return boulderAddress;
  }

  public void setBoulderAddress(String boulderAddress) {
    this.boulderAddress = boulderAddress;
  }

  public PhoneNumber getBoulderPhone() {
    return boulderPhone;
  }

  public void setBoulderPhone(PhoneNumber boulderPhone) {
    this.boulderPhone = boulderPhone;
  }

  public String getBoulderEmail() {
    return boulderEmail;
  }

  public void setBoulderEmail(String boulderEmail) {
    this.boulderEmail = boulderEmail;
  }

  public String getSummerAddress() {
    return summerAddress;
  }

  public void setSummerAddress(String summerAddress) {
    this.summerAddress = summerAddress;
  }

  public PhoneNumber getSummerPhone() {
    return summerPhone;
  }

  public void setSummerPhone(PhoneNumber summerPhone) {
    this.summerPhone = summerPhone;
  }

  public String getSummerEmail() {
    return summerEmail;
  }

  public void setSummerEmail(String summerEmail) {
    this.summerEmail = summerEmail;
  }

  public String getPrimaryMajor() {
    return primaryMajor;
  }

  public void setPrimaryMajor(String primaryMajor) {
    this.primaryMajor = primaryMajor;
  }

  public String getSecondaryMajor() {
    return secondaryMajor;
  }

  public void setSecondaryMajor(String secondaryMajor) {
    this.secondaryMajor = secondaryMajor;
  }

  public String getStudentNumber() {
    return studentNumber;
  }

  public void setStudentNumber(String studentNumber) {
    this.studentNumber = studentNumber;
  }

  public String getGpa() {
    return gpa;
  }

  public void setGpa(String gpa) {
    this.gpa = gpa;
  }

  public String getSchoolLevel() {
    return schoolLevel;
  }

  public void setSchoolLevel(String schoolLevel) {
    this.schoolLevel = schoolLevel;
  }

  public String getGraduationMonth() {
    return graduationMonth;
  }

  public void setGraduationMonth(String graduationMonth) {
    this.graduationMonth = graduationMonth;
  }

  public String getGraduationYear() {
    return graduationYear;
  }

  public void setGraduationYear(String graduationYear) {
    this.graduationYear = graduationYear;
  }

  public boolean isPreviousWorkExperienceExists() {
    return previousWorkExperienceExists;
  }

  public void setPreviousWorkExperienceExists(boolean previousWorkExperienceExists) {
    this.previousWorkExperienceExists = previousWorkExperienceExists;
  }

  public String getFirstSkill() {
    return firstSkill;
  }

  public void setFirstSkill(String firstSkill) {
    this.firstSkill = firstSkill;
  }

  public String getSecondSkill() {
    return secondSkill;
  }

  public void setSecondSkill(String secondSkill) {
    this.secondSkill = secondSkill;
  }

  public String getThirdSkill() {
    return thirdSkill;
  }

  public void setThirdSkill(String thirdSkill) {
    this.thirdSkill = thirdSkill;
  }

  public String getResumeUrl() {
    return resumeUrl;
  }

  public void setResumeUrl(String resumeUrl) {
    this.resumeUrl = resumeUrl;
  }

  public String getCoverLetterUrl() {
    return coverLetterUrl;
  }

  public void setCoverLetterUrl(String coverLetterUrl) {
    this.coverLetterUrl = coverLetterUrl;
  }


}
