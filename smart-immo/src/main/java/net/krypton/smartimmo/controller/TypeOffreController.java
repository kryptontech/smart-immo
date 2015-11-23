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

import net.krypton.smartimmo.entities.TypeOffre;
import net.krypton.smartimmo.service.TypeOffreService;

@Controller
public class TypeOffreController {

	@Autowired
	TypeOffreService typeOffreService;
	
	@RequestMapping(value="/saveTypeOffre", method = RequestMethod.POST)
	public String enregistrerTypeOffre(@Valid TypeOffre a, BindingResult result, ModelMap model){
		typeOffreService.ajouterTypeOffre(a);
		return "redirect:/viewTypeOffres";
	}
	@RequestMapping(value="/saveTypeOffre", method = RequestMethod.GET)
	public String newTypeOffre(ModelMap model){
		
		TypeOffre typeOffre = new TypeOffre();
		model.addAttribute("formTypeOffre", typeOffre);
		model.addAttribute("edit", false);
		return "formTypeOffre";
	}
	
	
	
	
	@RequestMapping(value="/modifyTypeOffre-{idTypeOffre}", method = RequestMethod.GET)
	public String editTypeOffre(@PathVariable int idTypeOffre, ModelMap model){
		
		TypeOffre typeOffre = typeOffreService.consulterTypeOffre(idTypeOffre);
		model.addAttribute("formTypeOffre", typeOffre);
		model.addAttribute("edit", true);
		return "formTypeOffre";
	}
	@RequestMapping(value="/modifyTypeOffre-{idTypeOffre}", method = RequestMethod.POST)
	public String modifierTypeOffre(@Valid TypeOffre a, BindingResult result, ModelMap model, @PathVariable int idTypeOffre){
		typeOffreService.modifierTypeOffre(a);
		return "redirect:/viewTypeOffres";
	}
	
	
	
	@RequestMapping(value="/deleteTypeOffre-{idTypeOffre}")
	public String supprimerTypeOffre(@PathVariable int idTypeOffre){
		typeOffreService.supprimerTypeOffre(idTypeOffre);
		return "redirect:/viewTypeOffres";
	}
	
	
	
	@RequestMapping("/viewTypeOffre")
	public TypeOffre consulterTypeOffre(int idTypeOffre)
	{
		return typeOffreService.consulterTypeOffre(idTypeOffre);
	}
	
	@RequestMapping("/viewTypeOffres")
	public String consulterTypeOffres(Map<String, Object> map)
	{
		
		map.put("listTypeOffre", typeOffreService.consulterTypeOffres());
		return "typeoffre";
	}
	
}
