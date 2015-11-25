package net.krypton.smartimmo.controller;

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

	@RequestMapping(value =  "/index" )
	public String Model() {
		return "index";
	}
	
	@RequestMapping(value="/", method = RequestMethod.POST)
	public String Admin(@Valid Admin a, BindingResult result, ModelMap model){
		adminService.ajouterAdmin(a);
		return "redirect:/viewAdmins";
	}
	
	@RequestMapping(value="/saveAdmin", method = RequestMethod.POST)
	public String enregistrerAdmin(@Valid Admin a, BindingResult result, ModelMap model){
		adminService.ajouterAdmin(a);
		return "redirect:/viewAdmins";
	}
	@RequestMapping(value = "/saveAdmin", method = RequestMethod.GET)
	public String newAdmin(ModelMap model){
		Admin admin = new Admin();
		model.addAttribute("formAdmin", admin);
		model.addAttribute("edit", false);
		return "formAdmin";
	}
	
	@RequestMapping(value = "/modifyAdmin-{idAdmin}", method = RequestMethod.GET)
	public String editAdmin(@PathVariable int idAdmin, ModelMap model){
		Admin admin = adminService.consulterAdmin(idAdmin);
		model.addAttribute("formAdmin", admin);
		model.addAttribute("edit", true);
		return "formAdmin";
	}
	@RequestMapping(value = "/modifyAdmin-{idAdmin}", method = RequestMethod.POST)
	public String modifierAdmin(@Valid Admin a, BindingResult result, ModelMap model, @PathVariable int idAdmin){
		adminService.modifierAdmin(a);
		return "redirect:/viewAdmins";
	}
	
	@RequestMapping(value = "/deleteAdmin-{idAdmin}")
	public String supprimerAdmin(@PathVariable int idAdmin){
		
		adminService.supprimerAdmin(idAdmin);
		return "redirect:/viewAdmins";
	}
	
	
	@RequestMapping("/viewAdmin")
	public Admin consulterAdmin(int idAdmin)
	{
		return adminService.consulterAdmin(idAdmin);
	}
	
	@RequestMapping(value="/viewAdmins")
	public String consulterAdmins(Map<String, Object> map)
	{
		map.put("listAdmin", adminService.consulterAdmins());
		return "admin";
	}
}
