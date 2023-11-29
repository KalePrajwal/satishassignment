package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.springmvc.dao.EmployeeDao;
import com.springmvc.model.Employee;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeDao empolyeeDao;

	@RequestMapping("/")
	public String crud(Model m) {
		System.out.println("This is crud controller!");
		List<Employee> employees = empolyeeDao.getAllEmp();
		m.addAttribute("employees", employees);
		return "index";
	}

	@RequestMapping("/add-employee")
	public String addEmployee(Model m) {
		m.addAttribute("title", "Add Employee");
		return "empolyee_form";
	}

	@RequestMapping(path = "/handle-employee", method = RequestMethod.POST)
	public RedirectView handleEmpolyee(@ModelAttribute Employee empolyee, HttpServletRequest request) {
		System.out.println(empolyee + "Hiiiiii");
		empolyeeDao.saveEmpolyeeData(empolyee);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("/delete/{eid}")
	public RedirectView deleteEmpolyee(@PathVariable("eid") int eid, HttpServletRequest request) {

		this.empolyeeDao.deleteEmpolyee(eid);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("/update/{eid}")
	public String updateEmpolyee(@PathVariable("eid") int eid, Model m) {

		Employee employee = this.empolyeeDao.getEmpolyee(eid);
		m.addAttribute("employee", employee);
		return "update_form";

	}

}
