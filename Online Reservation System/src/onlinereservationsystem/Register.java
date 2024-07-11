
package onlinereservationsystem;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class Register extends JFrame implements ActionListener{
    JButton Signup, reset, close,login;
    JTextField tfusername;
    JPasswordField tfpassword,tfpassword2;
    
    public Register() {
        getContentPane().setBackground(Color.WHITE);
        setLayout(null);
        
        JLabel lblusername = new JLabel("Username");
        lblusername.setBounds(20, 20, 100, 20);
        add(lblusername);
        
        tfusername = new JTextField();
        tfusername.setBounds(130, 20, 200, 20);
        add(tfusername);
        
        JLabel lblpassword = new JLabel("Password");
        lblpassword.setBounds(20, 60, 100, 20);
        add(lblpassword);
        
        tfpassword = new JPasswordField();
        tfpassword.setBounds(130, 60, 200, 20);
        add(tfpassword);
        
        JLabel lblpassword2 = new JLabel("Re-Password");
        lblpassword2.setBounds(20, 100, 100, 20);
        add(lblpassword2);
        
        tfpassword2 = new JPasswordField();
        tfpassword2.setBounds(130, 100, 200, 20);
        add(tfpassword2);
        
        reset = new JButton("Reset");
        reset.setBounds(40, 140, 120, 20);
        reset.addActionListener(this);
        add(reset);
        
        Signup = new JButton("Signup");
        Signup.setBounds(210, 140, 120, 20);
        Signup.addActionListener(this);
        add(Signup);
        
        close = new JButton("Close");
        close.setBounds(40, 180, 120, 20);
        close.addActionListener(this);
        add(close);
        
        login = new JButton("Login");
        login.setBounds(210, 180, 120, 20);
        login.addActionListener(this);
        add(login);
        
        setSize(400, 250);
        setLocation(600, 250);
        setVisible(true);
    }
    
    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == Signup) {
            String username = tfusername.getText();
            String password = tfpassword.getText();
            String password2 = tfpassword2.getText();
            if(password.equals(password2)){
            try {
                Conn c = new Conn();
                
                String query = "insert into login values( '"+username+"' , '"+password+"')";
                
                c.s.executeUpdate(query);

                JOptionPane.showMessageDialog(null, "SignedUp Successfully. Please Login");
                new Login();
                setVisible(false);
                }
            catch (Exception e) {
                e.printStackTrace();
            }
            }
            else{
                tfpassword.setText("");
                tfpassword2.setText("");
                JOptionPane.showMessageDialog(null, "Password Mismatch.Please Try Again.");
            }
        } 
        else if(ae.getSource()==login)
        {
            new Login();
            setVisible(false);
        }
        else if (ae.getSource() == close) {
            setVisible(false);
        } else if (ae.getSource() == reset) {
            tfusername.setText("");
            tfpassword.setText("");
            tfpassword2.setText("");
        }
        
    }
    
    public static void main(String[] args) {
        new Register();
    }
}
