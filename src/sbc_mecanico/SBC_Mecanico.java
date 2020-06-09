/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sbc_mecanico;

import jess.*;


public class SBC_Mecanico {

    public static String ruta = "";
    public static String hecho = "";
    
    public static void main(String[] args) throws JessException {
        Rete r = new Rete();
        r.batch(ruta);
        r.run(); 
    }
    
}
