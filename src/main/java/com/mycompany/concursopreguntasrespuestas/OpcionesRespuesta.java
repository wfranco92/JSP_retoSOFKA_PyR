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
public class OpcionesRespuesta {
    
    private int idopciones_respuesta;
    private String respuesta_enunciado;
    private int correcta;
    private int idpregunta;

    public int getIdopciones_respuesta() {
        return idopciones_respuesta;
    }

    public void setIdopciones_respuesta(int idopciones_respuesta) {
        this.idopciones_respuesta = idopciones_respuesta;
    }

    public String getRespuesta_enunciado() {
        return respuesta_enunciado;
    }

    public void setRespuesta_enunciado(String respuesta_enunciado) {
        this.respuesta_enunciado = respuesta_enunciado;
    }

    public int getCorrecta() {
        return correcta;
    }

    public void setCorrecta(int correcta) {
        this.correcta = correcta;
    }

    public int getIdpregunta() {
        return idpregunta;
    }

    public void setIdpregunta(int idpregunta) {
        this.idpregunta = idpregunta;
    }

    public OpcionesRespuesta(int idopciones_respuesta, String respuesta_enunciado, int correcta, int idpregunta) {
        this.idopciones_respuesta = idopciones_respuesta;
        this.respuesta_enunciado = respuesta_enunciado;
        this.correcta = correcta;
        this.idpregunta = idpregunta;
    }
    
}
