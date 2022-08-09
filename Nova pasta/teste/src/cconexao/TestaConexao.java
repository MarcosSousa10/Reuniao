package cconexao;

import java.sql.Connection;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 * em 10/09/2021
 *
 * @author Senac cria a conexão com BD para teste
 */
public class TestaConexao {

    /**
     * @param args the command line arguments
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) throws SQLException {

        // estabelece a conexão com o BD
        Connection con = Conexao.fazconexao();

        // testa se a conexão é nula
        if (con != null) {
            JOptionPane.showMessageDialog(null, "Conexão obtida com sucesso [" + con + "]");
            con.close();
        } else {
            JOptionPane.showMessageDialog(null, "Não foi possível conectar ao BD");
        }
    }
}
