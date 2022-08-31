/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pcs_2001081002;

import com.google.gson.Gson;
import com.mycompany.pcs_2001081002.model.User;
import com.mycompany.pcs_2001081002.model.Book;
import com.mycompany.pcs_2001081002.response.StandardResponse;
import com.mycompany.pcs_2001081002.response.StatusResponse;
import com.mycompany.pcs_2001081002.service.BookService;
import com.mycompany.pcs_2001081002.service.BookServiceImpl;
import com.mycompany.pcs_2001081002.service.UserService;
import com.mycompany.pcs_2001081002.service.UserServiceImpl;
import java.util.Collection;
import static spark.Spark.get;
import static spark.Spark.post;

/**
 *
 * @author Sulis Tiyah
 */
public class SparkRestExample {
  public static void main(String[] args) {
        final UserService userService = new UserServiceImpl();
        
        post("/users", (request,response) -> {
            response.type("application/json");
            User user = new Gson().fromJson(request.body(), User.class);
            userService.addUser(user);
            return new Gson().toJson(new StandardResponse(StatusResponse.SUCCESS));  
        });
        get("/users", (request, response) -> {
            response.type("application/json");
            return new Gson().toJson(
                    new StandardResponse(
                            StatusResponse.SUCCESS,
                            new Gson().toJsonTree(userService.getUsers())
                    )
            );
        });
        
        final BookService bookService = new BookServiceImpl() {};
              
        post("/book", (request, response) -> {
            response.type("application/json");
            Book book = new Gson().fromJson(request.body(), Book.class);
            bookService.addBook(book);
            return new Gson().toJson(new StandardResponse(StatusResponse.SUCCESS));
        });
        
        get("/book", (request, response) -> {
            response.type("application/json");
            return new Gson().toJson(
                    new StandardResponse(
                            StatusResponse.SUCCESS,
                               new Gson().toJsonTree(
                                       bookService.getBook()
                               )
                    )
            );
        });
            
          
    }
}