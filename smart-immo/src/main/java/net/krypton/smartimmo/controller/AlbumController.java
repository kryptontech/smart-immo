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

import net.krypton.smartimmo.entities.Album;
import net.krypton.smartimmo.model.AlbumModel;
import net.krypton.smartimmo.service.AlbumService;
import net.krypton.smartimmo.service.BienService;



@Controller

public class AlbumController {
	
	@Autowired
	AlbumService albumService;
	@Autowired
	BienService bienService;

	@RequestMapping(value="/saveAlbum", method = RequestMethod.POST)
	public String enregistrerAlbum(@Valid Album a, BindingResult result, ModelMap model){
		albumService.ajouterAlbum(a);
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
	
}
