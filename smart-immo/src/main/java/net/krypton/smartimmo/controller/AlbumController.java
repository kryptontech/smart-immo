package net.krypton.smartimmo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import net.krypton.smartimmo.entities.Album;
import net.krypton.smartimmo.entities.Bien;
import net.krypton.smartimmo.model.AlbumModel;
import net.krypton.smartimmo.service.AlbumService;
import net.krypton.smartimmo.service.BienService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller

public class AlbumController {
	
	@Autowired
	AlbumService albumService;
	@Autowired
	BienService bienService;

	@RequestMapping(value="/saveAlbum", method = RequestMethod.POST)
	public String enregistrerAlbum(@Valid @ModelAttribute("a") AlbumModel a, BindingResult result, ModelMap model){
		Album album = new Album();
		album.setPathAlbum(a.getPathAlbum());
		
		Bien b = new Bien();
		b = findBienByTitre(a.getBien());
		
		album.setBien(b);
		albumService.modifierAlbum(album);
		return "redirect:/viewAlbums";
	}
	@RequestMapping(value = "/saveAlbum", method = RequestMethod.GET)
	public String newAlbum(ModelMap model){
		AlbumModel album = new AlbumModel();;
		
		model.addAttribute("listBien", bienService.consulterBiens());
		model.addAttribute("formAlbum", album);
		model.addAttribute("edit", false);
		return "formAlbum";
	}
	
	////PAR HERMANNh;
	@RequestMapping(value = "/saveAlbum-{idBien}", method = RequestMethod.GET)
	public ModelAndView newAlbum(@PathVariable int idBien, ModelMap model) {
		AlbumModel album = new AlbumModel();
		
		ModelAndView mav = new ModelAndView("formAlbum");

		mav.addObject("msg", idBien);
		mav.addObject("formAlbum", album);
		mav.addObject("edit", false);

		return mav;
		// return "formAlbum";
	}
	
	@RequestMapping(value = "/modifyAlbum-{idAlbum}", method = RequestMethod.GET)
	public String editAlbum(@PathVariable int idAlbum, ModelMap model){
		Album album = albumService.consulterAlbum(idAlbum);
		
		model.addAttribute("listBien", bienService.consulterBiens());
		model.addAttribute("formAlbum", album);
		model.addAttribute("edit", true);
		return "formAlbum";
	}
	@RequestMapping(value = "/modifyAlbum-{idAlbum}", method = RequestMethod.POST)
	public String modifierAlbum(@Valid Album a, BindingResult result, ModelMap model, @PathVariable int idAlbum){
		albumService.modifierAlbum(a);
		return "redirect:/viewAlbums";
	}
	
	@RequestMapping(value = "/deleteAlbum-{idAlbum}")
	public String supprimerAlbum(@PathVariable int idAlbum){
		
		albumService.supprimerAlbum(idAlbum);
		return "redirect:/viewAlbums";
	}
	
	
	
	@RequestMapping("/viewAlbum")
	public Album consulterAlbum(int idAlbum)
	{
		return albumService.consulterAlbum(idAlbum);
	}
	
	@RequestMapping(value="/viewAlbums")
	public String consulterAlbums(Map<String, Object> map)
	{
		map.put("listBien", bienService.consulterBiens());
		map.put("listAlbum", albumService.consulterAlbums());
		return "album";
	}
	
	public Bien findBienByTitre(String titre)
	{
		List<Bien> biens = bienService.consulterBiens();
		Bien bien = new Bien();
		for (int i = 0; i < biens.size(); i++)
		{
			Bien b = new Bien();
			b = biens.get(i);
			 if (b.getTitreBien().equals(titre))
			 {
				 bien = b;
			 }
		}
		return bien;
	}
}
