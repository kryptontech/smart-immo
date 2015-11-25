package net.krypton.smartimmo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import net.krypton.smartimmo.entities.Region;
import net.krypton.smartimmo.entities.Ville;
import net.krypton.smartimmo.model.VilleModel;
import net.krypton.smartimmo.service.RegionService;
import net.krypton.smartimmo.service.VilleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VilleController {

	@Autowired
	VilleService villeService;
	@Autowired
	RegionService regionService;

	@RequestMapping(value="/saveVille", method = RequestMethod.POST)
	public String enregistrerVille(@Valid @ModelAttribute("v") VilleModel v, BindingResult result, ModelMap model){
		
		Ville d = new Ville(); 
		
		d.setLibelleVille(v.getLibelleVille());
		Region r = new Region();
		
		r = RegionfindbyName(v.getRegion());
		d.setRegion(r);
		villeService.ajouterVille(d);
		return "redirect:/viewVilles";
	}
	
	
	
	@RequestMapping(value = "/saveVille", method = RequestMethod.GET)
	public String newVille(ModelMap model){
		VilleModel v = new VilleModel();
		
		model.put("listRegion", regionService.consulterRegions());
		model.addAttribute("v", v);
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
	
	public   Region RegionfindbyName(String name) {
		List<Region> regs = regionService.consulterRegions();
		Region Region = new Region();
		for (int i = 0; i < regs.size(); i++) {

			Region R = new Region();
			R = regs.get(i);
			
			if (R.getLibelleRegion().equals(name)) {
				Region = R;
			}

		}
		return Region;
	}
	
	
	
}

