/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.concursopreguntasrespuestas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author wfran
 */
public class ModeloPregunta {
    
    private Connection conexion;
    
    public Preguntas getPregunta(int idPregunta)throws SQLException{
    
        Preguntas pregunta= null;
        conexion = Conexion.getConexion();
        Statement st = null;
        ResultSet rs = null;
        
        String SQL="SELECT * FROM pregunta WHERE idpregunta='"+idPregunta+"';";
        st=conexion.createStatement();
        rs=st.executeQuery(SQL);
        
        while(rs.next()){
            
            int id_preg = rs.getInt(1);
            String enunciado = rs.getString(2);
            int id_categoria = rs.getInt(3);
            
            pregunta = new Preguntas(id_preg, enunciado, id_categoria);
        }
        conexion.close();
        return pregunta;
    }
}
