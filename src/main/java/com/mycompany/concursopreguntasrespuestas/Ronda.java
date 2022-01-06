/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.concursopreguntasrespuestas;

import java.util.List;

/**
 *
 * @author wfran
 */
public class Ronda {
    
    
    public int getNumRonda() {
        return numRonda;
    }

    public void setNumRonda(int numRonda) {
        this.numRonda = numRonda;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public List <OpcionesRespuesta> getRespuestas() {
        return respuestas;
    }

    public void setRespuesta(List <OpcionesRespuesta> respuestas) {
        this.respuestas = respuestas;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

    public Ronda(int numRonda, String pregunta, List <OpcionesRespuesta> respuestas, int puntos) {
        this.numRonda = numRonda;
        this.pregunta = pregunta;
        this.respuestas = respuestas;
        this.puntos = puntos;
    }
    
    private int numRonda;
    private String pregunta;
    private List <OpcionesRespuesta> respuestas;
    private int puntos;
    
}
