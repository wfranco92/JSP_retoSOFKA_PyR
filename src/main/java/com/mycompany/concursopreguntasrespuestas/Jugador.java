/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.concursopreguntasrespuestas;

/**
 *
 * @author wfran
 */
public class Jugador {
    private int idJugador;
    private String nombre;
    private String apellido;
    private int max_puntaje;
    private int ultimo_puntaje;

    public Jugador(int idJugador, String nombre, String apellido, int max_puntaje, int ultimo_puntaje) {
        this.idJugador = idJugador;
        this.nombre = nombre;
        this.apellido = apellido;
        this.max_puntaje = max_puntaje;
        this.ultimo_puntaje = ultimo_puntaje;
    }

    public int getIdJugador() {
        return idJugador;
    }

    public void setIdJugador(int idJugador) {
        this.idJugador = idJugador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getMax_puntaje() {
        return max_puntaje;
    }

    public void setMax_puntaje(int max_puntaje) {
        this.max_puntaje = max_puntaje;
    }

    public int getUltimo_puntaje() {
        return ultimo_puntaje;
    }

    public void setUltimo_puntaje(int ultimo_puntaje) {
        this.ultimo_puntaje = ultimo_puntaje;
    }
    
}
