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

import net.krypton.smartimmo.entities.Categorie;
import net.krypton.smartimmo.service.CategorieService;


@Controller
public class CategorieController {

	@Autowired
	CategorieService categorieService;
	
	@RequestMapping(value="/saveCategorie", method = RequestMethod.POST)
	public String enregistrerCategorie(@Valid Categorie a, BindingResult result, ModelMap model){
		categorieService.ajouterCategorie(a);
		return "redirect:/viewCategories";
	}
	@RequestMapping(value="/saveCategorie", method = RequestMethod.GET)
	public String newCategorie(ModelMap model){
		
		Categorie categorie = new Categorie();
		model.addAttribute("formCategorie", categorie);
		model.addAttribute("edit", false);
		return "formCategorie";
	}
	
	
	
	
	@RequestMapping(value="/modifyCategorie-{idCategorie}", method = RequestMethod.GET)
	public String editCategorie(@PathVariable int idCategorie, ModelMap model){
		
		Categorie categorie = categorieService.consulterCategorie(idCategorie);
		model.addAttribute("formCategorie", categorie);
		model.addAttribute("edit", true);
		return "formCategorie";
	}
	@RequestMapping(value="/modifyCategorie-{idCategorie}", method = RequestMethod.POST)
	public String modifierCategorie(@Valid Categorie a, BindingResult result, ModelMap model, @PathVariable int idCategorie){
		categorieService.modifierCategorie(a);
		return "redirect:/viewCategories";
	}
	
	
	
	@RequestMapping(value="/deleteCategorie-{idCategorie}")
	public String supprimerCategorie(@PathVariable int idCategorie){
		categorieService.supprimerCategorie(idCategorie);
		return "redirect:/viewCategories";
	}
	
	@RequestMapping("/viewCategorie")
	public Categorie consulterCategorie(int idCategorie)
	{
		return categorieService.consulterCategorie(idCategorie);
	}
	
	@RequestMapping("/viewCategories")
	public String consulterCategories(Map<String, Object> map)
	{
		
		map.put("listCategorie", categorieService.consulterCategories());
		return "categorie";
	}
	
	public Categorie findCategorieByName(String categorie)
	{
		List<Categorie> cats = categorieService.consulterCategories();
		Categorie cat = new Categorie();
		for (int i=0; i < cats.size(); i++)
		{
			Categorie cate = new Categorie();
			cate = cats.get(i);
			
			if (cate.getLibelleCategorie().equals(categorie))
			{
				cat = cate;
			}
		}
		return cat;
	}
	
}
