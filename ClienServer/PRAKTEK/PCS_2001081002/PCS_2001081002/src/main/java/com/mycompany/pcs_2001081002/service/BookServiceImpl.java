/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pcs_2001081002.service;

import com.mycompany.pcs_2001081002.model.User;
import com.mycompany.pcs_2001081002.model.Book;
import java.util.Collection;
import java.util.HashMap;
import java.util.Objects;

/**
 *
 * @author Sulis Tiyah
 */
public abstract class BookServiceImpl implements BookService {
    private HashMap<String, Book> userMap;
    
    public BookServiceImpl() {
        userMap = new HashMap<>();
        Book book = new Book();
        book.setId("1");
        book.setKode("978-602-220-275-2");
        book.setJudul("Ivanna Van Dijk");
        book.setPengarang("Risa Saraswati");
        book.setPenerbit("Bukune");
        book.setTahunTerbit("2018");
        userMap.put(book.getId(), book);
        
    }

    @Override
    public void addBook(Book book) {
      userMap.put(book.getId(), book);
    }

    @Override
    public Collection<Book> getBook() {
       return userMap.values();
    }

    @Override
    public Book getBook(String id) {
        return userMap.get(id);
    }

    @Override
    public Book editBook(Book book) {
        Book bookEdit = userMap.get(book.getId());
        bookEdit.setKode(book.getKode());
        bookEdit.setJudul(book.getJudul());
        bookEdit.setPengarang(book.getPengarang());
        bookEdit.setPenerbit(book.getPenerbit());
        bookEdit.setTahunTerbit(book.getTahunTerbit());
        return bookEdit;
    }

    @Override
    public void deleteBook(String id) {
        userMap.remove(id);
    }

    @Override
    public boolean bookExist(String id) {
        return userMap.containsKey(id);
    } 
    
}
