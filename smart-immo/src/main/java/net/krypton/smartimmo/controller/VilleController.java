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

import net.krypton.smartimmo.entities.Ville;
import net.krypton.smartimmo.service.RegionService;
import net.krypton.smartimmo.service.VilleService;

@Controller
public class VilleController {

	@Autowired
	VilleService villeService;
	@Autowired
	RegionService regionService;

	@RequestMapping(value="/saveVille", method = RequestMethod.POST)
	public String enregistrerVille(@Valid Ville v, BindingResult result, ModelMap model){
		villeService.ajouterVille(v);
		return "redirect:/viewVilles";
	}
	@RequestMapping(value = "/saveVille", method = RequestMethod.GET)
	public String newVille(ModelMap model){
		Ville ville = new Ville();
		
		model.put("listRegion", regionService.consulterRegions());
		model.addAttribute("formVille", ville);
		model.addAttribute("edit", false);
		return "formVille";
	}
	
	@RequestMapping(value = "/modifyVille-{idVille}", method = RequestMethod.GET)
	public String editVille(@PathVariable int idVille, ModelMap model){
		Ville ville = villeService.consulterVille(idVille);
		
		model.put("listRegion", regionService.consulterRegions());
		model.addAttribute("formVille", ville);
		model.addAttribute("edit", true);
		return "formVille";
	}
	@RequestMapping(value = "/modifyVille-{idVille}", method = RequestMethod.POST)
	public String modifierVille(@Valid Ville v, BindingResult result, ModelMap model, @PathVariable int idVille){
		villeService.modifierVille(v);
		return "redirect:/viewVilles";
	}
	
	@RequestMapping(value = "/deleteVille-{idVille}")
	public String supprimerVille(@PathVariable int idVille){
		
		villeService.supprimerVille(idVille);
		return "redirect:/viewVilles";
	}
	
	
	@RequestMapping("/viewVille")
	public Ville consulterVille(int idVille)
	{
		return villeService.consulterVille(idVille);
	}
	
	@RequestMapping(value="/viewVilles")
	public String consulterVilles(Map<String, Object> map)
	{
		map.put("listRegion", regionService.consulterRegions());
		map.put("listVille", villeService.consulterVilles());
		return "ville";
	}
	
	
}

