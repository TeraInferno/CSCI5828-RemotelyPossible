package edu.colorado.csci5828.remotelypossible.dlap.model;

import javax.persistence.*;

@Entity
@Table(name="application")
public class Application {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id = null;
    
    @OneToOne
    private Student student;
    
    @OneToOne
    private ApprenticeshipInfo apprenticeshipInfo;

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



}