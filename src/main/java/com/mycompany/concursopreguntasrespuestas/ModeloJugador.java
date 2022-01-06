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
public class ModeloJugador {
    
    private Connection conexion;
    
    public List <Jugador> getJugador() throws SQLException{
    
        List<Jugador> jugadores = new ArrayList<>();
        conexion = Conexion.getConexion();
        Statement st = null;
        ResultSet rs = null;
        
        String SQL="SELECT * FROM jugador;";
        st=conexion.createStatement();
        rs=st.executeQuery(SQL);
        
        while(rs.next()){
            
            int id_jugador = rs.getInt(1);
            String nombre = rs.getString(2);
            String apellido = rs.getString(3);
            int max_puntaje = rs.getInt(4);
            int ultimo_puntaje = rs.getInt(5);
            
            Jugador jugadorTemp = new Jugador(id_jugador, nombre, apellido, max_puntaje, ultimo_puntaje);
            
            jugadores.add(jugadorTemp);
        }
        conexion.close();
        return jugadores;
        
    }
    
}
