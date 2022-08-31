/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pcs_2001081002.service;

import com.mycompany.pcs_2001081002.model.User;
import java.util.Collection;
import java.util.HashMap;

/**
 *
 * @author Sulis Tiyah
 */
public class UserServiceImpl implements UserService {
private final HashMap<String,User>userMap;

public UserServiceImpl() {
    userMap = new HashMap<>();
    User user = new User();
    user.setId("1");
    user.setFirstName("Sulis");
    user.setLastName("Tiyah");
    user.setEmail("sulistyhm.03@gmail.com");
    userMap.put(user.getId(), user);
    
}
    @Override
    public void addUser (User user) {
        userMap.put(user.getId(), user);
    }
    @Override
    public Collection<User> getUsers(){
        return userMap.values();
        
    }
    @Override
    public User getUser(String id){
        return userMap.get(id);
        
    }
    @Override
    public User editUser(User user){
        User userEdit = userMap.get(user.getId());
        userEdit.setFirstName(user.getFirstName());
        userEdit.setLastName(user.getLastName());
        userEdit.setEmail(user.getEmail());
        return userEdit;
    }
    @Override
    public void deleteUser(String id){
        userMap.remove(id);
        
    }
    
    @Override
    public boolean userExist(String id) {
        return userMap.containsKey(id);
    }
}