/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pcs_2001081002.response;

/**
 *
 * @author Sulis Tiyah
 */
public enum StatusResponse {
    SUCCESS("success"), ERROR("Error");
    final private String status;
    
    StatusResponse(String status) {
        this.status = status;
    }
    
    public String getStatus() {
        return status;
    }
    
    
}
