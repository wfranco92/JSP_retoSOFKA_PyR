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
public class Preguntas {
    
    private int idpregunta;
    private String enunciado;
    private int id_categoria;

    public void setIdpregunta(int idpregunta) {
        this.idpregunta = idpregunta;
    }

    public void setEnunciado(String enunciado) {
        this.enunciado = enunciado;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public int getIdpregunta() {
        return idpregunta;
    }

    public String getEnunciado() {
        return enunciado;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public Preguntas(int idpregunta, String enunciado, int id_categoria) {
        this.idpregunta = idpregunta;
        this.enunciado = enunciado;
        this.id_categoria = id_categoria;
    }

}
