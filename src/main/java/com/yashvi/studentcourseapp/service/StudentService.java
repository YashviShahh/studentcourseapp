package com.yashvi.studentcourseapp.service;

import com.yashvi.studentcourseapp.model.Student;
import com.yashvi.studentcourseapp.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public void saveStudent(Student student) {
        studentRepository.save(student);
    }

    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public Optional<Student> getStudentById(Long id) {
        return studentRepository.findById(id);
    }

    public List<Student> getStudentsByCourseName(String courseName) {
        return studentRepository.findStudentsByCourseName(courseName);
    }
}
