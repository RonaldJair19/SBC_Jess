package sbc_mecanico;
import Interfaz.InterfazPrincipalSBC;
import java.awt.TextArea;
import jess.JessException;
import jess.Rete;
import java.util.logging.Level;
import java.util.logging.Logger;
import jess.*;
import jess.awt. *;

public class ControlMotor {
    public static String ruta = "E:\\Documentos\\UTP\\Cuarto_Anio\\Sistemas_basados_en_el_conocimiento\\SBC_Mecanico\\src\\ArchivoClips\\SE_Mecanico.clp";
    //public static String hecho;
    static ControlMotor controlMotor;
    public Rete r = new Rete();
    public ControlMotor(){
        try{
            r.reset();
            r.batch(ruta);
            r.run();
        }catch (JessException ex){
            Logger.getLogger(ControlMotor.class.getName()).log(Level.SEVERE, null,ex);
        }
    }
    
    public void F_Insertar(String hecho) throws JessException{
        //System.out.println();//Borrar
        r.eval(hecho);
        //r.assertString(hecho);
        r.executeCommand("(facts)");
        //r.executeCommand("(run)");
        this.r.run();

        
    }
    
    public void F_Ejecutar(){
        try{
            this.r.run();
        } catch (JessException ex){
            Logger.getLogger(ControlMotor.class.getName()).log(Level.SEVERE, null,ex);
        }
    }
    
    
    public void F_Reiniciar(){
        try{
            r.executeCommand("(reset)");
        } catch (JessException ex){
            Logger.getLogger(ControlMotor.class.getName()).log(Level.SEVERE, null,ex);
        }   
    }
    
    
}
