/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.fichas_medicas.impl;

import com.fichas_medicas.domain.Area;
import java.util.List;

/**
 *
 * @author Jose Luis Tapia Fecha: 08/11/2024 hora: 22:20pm
 */
public interface AreaDAO {
    void save(Area obj);

    void update(Area obj);

    void delete(Integer idArea);

    Area getOne(Integer idArea);
    
    Integer getId(String name);

    List<Area> getAll();
}
