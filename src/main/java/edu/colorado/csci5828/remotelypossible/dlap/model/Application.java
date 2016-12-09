package edu.colorado.csci5828.remotelypossible.dlap.model;

import javax.persistence.*;

import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;

@Entity
@Table(name="application")
public class Application {

    public static final int SCORE_DISQUALIFIED = -1;
  
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id = null;
    
    @Column(length=64, nullable=false)
    private String username;
    
    @OneToOne
    private Student student;
    
    @OneToOne
    private ApprenticeshipInfo apprenticeshipInfo;
        
    @Column(length=256, nullable=true)
    private String disqualReason = Constants.EMPTY_STRING;
    
    @Column(nullable=false)
    private Boolean override = Boolean.FALSE;
    
    @OneToOne
    private Project assigned;
        
    @Column(nullable=false)
    private int score = 0;
    
    
    

    public Long getId() {
      return id;
    }

    public void setId(Long id) {
      this.id = id;
    }

    public Student getStudent() {
      return student;
    }

    public void setStudent(Student student) {
      this.student = student;
    }

    public ApprenticeshipInfo getApprenticeshipInfo() {
      return apprenticeshipInfo;
    }

    public void setApprenticeshipInfo(ApprenticeshipInfo apprenticeshipInfo) {
      this.apprenticeshipInfo = apprenticeshipInfo;
    }

    public String getUsername() {
      return username;
    }

    public void setUsername(String username) {
      this.username = username;
    }

    public String getDisqualReason() {
      return disqualReason;
    }

    public void setDisqualReason(String disqualReason) {
      this.disqualReason = disqualReason;
    }

    public Boolean getOverride() {
      return override;
    }

    public void setOverride(Boolean override) {
      this.override = override;
    }

    public Project getAssigned() {
      return assigned;
    }

    public void setAssigned(Project assigned) {
      this.assigned = assigned;
    }

    public int getScore() {
      return score;
    }

    public void setScore(int score) {
      this.score = score;
    }



}