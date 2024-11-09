/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fichas_medicas.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

/**
 *
 * @author Laura Pulido fecha: 08-11-2024 hora:21:12pm
 * Editado: Jose Luis Tapia fecha: 08-11-2024 hora:15:12pm
 */
@Data
@NoArgsConstructor
@ToString
@RequiredArgsConstructor
@AllArgsConstructor
public class Usuario {

    private int id_usuario;
    @NonNull
    private String usuario;
    @NonNull
    private String password;
    @NonNull
    private String nombre;
    @NonNull
    private String apellido;
    @NonNull
    private String correo;
    @NonNull
    private int id_rol;
    @NonNull
    private String estado;

}
