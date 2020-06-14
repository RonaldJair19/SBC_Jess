package sbc_mecanico;
import Interfaz.InterfazPrincipalSBC;

public class SBC_Mecanico {
    public static void main(String[] args){
      InterfazPrincipalSBC InterfazPrincipal = new InterfazPrincipalSBC();
      ControlMotor controlMotor = new ControlMotor();
      
      InterfazPrincipal.setControlMotor(controlMotor);
      
      controlMotor.F_Ejecutar();
     }
    }
