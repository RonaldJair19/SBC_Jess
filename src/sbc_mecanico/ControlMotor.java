package sbc_mecanico;
import jess.JessException;
import jess.Rete;
import java.util.logging.Level;
import java.util.logging.Logger;
import jess.*;

public class ControlMotor {
    public static String ruta = "E:\\Documentos\\UTP\\Cuarto_Anio\\Sistemas_basados_en_el_conocimiento\\SBC_Mecanico\\src\\ArchivoClips\\SE_Mecanico.clp";
    public static String hecho = "";
    static ControlMotor controlMotor;
    Rete r = new Rete();
    
    public ControlMotor(){
        try{
            r.reset();
            r.batch(ruta);
            r.run();
        }catch (JessException ex){
            Logger.getLogger(SBC_Mecanico.class.getName()).log(Level.SEVERE, null,ex);
        }
    }
    
    public void F_Insertar(String hecho) throws JessException{
        System.out.println();//Borrar
        r.assertString(hecho);
        r.run();   
    }
    
    public void F_Ejecutar(){
        try{
            r.run();
        } catch (JessException ex){
            Logger.getLogger(SBC_Mecanico.class.getName()).log(Level.SEVERE, null,ex);
        }
    }
    
    
    
}
