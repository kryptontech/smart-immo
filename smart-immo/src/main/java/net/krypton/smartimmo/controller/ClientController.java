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

import net.krypton.smartimmo.entities.Client;
import net.krypton.smartimmo.service.ClientService;

@Controller
public class ClientController {

	
	@Autowired
	ClientService clientService;
	
	@RequestMapping(value="/saveClient", method = RequestMethod.POST)
	public String enregistrerClient(@Valid Client v, BindingResult result, ModelMap model){
		clientService.ajouterClient(v);
		return "redirect:/viewClients";
	}
	@RequestMapping(value = "/saveClient", method = RequestMethod.GET)
	public String newClient(ModelMap model){
		Client client = new Client();
		model.addAttribute("formClient", client);
		model.addAttribute("edit", false);
		return "formClient";
	}
	
	@RequestMapping(value = "/modifyClient-{idClient}", method = RequestMethod.GET)
	public String editClient(@PathVariable int idClient, ModelMap model){
		Client client = clientService.consulterClient(idClient);
		model.addAttribute("formClient", client);
		model.addAttribute("edit", true);
		return "formClient";
	}
	@RequestMapping(value = "/modifyClient-{idClient}", method = RequestMethod.POST)
	public String modifierClient(@Valid Client v, BindingResult result, ModelMap model, @PathVariable int idClient){
		clientService.modifierClient(v);
		return "redirect:/viewClients";
	}
	
	@RequestMapping(value = "/deleteClient-{idClient}")
	public String supprimerClient(@PathVariable int idClient){
		
		clientService.supprimerClient(idClient);
		return "redirect:/viewClients";
	}
	
	
	
	@RequestMapping("/viewClient")
	public Client consulterClient(int idClient)
	{
		return clientService.consulterClient(idClient);
	}
	
	@RequestMapping(value="/viewClients")
	public String consulterClients(Map<String, Object> map)
	{
		map.put("listClient", clientService.consulterClients());
		return "client";
	}
	
}
