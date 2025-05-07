package com.yashvi.studentcourseapp.repository;

import com.yashvi.studentcourseapp.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

    // Custom Inner Join Query to fetch students by course name
    @Query("SELECT s FROM Student s JOIN s.courses c WHERE c.name = ?1")
    List<Student> findStudentsByCourseName(String courseName);
}
