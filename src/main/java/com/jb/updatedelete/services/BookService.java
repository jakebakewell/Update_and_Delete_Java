package com.jb.updatedelete.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.jb.updatedelete.models.Book;
import com.jb.updatedelete.repositories.BookRepository;

@Service
public class BookService {
	// adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    public Book updateBook(Long id, String title, String desc, String lang, Integer numOfPages) {
    	Optional<Book> updateBook = bookRepository.findById(id);
    	if (updateBook.isPresent()) {
    		Book b = updateBook.get();
    		b.setTitle(title);
            b.setDescription(desc);
            b.setLanguage(lang);
            b.setNumberOfPages(numOfPages);
            return bookRepository.save(b);
    	}
    	else {
    		return null;
    	}
        
    }
    public Book updateBook(Book book) {
        return bookRepository.save(book);
    }
    public void deleteBook(Long id) {
    	bookRepository.deleteById(id);
    }
}
