/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaz;
import jess.JessException;
import sbc_mecanico.ControlMotor;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author samu9
 */
public class InterfazPrincipalSBC extends javax.swing.JFrame {
    char [] Vector_respuestas = new char[8];
    int Con = 0;
    private ControlMotor motor_control;
    ControlMotor control_motor = new ControlMotor();
    /**
     * Creates new form InterfazPrincipalSBC
     */
    public InterfazPrincipalSBC() {
        initComponents();
        Btn_Siguiente.setEnabled(false);
        GBtn_Principal.add(R_Btn_A);
        GBtn_Principal.add(R_Btn_B);
        GBtn_Principal.add(R_Btn_C);
        GBtn_Principal.add(R_Btn_D);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        GBtn_Principal = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        Btn_Siguiente = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        Preguntas_Mostrar = new javax.swing.JLabel();
        jButton3 = new javax.swing.JButton();
        R_Btn_A = new javax.swing.JRadioButton();
        R_Btn_B = new javax.swing.JRadioButton();
        R_Btn_C = new javax.swing.JRadioButton();
        R_Btn_D = new javax.swing.JRadioButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jPanel2.setBackground(new java.awt.Color(54, 11, 16));

        jLabel1.setBackground(new java.awt.Color(255, 255, 255));
        jLabel1.setFont(new java.awt.Font("Bookman Old Style", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Sistema Experto");

        jLabel2.setFont(new java.awt.Font("Cooper Black", 1, 36)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("Mecánico");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(208, 208, 208)
                        .addComponent(jLabel1))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(222, 222, 222)
                        .addComponent(jLabel2)))
                .addContainerGap(213, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(15, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel2)
                .addGap(12, 12, 12))
        );

        jButton1.setText("Salir");

        jPanel3.setBackground(new java.awt.Color(29, 0, 0));

