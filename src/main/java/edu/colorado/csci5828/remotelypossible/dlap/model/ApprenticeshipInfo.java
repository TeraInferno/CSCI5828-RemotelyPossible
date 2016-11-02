package edu.colorado.csci5828.remotelypossible.dlap.model;

import javax.persistence.*;

@Entity
@Table(name="apprenticshipinfo")
public class ApprenticeshipInfo {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id = null;

    @Column
    private boolean appliedPreviously;

    @Column(length=300)
    private String otherPlannedEmployment;

    @ManyToOne(cascade = CascadeType.ALL)
    private Project firstChoice;

    @ManyToOne(cascade = CascadeType.ALL)
    private Project secondChoice;

    @ManyToOne(cascade = CascadeType.ALL)
    private Project thirdChoice;

    @ManyToOne(cascade = CascadeType.ALL)
    private Project fourthChoice;

    @ManyToOne(cascade = CascadeType.ALL)
    private Project fifthChoice;

    @Column
    private boolean backgroundCheckComplete;

    @Column
    private boolean discriminationTrainingComplete;

    @Column(length=10)
    private String discriminationTrainingSemester;

    @Column(length=4)
    private String discriminationTrainingYear;

    @Column(length=4)
    private String socialSecurityNumber;

    public Long getId() {
      return id;
    }

    public void setId(Long id) {
      this.id = id;
    }

    public boolean isAppliedPreviously() {
      return appliedPreviously;
    }

    public void setAppliedPreviously(boolean appliedPreviously) {
      this.appliedPreviously = appliedPreviously;
    }

    public String getOtherPlannedEmployment() {
      return otherPlannedEmployment;
    }

    public void setOtherPlannedEmployment(String otherPlannedEmployment) {
      this.otherPlannedEmployment = otherPlannedEmployment;
    }

    public Project getFirstChoice() {
      return firstChoice;
    }

    public void setFirstChoice(Project firstChoice) {
      this.firstChoice = firstChoice;
    }

    public Project getSecondChoice() {
      return secondChoice;
    }

    public void setSecondChoice(Project secondChoice) {
      this.secondChoice = secondChoice;
    }

    public Project getThirdChoice() {
      return thirdChoice;
    }

    public void setThirdChoice(Project thirdChoice) {
      this.thirdChoice = thirdChoice;
    }

    public Project getFourthChoice() {
      return fourthChoice;
    }

    public void setFourthChoice(Project fourthChoice) {
      this.fourthChoice = fourthChoice;
    }

    public Project getFifthChoice() {
      return fifthChoice;
    }

    public void setFifthChoice(Project fifthChoice) {
      this.fifthChoice = fifthChoice;
    }

    public boolean isBackgroundCheckComplete() {
      return backgroundCheckComplete;
    }

    public void setBackgroundCheckComplete(boolean backgroundCheckComplete) {
      this.backgroundCheckComplete = backgroundCheckComplete;
    }

    public boolean isDiscriminationTrainingComplete() {
      return discriminationTrainingComplete;
    }

    public void setDiscriminationTrainingComplete(boolean discriminationTrainingComplete) {
      this.discriminationTrainingComplete = discriminationTrainingComplete;
    }

    public String getDiscriminationTrainingSemester() {
      return discriminationTrainingSemester;
    }

    public void setDiscriminationTrainingSemester(String discriminationTrainingSemester) {
      this.discriminationTrainingSemester = discriminationTrainingSemester;
    }

    public String getDiscriminationTrainingYear() {
      return discriminationTrainingYear;
    }

    public void setDiscriminationTrainingYear(String discriminationTrainingYear) {
      this.discriminationTrainingYear = discriminationTrainingYear;
    }

    public String getSocialSecurityNumber() {
      return socialSecurityNumber;
    }

    public void setSocialSecurityNumber(String socialSecurityNumber) {
      this.socialSecurityNumber = socialSecurityNumber;
    }

}
