package com.student.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.entity.Student;
import com.student.repository.StudentRepository;

@Service
public class StudentService {
	@Autowired
	private StudentRepository repo;
	
	//create
	public void saveStudent(Student student) {
		repo.save(student);
	}
	//select
	public List<Student> getAllStudent(){
		return repo.findAll();
	}
	/*
	public Optional<Student> getById(long id){
		return Optional.of(repo.findById(id).orElse(null));
	}
	*/
	public Student getById(long id) {
		Student student=repo.findById(id).orElse(null);
		return student;
	}
	
	public boolean updateStudent(long id,Student updateStudent) {
		Optional<Student>existingStudent = Optional.of(repo.findById(id).orElse(null));
		
		if(existingStudent.isPresent()) {
			Student student=existingStudent.get();
			student.setName(updateStudent.getName());
			student.setEmail(updateStudent.getEmail());
			repo.save(student);
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean deleteStudent(Long id) {
		if(repo.existsById(id)) {
			repo.deleteById(id);
			return true;
		}
		else {
			return false;
		}
	}
}