/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fichas_medicas.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 *
 * @author user
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Area {
    private Integer id_area;
    private String nombre_area;
    private Integer id_usuario;
    private String estado;
}
