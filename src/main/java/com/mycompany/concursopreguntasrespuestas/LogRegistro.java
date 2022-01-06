/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.concursopreguntasrespuestas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author wfran
 */
public class LogRegistro {
    
    static Connection conexion;
    static Statement st= null;

    // metodo estatico para registrar el historial de un juego en la BBDD
    public static void registrar(String jugador, int puntos, int rondas) throws ClassNotFoundException {

        try {
            conexion = Conexion.getConexion();
            String sqlLog = "INSERT INTO logs_juego (jugador, puntos, rondas) VALUES('"+jugador+"', '"+puntos+"', '"+rondas+"' );";
            st = conexion.createStatement();
            st.executeUpdate(sqlLog);
            System.out.print("Correcto!!");
        } catch (SQLException ex) {
            Logger.getLogger(LogRegistro.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    // metodo estatico para actualizar el maximo puntaje y ultimo puntaje de un jugador en la BBDD
    public static void registrarPuntajeJugador(String jugador, int puntos, int maxPuntos) throws ClassNotFoundException {

        try {
            conexion = Conexion.getConexion();
            String sqlLog = "UPDATE jugador SET ultimo_puntaje='"+puntos+"', max_puntaje='"+maxPuntos+"' WHERE nombre='"+jugador+"';";
            st = conexion.prepareStatement(sqlLog);
            st.executeUpdate(sqlLog);
            System.out.print("Correcto!!");
        } catch (SQLException ex) {
            Logger.getLogger(LogRegistro.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    // metodo estatico para registrar un nuevo jugador en la BBDD
    public static void nuevoJugador(String nombre, String apellido) throws ClassNotFoundException {

        try {
            conexion = Conexion.getConexion();
            String sqlLog = "INSERT INTO jugador (nombre, apellido, max_puntaje, ultimo_puntaje) VALUES('"+nombre+"', '"+apellido+"', 0, 0 );";
            st = conexion.prepareStatement(sqlLog);
            st.executeUpdate(sqlLog);
            System.out.print("Correcto!!");
        } catch (SQLException ex) {
            Logger.getLogger(LogRegistro.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
}
