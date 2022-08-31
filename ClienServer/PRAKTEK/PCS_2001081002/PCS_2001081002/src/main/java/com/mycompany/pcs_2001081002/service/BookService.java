/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pcs_2001081002.service;

import com.mycompany.pcs_2001081002.model.Book;
import com.mycompany.pcs_2001081002.model.User;
import java.util.Collection;

/**
 *
 * @author Sulis Tiyah
 */
public interface BookService {
    public void addBook (Book book);
    public Collection<Book> getBook();
    public Book getBook(String id);
    public Book editBook(Book book);
    public void deleteBook(String id);
    public boolean bookExist(String id);

}
