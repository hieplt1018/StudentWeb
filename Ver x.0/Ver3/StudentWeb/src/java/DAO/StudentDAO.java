/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connectDB.connectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author admin
 */
public class StudentDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private connectDB connectdb;

    public StudentDAO() {
        connectdb = new connectDB();
    }
    
    
    public Student getStudent(String studentID) throws SQLException, Exception {
        Student student = new Student();
        String strSQL = "select * from tblSinhVien where MaSV = '" + studentID + "'";
        try {
            rs = connectdb.getStatement().executeQuery(strSQL);
            while (rs.next()) {
                student.setsClass(rs.getString("Lop"));
                student.setsId(rs.getString("MaSV"));
                student.setLastName(rs.getString("Ho"));
                student.setFirstName(rs.getString("Ten"));
                student.setDateOfBirth(rs.getString("NgaySinh"));
                student.setPlaceOfBirth(rs.getString("NoiSinh"));
                student.setSex(rs.getString("GioiTinh"));
                student.setEmail(rs.getString("Email"));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return student;  
    }
    
    public void updatePassword(String studentID, String password) throws Exception {
        String strSQL = "UPDATE tblSinhVien SET Password = '" + password + "' where MaSV = '" + studentID + "'";
        rs = connectdb.getStatement().executeQuery(strSQL);
    }
    
    public boolean checkLoginDuPhong(String studentID, String password) {
        Student student = new Student();
        String strSQL = "select Password from tblSinhVien where MaSV = '" + studentID + "'";
        try {
            rs = connectdb.getStatement().executeQuery(strSQL);
            while (rs.next()) {
                if(password.equals(rs.getString("Password"))){
                    return true;
                } ;
            }
            
        } catch (Exception ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public static void main(String[] args) throws Exception {
        StudentDAO dao = new StudentDAO();
        Student sv = dao.getStudent("B15DCCN209");
        System.out.println(sv.getLastName() + sv.getFirstName());
        System.out.println(dao.checkLoginDuPhong("B15DCCN660", "vuong19971015"));
        
    }
}
