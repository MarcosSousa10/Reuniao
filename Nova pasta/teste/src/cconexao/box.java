
package cconexao;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.swing.JOptionPane;
//import com.sun.jdi.connect.spi.Connection;

public class box {
    private  int idusuario;
    private String nome;

    public box(int idusuario, String nome) throws SQLException {
        this.idusuario = idusuario;
        this.nome = nome;
    }

    public int getIdusuario() {
        return idusuario;
    }
    public  box(){

};

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getNome() {
        return nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    
    }
     public void removerContato(int ID) throws SQLException {
                  
                  
                           // fechar as conexões com o BD
                           
                                   
                  }
         }
   


