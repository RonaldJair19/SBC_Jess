/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sbc_mecanico;
import jess.JessException;
import jess.Rete;
import java.util.logging.Level;
import java.util.logging.Logger;
import jess.*;


public class SBC_Mecanico {

    public static String ruta = "E:\\Documentos\\UTP\\Cuarto_Anio\\Sistemas_basados_en_el_conocimiento\\SBC_Mecanico\\SE_Mecanico.clp";
    public static String hecho = "";
    
    public static void main(String[] args) throws JessException {
        try{
            Rete r = new Rete();
            r.batch(ruta);
            r.run();
            r.reset();
        }catch (JessException ex){
            Logger.getLogger(SBC_Mecanico.class.getName()).log(Level.SEVERE, null,ex);
        }
        
        
        

    }
    
    
    
    
}
