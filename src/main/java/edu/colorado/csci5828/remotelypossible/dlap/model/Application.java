package edu.colorado.csci5828.remotelypossible.dlap.model;

import javax.management.remote.SubjectDelegationPermission;
import javax.persistence.*;

@Entity
@Table(name="application")
public class Application {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id = -1L;

    @OneToOne
    private Student student;

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public Student getStudent() { return student; }
    public void setStudent(Student student) { this.student = student; }

}