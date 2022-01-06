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
public class PreguntaAleatoria {
    
   
    
    public static int generarnumero(int numRonda){
        
        int numeroAleatorio=0;
        
        switch (numRonda){
        
            case 1:
                numeroAleatorio=(int)(Math.random()*5+1);
                break;
            case 2:
                numeroAleatorio=(int)(Math.random()*(10-6+1)+6);
                break;
            case 3:
                numeroAleatorio=(int)(Math.random()*(15-11+1)+11);
                break;
            case 4:
                numeroAleatorio=(int)(Math.random()*(20-16+1)+16);
                break;
            case 5:
                numeroAleatorio=(int)(Math.random()*(25-21+1)+21);
                break;
        }
            
        return numeroAleatorio;
    }
    
}

