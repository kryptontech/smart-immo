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

import net.krypton.smartimmo.entities.Bien;
import net.krypton.smartimmo.service.BienService;
import net.krypton.smartimmo.service.CommuneService;
import net.krypton.smartimmo.service.DisponibiliteService;
import net.krypton.smartimmo.service.FournisseurService;
import net.krypton.smartimmo.service.SousCategorieService;
import net.krypton.smartimmo.service.TypeOffreService;


@Controller

public class BienController {

	@Autowired
	BienService bienService;
	
	@Autowired
	FournisseurService fournisseurService;
	
	@Autowired
	TypeOffreService typeOffreService;
	
	@Autowired
	CommuneService communeService;
	
	@Autowired
	SousCategorieService sousCategorieService;
	
	@Autowired
	DisponibiliteService disponibiliteService;
	
	@RequestMapping(value="/saveBien", method = RequestMethod.POST)
	public String enregistrerBien(@Valid Bien v, BindingResult result, ModelMap model){
		bienService.ajouterBien(v);
		return "redirect:/viewBiens";
	}
	@RequestMapping(value = "/saveBien", method = RequestMethod.GET)
	public String newBien(ModelMap model){
		Bien bien = new Bien();
		
		model.addAttribute("listFournisseur", fournisseurService.consulterFournisseurs());
		model.addAttribute("listTypeOffre", typeOffreService.consulterTypeOffres());
		model.addAttribute("listCommune", communeService.consulterCommunes());
		model.addAttribute("listSousCategorie", sousCategorieService.consulterSousCategories());
		model.addAttribute("listDisponibilite", disponibiliteService.consulterDisponibilites());
		model.addAttribute("formBien", bien);
		model.addAttribute("edit", false);
		return "formBien";
	}
	
	@RequestMapping(value = "/modifyBien-{idBien}", method = RequestMethod.GET)
	public String editBien(@PathVariable int idBien, ModelMap model){
		Bien bien = bienService.consulterBien(idBien);
		
		model.addAttribute("listFournisseur", fournisseurService.consulterFournisseurs());
		model.addAttribute("listTypeOffre", typeOffreService.consulterTypeOffres());
		model.addAttribute("listCommune", communeService.consulterCommunes());
		model.addAttribute("listSousCategorie", sousCategorieService.consulterSousCategories());
		model.addAttribute("listDisponibilite", disponibiliteService.consulterDisponibilites());
		model.addAttribute("formBien", bien);
		model.addAttribute("edit", true);
		return "formBien";
	}
	@RequestMapping(value = "/modifyBien-{idBien}", method = RequestMethod.POST)
	public String modifierBien(@Valid Bien v, BindingResult result, ModelMap model, @PathVariable int idBien){
		bienService.modifierBien(v);
		return "redirect:/viewBiens";
	}
	
	@RequestMapping(value = "/deleteBien-{idBien}")
	public String supprimerBien(@PathVariable int idBien){
		
		bienService.supprimerBien(idBien);
		return "redirect:/viewBiens";
	}
	
	
	@RequestMapping("/viewBien")
	public Bien consulterBien(int idBien)
	{
		return bienService.consulterBien(idBien);
	}


	@RequestMapping(value="/viewBiens")
	public String consulterBiens(Map<String, Object> map)
	{
		map.put("listFournisseur", fournisseurService.consulterFournisseurs());
		map.put("listTypeOffre", typeOffreService.consulterTypeOffres());
		map.put("listCommune", communeService.consulterCommunes());
		map.put("listSousCategorie", sousCategorieService.consulterSousCategories());
		map.put("listDisponibilite", disponibiliteService.consulterDisponibilites());
		map.put("listBien", bienService.consulterBiens());
		return "bien";
	}
}
