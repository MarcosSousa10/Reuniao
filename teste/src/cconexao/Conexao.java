
package cconexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexao {

    public static Connection fazconexao() {
        //verificação de dados validos
          try{
            //faz com que a classe seja carregada pela JVM             
           Class.forName("com.mysql.jdbc.Driver");
           //criar conexão com banco de dados
           //    Connection conex=DriverManager.getConnection("jdbc:mysql://192.168.2.181:3306/carvalho","newuser","password");
      // Connection conex=DriverManager.getConnection("jdbc:mysql://192.168.2.181:3306/carvalho","admin","password");
       Connection conex=DriverManager.getConnection("jdbc:mysql://192.168.1.18:3306/carvalho","marcos","password");
       //  Connection conex=DriverManager.getConnection("jdbc:mysql://192.168.0.51:3306/carvalho","marcos","P@sswd20");
          // Connection conex=DriverManager.getConnection("jdbc:mysql://localhost:3306/carvalho","root","802592212");
      //    Connection conex=DriverManager.getConnection("jdbc:mysql://192.168.2.181:3306/carvalho","marcoss","P@sswd20");
         //  Connection conex=DriverManager.getConnection("jdbc:mysql://localhost:3306/carvalho","root","802592212");
           //retorna conexção com banco de dados
                   return conex; 
        }catch(ClassNotFoundException erro1){
            //driver não encontrado
            JOptionPane.showMessageDialog(null," O driver especificado não foi encontrado ");
            return null;
        }catch(SQLException erro2){
            //nnão foi possivel localizar o banco de dados
            JOptionPane.showMessageDialog(null ," O arquivo de Banco de dados não foi encontrado ");
             return null;
        }
       
      
    }
    
       
}
