
package cconexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author marcos
 */
public class acoes {
 //   private int id;
    private String id;
    private String usuario;
    private String senha;
    private String setor;
    private String funcao;
    private String nome;
    private String admin;
    public acoes(String id_p){
        this.id =id_p;
    }
    public acoes(){
        
    }
    public acoes(String no,String se,String set,String fun,String admin){
        this.nome =no;
        this.senha =se;
        this.setor =set;
        this.funcao =fun;
        this.admin =admin;
    }
    public acoes(String id_p,String us,String se){
        this.id =id_p;
        this.usuario =us;
        this.senha =se;
        
    }

   
    public void salvar(){
try {      
        
        Connection con = Conexao.fazconexao();
        String sql="insert into usuarios(NOME,SENHA,SETOR,FUNCAO,administrador)values(?,?,?,?,?)";
            PreparedStatement stmt=con.prepareStatement(sql);
            stmt.setString(1,nome);
            stmt.setString(2,senha);
            stmt.setString(3,setor);
            stmt.setString(4,funcao);
            stmt.setString(5,admin);
            stmt.execute();
            stmt.close();
            con.close();
            JOptionPane.showMessageDialog(null,"Operação Realizada com Sucesso");
           
        } catch (SQLException e) {
            e.printStackTrace();
        }
        }
    public void atualiza(){
          try{
        Connection con =Conexao.fazconexao();
        String sql="update usuarios set NOME=?,senha=? where IDUSUARIO=?";
        PreparedStatement stmt=con.prepareStatement(sql);
        stmt.setString(1,usuario);
        stmt.setString(2,senha);
        stmt.setString(3,id);
        stmt.execute();
        stmt.close();
        con.close();
        JOptionPane.showMessageDialog(null,"Banco De Dados Atualizado");
 }catch(SQLException e){
     e.printStackTrace();
 }
    }
     

    
     }

