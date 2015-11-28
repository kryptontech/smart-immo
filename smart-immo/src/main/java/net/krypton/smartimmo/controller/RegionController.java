package net.krypton.smartimmo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import net.krypton.smartimmo.entities.Region;
import net.krypton.smartimmo.service.RegionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegionController {

	@Autowired
	RegionService regionService;

	@RequestMapping(value = "/saveRegion", method = RequestMethod.POST)
	public String enregistrerRegion(@Valid Region a, BindingResult result,
			ModelMap model) {
		regionService.ajouterRegion(a);
		return "redirect:/viewRegions";
	}

	@RequestMapping(value = "/saveRegion", method = RequestMethod.GET)
	public String newRegion(ModelMap model) {

		Region region = new Region();
		model.addAttribute("formRegion", region);
		model.addAttribute("edit", false);
		return "formRegion";
	}

	@RequestMapping(value = "/modifyRegion-{idRegion}", method = RequestMethod.GET)
	public String editRegion(@PathVariable int idRegion, ModelMap model) {

		Region region = regionService.consulterRegion(idRegion);
		model.addAttribute("formRegion", region);
		model.addAttribute("edit", true);
		return "formRegion";
	}

	@RequestMapping(value = "/modifyRegion-{idRegion}", method = RequestMethod.POST)
	public String modifierRegion(@Valid Region a, BindingResult result,
			ModelMap model, @PathVariable int idRegion) {
		regionService.modifierRegion(a);
		return "redirect:/viewRegions";
	}

	@RequestMapping(value = "/deleteRegion-{idRegion}")
	public String supprimerRegion(@PathVariable int idRegion) {

		try {
			regionService.supprimerRegion(idRegion);
			return "redirect:/viewRegions";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/viewRegions";
		}
	}

	@RequestMapping("/viewRegion")
	public Region consulterRegion(int idRegion) {
		return regionService.consulterRegion(idRegion);
	}

	@RequestMapping("/viewRegions")
	public String consulterRegions(Map<String, Object> map) {

		map.put("listRegion", regionService.consulterRegions());
		return "region";
	}

	// //
	// //
	// /
	// /
	// /
	//
	public Region RegionfindbyName(String name) {
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
