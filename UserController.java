package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.springmvc.dao.UserDao;
import com.springmvc.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	@RequestMapping("/index")
	public String index() {
		return "Login";
	}

	@RequestMapping("/Registration")
	public String RegisterPage() {
		return "Registration";
	}

	@RequestMapping("/Create")
	public String createUser(@ModelAttribute("user") User user, Model model) {
		System.out.println(user);
		this.userDao.saveUser(user);
		return "Login";
	}

	@RequestMapping("/Login")
	public String Loginpage() {
		return "Login";
	}

	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String Login(@RequestParam("useremail") String useremail, @RequestParam String password,
			HttpSession session) {
		User user = this.userDao.login(useremail, password);

		if (user != null) {

			return "redirect:/list";
		} else {
			session.setAttribute("message", "Invalid Email or Password");
			return "redirect:/Login";
		}
	}

	@RequestMapping("/list")
	public String getAllUser(Model model) {
		List<User> userlist = this.userDao.getAll();
		model.addAttribute("userlist", userlist);
		return "UserList";
	}

	@RequestMapping("/delete/{userid}")
	public RedirectView deleteUser(@PathVariable("userid") int userid, HttpServletRequest request) {

		this.userDao.deleteEmpolyee(userid);
		System.out.println("User id : " + userid);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/list");
		return redirectView;
	}

	@RequestMapping(path = "/Create", method = RequestMethod.POST)
	public RedirectView handleUser(@ModelAttribute User user, HttpServletRequest request) {
		userDao.saveUser(user);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("/update/{userid}")
	public String updateUser(@PathVariable("userid") int userid, Model m) {

		User user = this.userDao.getUser(userid);
		m.addAttribute("user", user);
		return "UpdateForm";

	}
}
