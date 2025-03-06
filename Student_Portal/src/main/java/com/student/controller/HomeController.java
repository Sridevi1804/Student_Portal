package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.student.entity.Student;
import com.student.service.StudentService;

@Controller
@RequestMapping("/students")
public class HomeController {
	@Autowired
	private StudentService service;
	
	//getAllStudent
	@GetMapping("/home")
	public String  ListOfStudent(Model model) {
		List<Student> students =service.getAllStudent();
		model.addAttribute("students",students);
		return "students";
	}
	
	@GetMapping("/new")
	public String showNewForm(Model model) {
		model.addAttribute("student",new Student());
		return "student_form";
	}
	
	@PostMapping("/save")
	public String saveStudent(@ModelAttribute Student student) {
		service.saveStudent(student);
		return "redirect:/students/home";
	}
	
	@GetMapping("/view/{id}")	
	public String viewOneStudent(@PathVariable long id,Model model) {
		Student student=service.getById(id);
		
		if(student!=null) {
			model.addAttribute("student", student);
			return "view_student";
		}
		else {
			return "errorPage";
		}
		
	}
	
	@GetMapping("/edit/{id}")	
	public String editStudent(@PathVariable long id,Model model) {
		Student student=service.getById(id);
		
		if(student!=null) {
			model.addAttribute("student", student);
			return "update_student";
		}
		else {
			return "errorPage";
		}
		
	}
	
	@PostMapping("/update")	
	public String UpdateStudent(@RequestParam long id,@ModelAttribute Student student) {
		boolean isUpdated=service.updateStudent(id,student);
		
		if(isUpdated==true) {
			return "redirect:/students/home";
		}
		else {
			return "errorPage";
		}
		
	}
	
	@GetMapping("/delete/{id}")
	public String deleteStudent(@PathVariable long id) {
		boolean isDeleted=service.deleteStudent(id);
		if(isDeleted) {
			return "redirect:/students/home";
		}
		else {
			return "errorPage";
		}
	}	
}