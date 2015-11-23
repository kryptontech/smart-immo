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

import net.krypton.smartimmo.entities.Region;
import net.krypton.smartimmo.service.RegionService;

@Controller
public class RegionController {

	@Autowired
	RegionService regionService;
	
	@RequestMapping(value="/saveRegion", method = RequestMethod.POST)
	public String enregistrerRegion(@Valid Region a, BindingResult result, ModelMap model){
		regionService.ajouterRegion(a);
		return "redirect:/viewRegions";
	}
	@RequestMapping(value="/saveRegion", method = RequestMethod.GET)
	public String newRegion(ModelMap model){
		
		Region region = new Region();
		model.addAttribute("formRegion", region);
		model.addAttribute("edit", false);
		return "formRegion";
	}
	
	
	
	
	@RequestMapping(value="/modifyRegion-{idRegion}", method = RequestMethod.GET)
	public String editRegion(@PathVariable int idRegion, ModelMap model){
		
		Region region = regionService.consulterRegion(idRegion);
		model.addAttribute("formRegion", region);
		model.addAttribute("edit", true);
		return "formRegion";
	}
	@RequestMapping(value="/modifyRegion-{idRegion}", method = RequestMethod.POST)
	public String modifierRegion(@Valid Region a, BindingResult result, ModelMap model, @PathVariable int idRegion){
		regionService.modifierRegion(a);
		return "redirect:/viewRegions";
	}
	
	
	
	@RequestMapping(value="/deleteRegion-{idRegion}")
	public String supprimerRegion(@PathVariable int idRegion){
		regionService.supprimerRegion(idRegion);
		return "redirect:/viewRegions";
	}
	
	
	@RequestMapping("/viewRegion")
	public Region consulterRegion(int idRegion)
	{
		return regionService.consulterRegion(idRegion);
	}
	
	
	@RequestMapping("/viewRegions")
	public String consulterRegions(Map<String, Object> map)
	{
		
		map.put("listRegion", regionService.consulterRegions());
		return "region";
	}
	
}
