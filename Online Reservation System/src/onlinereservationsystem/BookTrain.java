package onlinereservationsystem;

import onlinereservationsystem.Conn;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import com.toedter.calendar.JDateChooser;
import java.util.*;

public class BookTrain extends JFrame implements ActionListener{
    
    JTextField tfaadhar;
    JLabel tfname, tfnationality, tfaddress, labelgender, labeltname, labeltcode;
    JButton booktrain, fetchButton, train;
    Choice source, destination;
    JDateChooser dcdate;
    
    public BookTrain() {
        getContentPane().setBackground(Color.WHITE);
        setLayout(null);
        
        JLabel heading = new JLabel("Book Train");
        heading.setBounds(420, 20, 500, 35);
        heading.setFont(new Font("Tahoma", Font.PLAIN, 32));
        heading.setForeground(Color.BLUE);
        add(heading);
        
        JLabel lblaadhar = new JLabel("Aadhar");
        lblaadhar.setBounds(60, 80, 150, 25);
        lblaadhar.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lblaadhar);
        
        tfaadhar = new JTextField();
        tfaadhar.setBounds(220, 80, 150, 25);
        add(tfaadhar);
        
        fetchButton = new JButton("Fetch User");
        fetchButton.setBackground(Color.BLACK);
        fetchButton.setForeground(Color.WHITE);
        fetchButton.setBounds(380, 80, 120, 25);
        fetchButton.addActionListener(this);
        add(fetchButton);
        
