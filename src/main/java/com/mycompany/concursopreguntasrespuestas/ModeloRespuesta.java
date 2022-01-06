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
public class ModeloRespuesta {
    
    private Connection conexion;
    
    public List<OpcionesRespuesta> getRespuestas(int pregunta) throws SQLException {
    
        List<OpcionesRespuesta> respuestas = new ArrayList<>();
        conexion = Conexion.getConexion();
        Statement st = null;
        ResultSet rs = null;
        
        String SQL="SELECT * FROM opciones_respuesta WHERE idpregunta='"+pregunta+"';";
        st=conexion.createStatement();
        rs=st.executeQuery(SQL);
        
        while(rs.next()){
            
            int id_respuesta = rs.getInt(1);
            String enunciado = rs.getString(2);
            int correcta = rs.getInt(3);
            int idPregunta = rs.getInt(4);
            
            OpcionesRespuesta rtaTemp = new OpcionesRespuesta(id_respuesta, enunciado, correcta, idPregunta);
            
            respuestas.add(rtaTemp);
        }
        conexion.close();
        return respuestas;
}
    
}
