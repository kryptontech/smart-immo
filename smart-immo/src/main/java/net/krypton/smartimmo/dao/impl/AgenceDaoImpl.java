package net.krypton.smartimmo.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import net.krypton.smartimmo.dao.AgenceDao;
import net.krypton.smartimmo.entities.Agence;


public class AgenceDaoImpl implements AgenceDao{
	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Agence ajouterAgence (Agence a)
	{
		em.persist(a);
		return a;
	}
	
	@Override
	public Agence modifierAgence(Agence m)
	{
		em.merge(m);
		return m;
	}
	
	@Override
	public void supprimerAgence (int idFournisseur)
	{
		Agence Agence = em.find(Agence.class, idFournisseur);
		em.remove(Agence);
		
	}
	
	@Override
	public Agence consulterAgence(int idFournisseur)
	{
		Query req = em.createQuery("From Agence a where a.idFournisseur= ?1");
		req.setParameter(1, idFournisseur);
		Agence Agences = (Agence) req.getSingleResult();
		return Agences;
	}
	
	@Override
	public List<Agence> consulterAgences()
	{
		Query req = em.createQuery("select a From Agence a");
		List<Agence> listAgences = req.getResultList();
		return listAgences;
	}
}

