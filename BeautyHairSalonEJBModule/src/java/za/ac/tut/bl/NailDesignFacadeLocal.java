/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entity.NailDesign;

/**
 *
 * @author Sekomane
 */
@Local
public interface NailDesignFacadeLocal {

    void create(NailDesign nailDesign);

    void edit(NailDesign nailDesign);

    void remove(NailDesign nailDesign);

    NailDesign find(Object id);

    List<NailDesign> findAll();

    List<NailDesign> findRange(int[] range);

    int count();
public NailDesign findByCellNumber(String cellNumber);    
}

