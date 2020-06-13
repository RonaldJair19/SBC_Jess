package sbc_mecanico;
import Interfaz.Interfaz_SBC;

public class SBC_Mecanico {
    public static void main(String[] args){
      Interfaz_SBC InterfazPrincipal = new Interfaz_SBC();
      ControlMotor controlMotor = new ControlMotor();
      
      InterfazPrincipal.setControlMotor(controlMotor);
      
      controlMotor.F_Ejecutar();
     }
    }
