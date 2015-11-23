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

import net.krypton.smartimmo.entities.Agence;
import net.krypton.smartimmo.service.AgenceService;




@Controller

public class AgenceController {

	@Autowired
	AgenceService agenceService;

	@RequestMapping(value="/saveAgence", method = RequestMethod.POST)
	public String enregistrerAgence(@Valid Agence v, BindingResult result, ModelMap model){
		agenceService.ajouterAgence(v);
		return "redirect:/viewAgences";
	}
	@RequestMapping(value = "/saveAgence", method = RequestMethod.GET)
	public String newAgence(ModelMap model){
		Agence agence = new Agence();
		model.addAttribute("formAgence", agence);
		model.addAttribute("edit", false);
		return "formAgence";
	}
	
	@RequestMapping(value = "/modifyAgence-{idFournisseur}", method = RequestMethod.GET)
	public String editAgence(@PathVariable int idFournisseur, ModelMap model){
		Agence agence = agenceService.consulterAgence(idFournisseur);
		model.addAttribute("formAgence", agence);
		model.addAttribute("edit", true);
		return "formAgence";
	}
	@RequestMapping(value = "/modifyAgence-{idFournisseur}", method = RequestMethod.POST)
	public String modifierAgence(@Valid Agence v, BindingResult result, ModelMap model, @PathVariable int idFournisseur){
		agenceService.modifierAgence(v);
		return "redirect:/viewAgences";
	}
	
	@RequestMapping(value = "/deleteAgence-{idFournisseur}")
	public String supprimerAgence(@PathVariable int idFournisseur){
		
		agenceService.supprimerAgence(idFournisseur);
		return "redirect:/viewAgences";
	}
	
	
	
	
	@RequestMapping("/viewAgence")
	public Agence consulterAgence(int idFournisseur)
	{
		return agenceService.consulterAgence(idFournisseur);
	}
	
	@RequestMapping(value="/viewAgences")
	public String consulterAgences(Map<String, Object> map)
	{
		map.put("listAgence", agenceService.consulterAgences());
		return "agence";
	}
	
}