        Btn_Siguiente.setText("Siguiente");
        Btn_Siguiente.setActionCommand("Btn_siguiente");
        Btn_Siguiente.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                Btn_SiguienteMouseClicked(evt);
            }
        });
        Btn_Siguiente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Btn_SiguienteActionPerformed(evt);
            }
        });

        jLabel3.setBackground(new java.awt.Color(255, 255, 255));
        jLabel3.setFont(new java.awt.Font("Consolas", 1, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Preguntas");

        Preguntas_Mostrar.setFont(new java.awt.Font("Consolas", 1, 14)); // NOI18N
        Preguntas_Mostrar.setForeground(new java.awt.Color(255, 255, 255));
        Preguntas_Mostrar.setText("Aquí se mostrarán las preguntas del SBC.");

        jButton3.setText("Mostrar inferencia");

        R_Btn_A.setForeground(new java.awt.Color(255, 255, 255));
        R_Btn_A.setText("A");

        R_Btn_B.setForeground(new java.awt.Color(255, 255, 255));
        R_Btn_B.setText("B");
        R_Btn_B.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                R_Btn_BActionPerformed(evt);
            }
        });

        R_Btn_C.setForeground(new java.awt.Color(255, 255, 255));
        R_Btn_C.setText("C");
        R_Btn_C.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                R_Btn_CActionPerformed(evt);
            }
        });

        R_Btn_D.setForeground(new java.awt.Color(255, 255, 255));
        R_Btn_D.setText("D");
        R_Btn_D.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                R_Btn_DActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Preguntas_Mostrar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel3Layout.createSequentialGroup()
                                .addGap(35, 35, 35)
                                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel3Layout.createSequentialGroup()
                                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(jPanel3Layout.createSequentialGroup()
                                                .addComponent(R_Btn_A)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                .addComponent(R_Btn_B))
                                            .addGroup(jPanel3Layout.createSequentialGroup()
                                                .addComponent(R_Btn_C)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                .addComponent(R_Btn_D)))
                                        .addGap(162, 162, 162))
                                    .addGroup(jPanel3Layout.createSequentialGroup()
                                        .addGap(218, 218, 218)
                                        .addComponent(Btn_Siguiente)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 113, Short.MAX_VALUE)
                                        .addComponent(jButton3))))
                            .addComponent(jLabel3))
                        .addGap(18, 18, 18))))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Preguntas_Mostrar, javax.swing.GroupLayout.DEFAULT_SIZE, 144, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(R_Btn_A)
                    .addComponent(R_Btn_B))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(R_Btn_D)
                    .addComponent(R_Btn_C))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Btn_Siguiente)
                    .addComponent(jButton3))
                .addGap(14, 14, 14))
        );

        jButton4.setText("Reiniciar");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton5.setText("Iniciar SBC");
        jButton5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButton5MouseClicked(evt);
            }
        });
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jButton5)
                        .addGap(165, 165, 165)
                        .addComponent(jButton4)
                        .addGap(206, 206, 206)
                        .addComponent(jButton1)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton4)
                    .addComponent(jButton5))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 635, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 504, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    
    
    
    private void Btn_SiguienteMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_Btn_SiguienteMouseClicked
        /*if(A == "A"){
        this.control_motor.F_Insertar("(assert (fallo-carro(fallo_carro A)))");
        }*/
        if (R_Btn_A.isSelected()) {
            Vector_respuestas[Con] = 'A';
        } else if(R_Btn_B.isSelected()){
            Vector_respuestas[Con] = 'B';
        }else if(R_Btn_C.isSelected()){
            Vector_respuestas[Con] = 'C';
        }
        else if(R_Btn_C.isSelected()){
            Vector_respuestas[Con] = 'D';
        }
        //this.pack();
        Con = Con + 1;
        GBtn_Principal.clearSelection();
        Vector_de_respuestas(Vector_respuestas);
    }//GEN-LAST:event_Btn_SiguienteMouseClicked
    
    private void Vector_de_respuestas(char[] Vector){
        /*for(int i=0;i<Vector.length;i++)
    {
        
    }*/
        
        try{
           if(Vector[0] == 'A'){
            this.control_motor.F_Insertar("(assert (fallo-carro(fallo_carro A)))");
            Preguntas_Mostrar.setText("<html> -- Que tipo de motor utiliza su automovil? <p><p> (A) Motor Electrico <p> (B) Motor de combustion interna <p> (C) Fallo en la suspension<html>");  
                if(Vector[1] == 'A'){
                    this.control_motor.F_Insertar("(assert (clase-motor(clase_motor A)))");
                    Preguntas_Mostrar.setText("<html> -- Su motor electrico hace algun ruido? <p><p> (A) Si <p> (B) No hace ningun ruido");
                    if(Vector[2] == 'A'){
                        this.control_motor.F_Insertar("(assert (motor-ruido(motor_ruido A)))");
                        //Aqui debe venir un reset y respuesta!
                    }
                }
           
           } 
        } catch (JessException ex) {
            Logger.getLogger(InterfazPrincipalSBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    private void R_Btn_BActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_R_Btn_BActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_R_Btn_BActionPerformed

    private void R_Btn_CActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_R_Btn_CActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_R_Btn_CActionPerformed

    private void R_Btn_DActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_R_Btn_DActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_R_Btn_DActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton5MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton5MouseClicked

    }//GEN-LAST:event_jButton5MouseClicked

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        // Método para cuando se presione iniciar el SBC
        Btn_Siguiente.setEnabled(true);
        Preguntas_Mostrar.setText("<html> --Que tipo de falla presenta su vehiculo? <p><p> (A) Fallo del motor <p> (B) Fallo electrico <p> (C) Fallo en la suspension <p>(D) Fallo en los frenos<html>");
        
        
    }//GEN-LAST:event_jButton5ActionPerformed

    private void Btn_SiguienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Btn_SiguienteActionPerformed
        // TODO add your handling code here:
        
    }//GEN-LAST:event_Btn_SiguienteActionPerformed
    
    
    public void setControlMotor(ControlMotor motor_control){
        this.motor_control = motor_control;
        //motor_control.F_Ejecutar();
    }
        
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new InterfazPrincipalSBC().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Btn_Siguiente;
    private javax.swing.ButtonGroup GBtn_Principal;
    private javax.swing.JLabel Preguntas_Mostrar;
    private javax.swing.JRadioButton R_Btn_A;
    private javax.swing.JRadioButton R_Btn_B;
    private javax.swing.JRadioButton R_Btn_C;
    private javax.swing.JRadioButton R_Btn_D;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    // End of variables declaration//GEN-END:variables
}
