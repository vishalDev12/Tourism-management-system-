package tourismmanagementsystem;

import java.awt.*;
import javax.swing.*;

public class Loading extends JFrame implements Runnable{
    JProgressBar p;
    Thread t;
     String username;
    
    public void run(){
        try{
           for(int i=1;i<=101;i++){
               int m=p.getMaximum();
               int n=p.getValue();
               if(n<m){
                   p.setValue(p.getValue() + 1);
               }
               else{
                   i=101;
                   setVisible(false);
                   new Dashboard(username).setVisible(true);
               }
               Thread.sleep(50);
           } 
        }
        catch(Exception e){
            
        }
    }
    Loading(String user){
        username=user;
        t=new Thread(this);
        setBounds(400,150,500,400);
        getContentPane().setBackground(Color.WHITE);
        setLayout(null);
     JLabel l1=new JLabel("Travel And Tourism Application");   
     l1.setBounds(50,20,600,40);
     l1.setFont(new Font("Raleway",Font.BOLD,25));
     l1.setForeground(Color.blue);
     add(l1);
     
     p= new JProgressBar();
     p.setStringPainted(true);
     p.setBounds(100,80,300,25);
     add(p);
     
     JLabel l2=new JLabel("Please Wait...");   
     l2.setBounds(200,110,100,25);
     l2.setFont(new Font("Tahoma",Font.BOLD,14));
     l2.setForeground(Color.red);
     add(l2);
     
     JLabel l3=new JLabel("Welcome " + username);   
     l3.setBounds(20,320,600,25);
     l3.setFont(new Font("Tahoma",Font.BOLD,16));
     l3.setForeground(Color.red);
     add(l3);
     
        t.start();
    }   
    public static void main(String[] args) {
        new Loading("").setVisible(true);
    }
}
