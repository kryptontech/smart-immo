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

import net.krypton.smartimmo.entities.Disponibilite;
import net.krypton.smartimmo.service.DisponibiliteService;

@Controller
public class DisponibiliteController {

	@Autowired
	DisponibiliteService disponibiliteService;
	
	@RequestMapping(value="/saveDisponibilite", method = RequestMethod.POST)
	public String enregistrerDisponibilite(@Valid Disponibilite a, BindingResult result, ModelMap model){
		disponibiliteService.ajouterDisponibilite(a);
		return "redirect:/viewDisponibilites";
	}
	@RequestMapping(value="/saveDisponibilite", method = RequestMethod.GET)
	public String newDisponibilite(ModelMap model){
		
		Disponibilite disponibilite = new Disponibilite();
		model.addAttribute("formDisponibilite", disponibilite);
		model.addAttribute("edit", false);
		return "formDisponibilite";
	}
	
	
	
	
	@RequestMapping(value="/modifyDisponibilite-{idDisponibilite}", method = RequestMethod.GET)
	public String editDisponibilite(@PathVariable int idDisponibilite, ModelMap model){
		
		Disponibilite disponibilite = disponibiliteService.consulterDisponibilite(idDisponibilite);
		model.addAttribute("formDisponibilite", disponibilite);
		model.addAttribute("edit", true);
		return "formDisponibilite";
	}
	@RequestMapping(value="/modifyDisponibilite-{idDisponibilite}", method = RequestMethod.POST)
	public String modifierDisponibilite(@Valid Disponibilite a, BindingResult result, ModelMap model, @PathVariable int idDisponibilite){
		disponibiliteService.modifierDisponibilite(a);
		return "redirect:/viewDisponibilites";
	}
	
	
	
	@RequestMapping(value="/deleteDisponibilite-{idDisponibilite}")
	public String supprimerDisponibilite(@PathVariable int idDisponibilite){
		disponibiliteService.supprimerDisponibilite(idDisponibilite);
		return "redirect:/viewDisponibilites";
	}
	
	
	
	@RequestMapping("/viewDisponibilite")
	public Disponibilite consulterDisponibilite(int idDisponibilite)
	{
		return disponibiliteService.consulterDisponibilite(idDisponibilite);
	}
	
	@RequestMapping("/viewDisponibilites")
	public String consulterDisponibilites(Map<String, Object> map)
	{
		
		map.put("listDisponibilite", disponibiliteService.consulterDisponibilites());
		return "disponibilite";
	}
	
	public Disponibilite findDisponibiliteByLibelle(String libDispo)
	{
		List<Disponibilite> disponibilites = disponibiliteService.consulterDisponibilites();
		Disponibilite Disponibilite = new Disponibilite();
		for (int i = 0; i < disponibilites.size(); i++)
		{
			Disponibilite D = new Disponibilite();
			D = disponibilites.get(i);
			
			if (D.getLibelleDisponibilite().equals(libDispo))
			{
				Disponibilite = D;
			}
		}
		return Disponibilite;
	}
}
