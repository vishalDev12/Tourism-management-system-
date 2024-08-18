package tourismmanagementsystem;

import javax.swing.*;
import java.awt.*;
import java.sql.*;
import java.awt.event.*;

public class ViewPackage extends JFrame implements ActionListener{
    
    JButton b1;    
    ViewPackage(String username){
        setBounds(220,120,800,450);
        getContentPane().setBackground(Color.white);
        setLayout(null);
        
        ImageIcon i1=new ImageIcon(ClassLoader.getSystemResource("tourismmanagementsystem/icons/bookedDetails.jpg"));
        Image i2=i1.getImage().getScaledInstance(500,400,Image.SCALE_DEFAULT);
        ImageIcon i3=new ImageIcon(i2);
        JLabel l8=new JLabel(i3);
        l8.setBounds(400,20,500,400);
        add(l8);
        
        JLabel heading =new JLabel("VIEW PACKAGE DETAILS");
        heading.setBounds(60,0,200,30);
        heading.setFont(new Font("Tahoma",Font.PLAIN,17));
        add(heading);
        
        JLabel l1=new JLabel("Username: ");
        l1.setBounds(30,50,100,30);
        add(l1);
        
        JLabel l11=new JLabel();
        l11.setBounds(250,50,200,30);
        add(l11);
        
        JLabel l2=new JLabel("Package: ");
        l2.setBounds(30,90,100,30);
        add(l2);
        
        JLabel l12=new JLabel();
        l12.setBounds(250,90,200,30);
        add(l12);
        
        JLabel l3=new JLabel("Total Persons: ");
        l3.setBounds(30,130,100,30);
        add(l3);
        
        JLabel l13=new JLabel();
        l13.setBounds(250,130,200,30);
        add(l13);
        
        JLabel l4=new JLabel("ID: ");
        l4.setBounds(30,170,100,30);
        add(l4);
        
        JLabel l14=new JLabel();
        l14.setBounds(250,170,200,30);
        add(l14);
        
        JLabel l5=new JLabel("Number: ");
        l5.setBounds(30,210,100,30);
        add(l5);
        
        JLabel l15=new JLabel();
        l15.setBounds(250,210,200,30);
        add(l15);
        
        JLabel l6=new JLabel("Phone: ");
        l6.setBounds(30,250,100,30);
        add(l6);
        
        JLabel l16=new JLabel();
        l16.setBounds(250,250,200,30);
        add(l16);
        
        JLabel l7=new JLabel("Price: ");
        l7.setBounds(30,290,100,30);
        add(l7);
        
        JLabel l17=new JLabel();
        l17.setBounds(250,290,200,30);
        add(l17);
        
        try{
            Conn c=new Conn();
            ResultSet rs=c.s.executeQuery("Select * from bookPackage where username='"+username+"'");
            while(rs.next()){
                l11.setText(rs.getString(1));
                l12.setText(rs.getString(2));
                l13.setText(rs.getString(3));
                l14.setText(rs.getString(4));
                l15.setText(rs.getString(5));
                l16.setText(rs.getString(6));
                l17.setText(rs.getString(7));
            }
        }catch(Exception e){
            
        }
        
        b1=new JButton("Back");
        b1.setBackground(Color.black);
        b1.setForeground(Color.WHITE);
        b1.setBounds(150,340,150,25);
        b1.addActionListener(this);
        add(b1);
    }
        
        public void actionPerformed(ActionEvent ae){
            if(ae.getSource()==b1){
                this.setVisible(false);
            }
        }
        
    public static void main(String[] args) {
        new ViewPackage("").setVisible(true);        
    }
}
