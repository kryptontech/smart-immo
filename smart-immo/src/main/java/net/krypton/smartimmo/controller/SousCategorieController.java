package net.krypton.smartimmo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.krypton.smartimmo.entities.Categorie;
import net.krypton.smartimmo.entities.SousCategorie;
import net.krypton.smartimmo.model.SousCategorieModel;
import net.krypton.smartimmo.service.CategorieService;
import net.krypton.smartimmo.service.SousCategorieService;

@Controller
public class SousCategorieController {

	@Autowired
	SousCategorieService sousCategorieService;
	@Autowired
	CategorieService categorieService;

	@RequestMapping(value = "/saveSousCategorie", method = RequestMethod.POST)
	public String enregistrerSousCategorie(
			@Valid @ModelAttribute("v") SousCategorieModel v,
			BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "redirect:/viewSousCategories";
		}
		try {
			SousCategorie sc = new SousCategorie();

			sc.setLibelleSousCat(v.getLibelleSousCat());
			Categorie c = new Categorie();

			c = findCategorieByName(v.getCategorie());
			sc.setCategorie(c);
			sousCategorieService.modifierSousCategorie(sc);
		} catch (Exception e) {

			v.setException(e.getMessage());
		}

		return "redirect:/viewSousCategories";
	}

	@RequestMapping(value = "/saveSousCategorie", method = RequestMethod.GET)
	public String newSousCategorie(ModelMap model) {
		SousCategorie sousCategorie = new SousCategorie();

		model.addAttribute("listCategorie",
				categorieService.consulterCategories());
		model.addAttribute("formSousCategorie", sousCategorie);
		model.addAttribute("edit", false);
		return "formSousCategorie";
	}

	@RequestMapping(value = "/modifySousCategorie-{idSousCategorie}", method = RequestMethod.GET)
	public String editSousCategorie(@PathVariable int idSousCategorie,
			ModelMap model) {
		SousCategorie sousCategorie = sousCategorieService
				.consulterSousCategorie(idSousCategorie);

		model.addAttribute("listCategorie",
				categorieService.consulterCategories());
		model.addAttribute("formSousCategorie", sousCategorie);
		model.addAttribute("edit", true);
		return "formSousCategorie";
	}

	@RequestMapping(value = "/modifySousCategorie-{idSousCategorie}", method = RequestMethod.POST)
	public String modifierSousCategorie(@Valid SousCategorie v,
			BindingResult result, ModelMap model,
			@PathVariable int idSousCategorie) {
		sousCategorieService.modifierSousCategorie(v);
		return "redirect:/viewSousCategories";
	}

	@RequestMapping(value = "/deleteSousCategorie-{idSousCategorie}")
	public String supprimerSousCategorie(@PathVariable int idSousCategorie) {

		try {

			sousCategorieService.supprimerSousCategorie(idSousCategorie);
			return "redirect:/viewSousCategories";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/viewSousCategories";
		}
	}

	@RequestMapping("/viewSousCategorie")
	public SousCategorie consulterSousCategorie(int idSousCategorie) {
		return sousCategorieService.consulterSousCategorie(idSousCategorie);
	}

	@RequestMapping(value = "/viewSousCategories")
	public String consulterSousCategories(Map<String, Object> map) {
		map.put("listCategorie", categorieService.consulterCategories());
		map.put("listSousCategorie",
				sousCategorieService.consulterSousCategories());
		return "souscategorie";
	}

	public Categorie findCategorieByName(String categorie) {
		List<Categorie> cats = categorieService.consulterCategories();
		Categorie cat = new Categorie();
		for (int i = 0; i < cats.size(); i++) {
			Categorie cate = new Categorie();
			cate = cats.get(i);

			if (cate.getLibelleCategorie().equals(categorie)) {
				cat = cate;
			}
		}
		return cat;
	}

	public SousCategorie findSousCategorieByLibelle(String scat) {
		List<SousCategorie> SousCategories = sousCategorieService
				.consulterSousCategories();
		SousCategorie SousCategorie = new SousCategorie();
		for (int i = 0; i < SousCategories.size(); i++) {
			SousCategorie S = new SousCategorie();
			S = SousCategories.get(i);

			if (S.getLibelleSousCat().equals(scat)) {
				SousCategorie = S;
			}
		}
		return SousCategorie;
	}
}
