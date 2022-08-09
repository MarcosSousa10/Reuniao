
package cconexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author marcos
 */
public class reuniao {
    private int id;
    private String usuario;
    private String prioridade;
    private Date data;
    private String horainicio;
    private String horafim;
    private String assunto;
    private String equipamento;
    private String salareuniao;

    public reuniao(String usa, String saa, Date daa, String hea, String hsa,String note) {
        this.usuario = usa;
        this.prioridade = saa;
        this.data = daa;
        this.horainicio = hea;
        this.horafim = hsa;
        this.assunto=note;
        
    }

   public reuniao(String usuario, String prioridade, Date data, String horainicio, String horafim,String assunto,String salareuniao,String equipamento) {
        this.usuario = usuario;
        this.prioridade = prioridade;
        this.data = data;
        this.horainicio = horainicio;
        this.horainicio = horafim;
        this.assunto=assunto;
        this.equipamento=equipamento;
        this.salareuniao=salareuniao;
    }
    public void salvar(){
try {  Connection con = Conexao.fazconexao();
        String sql="insert into alocacao (NOME,PRIORIDADE,DATAINICIO,HORAINICIO,HORAFIM,ASSUNTO,EQUIPAMENTO,SALAREUNIAO)values(?,?,?,?,?,?,?,?)";
            PreparedStatement stmt=con.prepareStatement(sql);
            stmt.setString(1,usuario);
            stmt.setString(2,prioridade);
            stmt.setObject(3,data);
            stmt.setString(4,horainicio);
            stmt.setString(5,horafim);
            stmt.setString(6,assunto);
            stmt.setString(7,equipamento);
            stmt.setString(8,salareuniao);
            stmt.execute();
            stmt.close();
            con.close();
            JOptionPane.showMessageDialog(null,"Operação Realizada com Sucesso");
           
        } catch (SQLException e) {
            e.printStackTrace();
        }
        }
    
}
