/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entity.NailDesign;

/**
 *
 * @author Sekomane
 */
@Stateless
public class NailDesignFacade extends AbstractFacade<NailDesign> implements NailDesignFacadeLocal {

    @PersistenceContext(unitName = "BeautyHairSalonEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public NailDesignFacade() {
        super(NailDesign.class);
    }

@Override
public NailDesign findByCellNumber(String cellNumber) {
    try {
        return em.createQuery("SELECT n FROM NailDesign n WHERE n.cellNum = :cell", NailDesign.class)
                 .setParameter("cell", cellNumber)
                 .getSingleResult();
    } catch (Exception e) {
        return null; // Handle no results or multiple results
    }
}    
}

