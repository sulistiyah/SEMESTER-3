 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pcs_2001081002;
import static spark.Spark.*;
/**
 *
 * @author Sulis Tiyah
 */
public class Main {
    public static void main(String[] args) {
        get("/hello", (req,res) -> "Selamat Datang");
        get("/hello/:name", (req,res) ->{
            return "Hello, "+ req.params(":name");
        });
    }
    
}
