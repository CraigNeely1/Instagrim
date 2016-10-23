/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.stores;

/**
 *
 * @author CN
 */
public class UserProfile {
    String Account=null;
    String First_name=null;
    String Second_name=null;
    String Email=null;
    //UUID picID;
    
    
    public void UserProfile(){
       //picID = null;
    }

    public String getAccount(){
        return Account;
    }
    public void setAccount(String Account){
        this.Account = Account;
    }
    public void setFirst_name(String First_name){
        this.First_name = First_name;
    }
    public String getFirst_name(){
        return First_name;
    }
    
    public void setSecond_name(String Second_name){
        this.Second_name= Second_name;
    }
    public String getSecond_name(){
        return Second_name;
    }
    
    public void setEmail(String Email){
        this.Email = Email;
    }
    public String getEmail(){
        return Email;
    }
    
//    public void set UUID picID(String picID){
//        this.picID = picID;
//    }
    

}
