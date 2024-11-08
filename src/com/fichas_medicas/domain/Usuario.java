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
 * @author Laura Pulido 
 * fecha: 08-11-2024 hora:15:12pm
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class Usuario {
    private int id_usuario;
    private String usuario;
    private int password;
    private String nombre;
    private String apellido;
    private String correo;
    private int id_rol;
    private String estado;

    public Usuario(String usuario, int password, String nombre, String apellido, String correo, int id_rol, String estado) {
        this.usuario = usuario;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.id_rol = id_rol;
        this.estado = estado;
    }
    
}
