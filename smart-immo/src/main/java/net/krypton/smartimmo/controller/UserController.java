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

import net.krypton.smartimmo.entities.User;
import net.krypton.smartimmo.service.AdminService;
import net.krypton.smartimmo.service.UserService;


@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	AdminService adminService;

	
	@RequestMapping(value="/saveUser", method = RequestMethod.POST)
	public String enregistrerUser(@Valid User v, BindingResult result, ModelMap model){
		userService.ajouterUser(v);
		return "redirect:/viewUsers";
	}
	@RequestMapping(value = "/saveUser", method = RequestMethod.GET)
	public String newUser(ModelMap model){
		User user = new User();
		
		model.addAttribute("listAdmin", adminService.consulterAdmins());
		model.addAttribute("formUser", user);
		model.addAttribute("edit", false);
		return "formUser";
	}
	
	@RequestMapping(value = "/modifyUser-{idUser}", method = RequestMethod.GET)
	public String editUser(@PathVariable int idUser, ModelMap model){
		User user = userService.consulterUser(idUser);
		
		model.addAttribute("listAdmin", adminService.consulterAdmins());
		model.addAttribute("formUser", user);
		model.addAttribute("edit", true);
		return "formUser";
	}
	
	@RequestMapping(value = "/modifyUser-{idUser}", method = RequestMethod.POST)
	public String modifierUser(@Valid User v, BindingResult result, ModelMap model, @PathVariable int idUser){
		userService.modifierUser(v);
		return "redirect:/viewUsers";
	}
	
	@RequestMapping(value = "/deleteUser-{idUser}")
	public String supprimerUser(@PathVariable int idUser){
		
		userService.supprimerUser(idUser);
		return "redirect:/viewUsers";
	}
	
	@RequestMapping("/viewUser")
	public User consulterUser(int idUser)
	{
		return userService.consulterUser(idUser);
	}
	

	@RequestMapping(value="/viewUsers")
	public String consulterUsers(Map<String, Object> map)
	{
		map.put("listAdmin", adminService.consulterAdmins());
		map.put("listUser", userService.consulterUsers());
		return "user";
	}
	
}
