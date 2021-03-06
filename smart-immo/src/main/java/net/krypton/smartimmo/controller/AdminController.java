package net.krypton.smartimmo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.krypton.smartimmo.entities.Admin;
import net.krypton.smartimmo.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {

		return "login";
	}

	@RequestMapping(value = "/saveAdmin", method = RequestMethod.POST)
	public String enregistrerAdmin(@Valid Admin a, BindingResult result,
			ModelMap model) {
		adminService.ajouterAdmin(a);
		return "redirect:/viewAdmins";
	}

	@RequestMapping(value = "/saveAdmin", method = RequestMethod.GET)
	public String newAdmin(ModelMap model) {
		Admin admin = new Admin();
		model.addAttribute("formAdmin", admin);
		model.addAttribute("edit", false);
		return "formAdmin";
	}

	@RequestMapping(value = "/modifyAdmin-{idAdmin}", method = RequestMethod.GET)
	public String editAdmin(@PathVariable int idAdmin, ModelMap model) {
		Admin admin = adminService.consulterAdmin(idAdmin);
		model.addAttribute("formAdmin", admin);
		model.addAttribute("edit", true);
		return "formAdmin";
	}

	@RequestMapping(value = "/modifyAdmin-{idAdmin}", method = RequestMethod.POST)
	public String modifierAdmin(@Valid Admin a, BindingResult result,
			ModelMap model, @PathVariable int idAdmin) {
		adminService.modifierAdmin(a);
		return "redirect:/viewAdmins";
	}

	@RequestMapping(value = "/deleteAdmin-{idAdmin}")
	public String supprimerAdmin(@PathVariable int idAdmin) {

		try {
			adminService.supprimerAdmin(idAdmin);
			return "redirect:/viewAdmins";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/viewAdmins";
		}
	}

	@RequestMapping("/viewAdmin")
	public Admin consulterAdmin(int idAdmin) {
		return adminService.consulterAdmin(idAdmin);
	}

	@RequestMapping(value = "/viewAdmins")
	public String consulterAdmins(Map<String, Object> map) {
		map.put("listAdmin", adminService.consulterAdmins());
		return "admin";
	}

	public Admin findAdminByRole(String role) {
		List<Admin> admins = adminService.consulterAdmins();
		Admin admin = new Admin();
		for (int i = 0; i < admins.size(); i++) {
			Admin a = new Admin();
			a = admins.get(i);

			if (a.getTypeUser().equals(role)) {
				admin = a;
			}
		}
		return admin;
	}
}