        JLabel lblname = new JLabel("Name");
        lblname.setBounds(60, 130, 150, 25);
        lblname.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lblname);
        
        tfname = new JLabel();
        tfname.setBounds(220, 130, 150, 25);
        add(tfname);
        
        JLabel lblnationality = new JLabel("Nationality");
        lblnationality.setBounds(60, 180, 150, 25);
        lblnationality.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lblnationality);
        
        tfnationality = new JLabel();
        tfnationality.setBounds(220, 180, 150, 25);
        add(tfnationality);
        
        JLabel lbladdress = new JLabel("Address");
        lbladdress.setBounds(60, 230, 150, 25);
        lbladdress.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lbladdress);
        
        tfaddress = new JLabel();
        tfaddress.setBounds(220, 230, 150, 25);
        add(tfaddress);
        
        JLabel lblgender = new JLabel("Gender");
        lblgender.setBounds(60, 280, 150, 25);
        lblgender.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lblgender);
        
        labelgender = new JLabel("Gender");
        labelgender.setBounds(220, 280, 150, 25);
        add(labelgender);
        
        JLabel lblsource = new JLabel("Source");
        lblsource.setBounds(60, 330, 150, 25);
        lblsource.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lblsource);
        
        source = new Choice();
        source.setBounds(220, 330, 150, 25);       
        add(source);
        
        JLabel lbldest = new JLabel("Destination");
        lbldest.setBounds(60, 380, 150, 25);
        lbldest.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lbldest);
        
        destination = new Choice();
        destination.setBounds(220, 380, 150, 25);       
        add(destination);
        
        try {
            Conn c = new Conn();
            String query = "select * from train";
            ResultSet rs = c.s.executeQuery(query);
            
            while(rs.next()) {
                source.add(rs.getString("source"));
                destination.add(rs.getString("destination"));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        train = new JButton("Fetch Trains");
        train.setBackground(Color.BLACK);
        train.setForeground(Color.WHITE);
        train.setBounds(380, 380, 120, 25);
        train.addActionListener(this);
        add(train);
        
        JLabel lblfname = new JLabel("Train Name");
        lblfname.setBounds(60, 430, 150, 25);
        lblfname.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lblfname);
        
        labeltname = new JLabel();
        labeltname.setBounds(220, 430, 150, 25);
        add(labeltname);
        
        JLabel lbltcode = new JLabel("Train Code");
        lbltcode.setBounds(60, 480, 150, 25);
        lbltcode.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lbltcode);
        
        labeltcode = new JLabel();
        labeltcode.setBounds(220, 480, 150, 25);
        add(labeltcode);
        
        JLabel lbldate = new JLabel("Date of Travel");
        lbldate.setBounds(60, 530, 150, 25);
        lbldate.setFont(new Font("Tahoma", Font.PLAIN, 16));
        add(lbldate);
        
        dcdate = new JDateChooser();
        dcdate.setBounds(220, 530, 150, 25);
        add(dcdate);
        
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("onlinereservationsystem/icons/IRCTC.png"));
        Image i2 = i1.getImage().getScaledInstance(450, 320, Image.SCALE_DEFAULT);
        ImageIcon image = new ImageIcon(i2);
        JLabel lblimage = new JLabel(image);
        lblimage.setBounds(550, 80, 500, 410);
        add(lblimage);
        
        booktrain = new JButton("Book Train");
        booktrain.setBackground(Color.BLACK);
        booktrain.setForeground(Color.WHITE);
        booktrain.setBounds(220, 580, 150, 25);
        booktrain.addActionListener(this);
        add(booktrain);
        
        setSize(1100, 700);
        setLocation(200, 50);
        setVisible(true);
    }
    
    public void actionPerformed(ActionEvent ae) {
        if (ae.getSource() == fetchButton) {
            String aadhar = tfaadhar.getText();
            
            try {
                Conn conn = new Conn();

                String query = "select * from passenger where aadhar = '"+aadhar+"'";

                ResultSet rs = conn.s.executeQuery(query);
                
                if (rs.next()) {
                    tfname.setText(rs.getString("name")); 
                    tfnationality.setText(rs.getString("nationality")); 
                    tfaddress.setText(rs.getString("address"));
                    labelgender.setText(rs.getString("gender"));
                } else {
                    tfname.setText(""); 
                    tfnationality.setText(""); 
                    tfaddress.setText("");
                    labelgender.setText("");
                    JOptionPane.showMessageDialog(null, "Please Enter Correct AAdhar Number.");                
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (ae.getSource() == train) {
            String src = source.getSelectedItem();
            String dest = destination.getSelectedItem();
            try {
                Conn conn = new Conn();

                String query = "select * from train where source = '"+src+"' and destination = '"+dest+"'";

                ResultSet rs = conn.s.executeQuery(query);
                
                if (rs.next()) {
                    labeltname.setText(rs.getString("t_name")); 
                    labeltcode.setText(rs.getString("t_code")); 
                    JOptionPane.showMessageDialog(null, "Train name = "+rs.getString("t_name")+",and Train Code = "+rs.getString("t_code"));
                } else {
                    JOptionPane.showMessageDialog(null, "No Train Found");                
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            Random random = new Random();
            
            String aadhar = tfaadhar.getText();
            String name = tfname.getText(); 
            String nationality = tfnationality.getText();
            String tname = labeltname.getText(); 
            String tcode = labeltcode.getText();
            String src = source.getSelectedItem(); 
            String des = destination.getSelectedItem();
            String ddate = ((JTextField) dcdate.getDateEditor().getUiComponent()).getText();
            
            try {
                Conn conn = new Conn();

                String query = "insert into reservation values('PNR-"+random.nextInt(1000000)+"', 'TIC-"+random.nextInt(10000)+"', '"+aadhar+"', '"+name+"', '"+nationality+"', '"+tname+"', '"+tcode+"', '"+src+"', '"+des+"', '"+ddate+"')";

                conn.s.executeUpdate(query);
                String que = "select * from reservation where aadhar = '"+aadhar+"' and traincode = '"+tcode+"'";
                ResultSet rs = conn.s.executeQuery(que);
                if (rs.next()) {
                  String PNR = rs.getString("pnr");
                  JOptionPane.showMessageDialog(null, "Ticket Booked Successfully, Your Booking PNR = " + PNR);
                } else {
                   // Handle case where no record found (though should ideally not happen if booking was successful)
                 JOptionPane.showMessageDialog(null, "Ticket Booked Successfully, but could not retrieve PNR.");
                 }

                setVisible(false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        new BookTrain();
    }
}
