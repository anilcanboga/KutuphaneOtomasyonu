package kutuphaneotomasyonu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Operations {

    //import edilecekler
    Connection con = null;
    Statement sta = null;
    PreparedStatement psta = null;

    public boolean login(String id, String password) {

        String sorgu = "Select * from admin where id = ? and password = ?";
        try {
            psta = con.prepareStatement(sorgu);
            psta.setString(1, id);
            psta.setString(2, password);
            ResultSet rs = psta.executeQuery();
            return rs.next();

        } catch (SQLException ex) {
            Logger.getLogger(Operations.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }

    }

    public Operations() {

        //url -> jdbc:mysql://host:port/db_name;id;password;
        String url = "jdbc:mysql://" + Database.host + ":" + Database.port + "/" + Database.db_name;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, Database.id, Database.password);
            System.out.println("Veritabanına başarıyla bağlanıldı.");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Operations.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Driver çalışmadı.");
        } catch (SQLException ex) {
            Logger.getLogger(Operations.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Connection çalışmadı.");
        }
    }

    public static void main(String[] args) {
        Operations op = new Operations();
    }

}
