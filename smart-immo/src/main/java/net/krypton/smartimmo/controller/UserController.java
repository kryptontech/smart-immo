package net.krypton.smartimmo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.krypton.smartimmo.entities.Admin;
import net.krypton.smartimmo.entities.Categorie;
import net.krypton.smartimmo.entities.SousCategorie;
import net.krypton.smartimmo.entities.User;
import net.krypton.smartimmo.model.UserModel;
import net.krypton.smartimmo.service.AdminService;
import net.krypton.smartimmo.service.UserService;


@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	AdminService adminService;

	
	@RequestMapping(value="/saveUser", method = RequestMethod.POST)
	public String enregistrerUser(@Valid @ModelAttribute UserModel v, BindingResult result, ModelMap model){
		if (result.hasErrors())
		{
			return "redirect:/viewUsers";
		}
		
		try{
			User use = new User();
			use.setMailUser(v.getMailUser());
			use.setMdpUser(v.getMdpUser());
			use.setNomUser(v.getNomUser());
			use.setPrenomUser(v.getPrenomUser());
			use.setPseudoUser(v.getPseudoUser());
			use.setStatuUser(v.isStatuUser());
			
			Admin a = new Admin();
			a = findAdminByRole(v.getAdmin());
			use.setAdmin(a);
			userService.modifierUser(use);
		}catch (Exception e){
			
			v.setException(e.getMessage());
		}
		
		
		
		
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
	
	public Admin findAdminByRole(String role)
	{
		List<Admin> admins = adminService.consulterAdmins();
		Admin admin = new Admin();
		for (int i = 0; i < admins.size(); i++)
		{
			Admin a = new Admin();
			a = admins.get(i);
			
			if (a.getTypeUser().equals(role))
			{
				admin = a;	
			}
		}
		return admin;
	}	
}
