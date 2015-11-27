package net.krypton.smartimmo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import net.krypton.smartimmo.entities.Fournisseur;
import net.krypton.smartimmo.model.Test;
import net.krypton.smartimmo.service.FournisseurService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FournisseurController {

	@Autowired
	FournisseurService fournisseurService;
	
	Test Test = new Test();
	
	@RequestMapping(value="/saveFournisseur", method = RequestMethod.POST)
	public String enregistrerFournisseur(@Valid Fournisseur v, BindingResult result, ModelMap model){
		v.setMdpFournisseur(Test.md5(v.getMdpFournisseur()));
		fournisseurService.ajouterFournisseur(v);
		return "redirect:/viewFournisseurs";
	}
	@RequestMapping(value = "/saveFournisseur", method = RequestMethod.GET)
	public String newFournisseur(ModelMap model){
		Fournisseur fournisseur = new Fournisseur();
		model.addAttribute("formFournisseur", fournisseur);
		model.addAttribute("edit", false);
		return "formFournisseur";
	}
	
	@RequestMapping(value = "/modifyFournisseur-{idFournisseur}", method = RequestMethod.GET)
	public String editFournisseur(@PathVariable int idFournisseur, ModelMap model){
		
		Fournisseur fournisseur = fournisseurService.consulterFournisseur(idFournisseur);
		model.addAttribute("formFournisseur", fournisseur);
		model.addAttribute("edit", true);
		return "formFournisseur";
	}
	@RequestMapping(value = "/modifyFournisseur-{idFournisseur}", method = RequestMethod.POST)
	public String modifierFournisseur(@Valid Fournisseur v, BindingResult result, ModelMap model, @PathVariable int idFournisseur){
		v.setMdpFournisseur(Test.md5(v.getMdpFournisseur()));
		fournisseurService.modifierFournisseur(v);
		return "redirect:/viewFournisseurs";
	}
	
	@RequestMapping(value = "/deleteFournisseur-{idFournisseur}")
	public String supprimerFournisseur(@PathVariable int idFournisseur){
		
		fournisseurService.supprimerFournisseur(idFournisseur);
		return "redirect:/viewFournisseurs";
	}
	
	
	
	@RequestMapping("/viewFournisseur")
	public Fournisseur consulterFournisseur(int idFournisseur)
	{
		return fournisseurService.consulterFournisseur(idFournisseur);
	}
	
	@RequestMapping(value="/viewFournisseurs")
	public String consulterFournisseurs(Map<String, Object> map)
	{
		map.put("listFournisseur", fournisseurService.consulterFournisseurs());
		return "fournisseur";
	}
	
	public Fournisseur findFournisseurByNom(String nom)
	{
		List<Fournisseur> Fournisseurs = fournisseurService.consulterFournisseurs();
		Fournisseur Fournisseur = new Fournisseur();
		for (int i = 0; i < Fournisseurs.size(); i++)
		{
			Fournisseur F = new Fournisseur();
			F = Fournisseurs.get(i);
			
			if (F.getNomFournisseur().equals(nom))
			{
				Fournisseur = F;
			}
		}
		return Fournisseur;
	}
}
