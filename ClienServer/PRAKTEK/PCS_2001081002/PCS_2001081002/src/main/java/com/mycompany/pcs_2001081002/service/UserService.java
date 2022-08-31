/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pcs_2001081002.service;

import com.mycompany.pcs_2001081002.model.User;
import java.util.Collection;
/**
 *
 * @author Sulis Tiyah
 */
public interface UserService {
   public void addUser (User user);
   public Collection<User> getUsers();
   public User getUser(String id);
   public User editUser(User user);
   public void deleteUser(String id);
   public boolean userExist(String id);
    
}
