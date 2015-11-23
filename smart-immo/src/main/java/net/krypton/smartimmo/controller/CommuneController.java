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

import net.krypton.smartimmo.entities.Commune;
import net.krypton.smartimmo.service.CommuneService;
import net.krypton.smartimmo.service.VilleService;

@Controller
public class CommuneController {

	@Autowired
	CommuneService communeService;
	
	@Autowired
	VilleService villeService;
	
	@RequestMapping(value="/saveCommune", method = RequestMethod.POST)
	public String enregistrerCommune(@Valid Commune v, BindingResult result, ModelMap model){
		communeService.ajouterCommune(v);
		return "redirect:/viewCommunes";
	}
	@RequestMapping(value = "/saveCommune", method = RequestMethod.GET)
	public String newCommune(ModelMap model){
		Commune commune = new Commune();
		
		model.put("listVille", villeService.consulterVilles());
		model.addAttribute("formCommune", commune);
		model.addAttribute("edit", false);
		return "formCommune";
	}
	
	@RequestMapping(value = "/modifyCommune-{idCommune}", method = RequestMethod.GET)
	public String editCommune(@PathVariable int idCommune, ModelMap model){
		Commune commune = communeService.consulterCommune(idCommune);
		
		model.put("listVille", villeService.consulterVilles());
		model.addAttribute("formCommune", commune);
		model.addAttribute("edit", true);
		return "formCommune";
	}
	@RequestMapping(value = "/modifyCommune-{idCommune}", method = RequestMethod.POST)
	public String modifierCommune(@Valid Commune v, BindingResult result, ModelMap model, @PathVariable int idCommune){
		communeService.modifierCommune(v);
		return "redirect:/viewCommunes";
	}
	
	@RequestMapping(value = "/deleteCommune-{idCommune}")
	public String supprimerCommune(@PathVariable int idCommune){
		
		communeService.supprimerCommune(idCommune);
		return "redirect:/viewCommunes";
	}
	
	
	
	@RequestMapping("/viewCommune")
	public Commune consulterCommune(int idCommune)
	{
		return communeService.consulterCommune(idCommune);
	}
	
	@RequestMapping(value="/viewCommunes")
	public String consulterCommunes(Map<String, Object> map)
	{
		map.put("listVille", villeService.consulterVilles());
		map.put("listCommune", communeService.consulterCommunes());
		return "commune";
	}
	
}
