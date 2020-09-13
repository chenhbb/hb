package com.service;
import com.po.Book;
import com.utils.Page;
public interface BookService {
	// 查询客户列表
	public Page<Book> findBookList(Integer page, Integer rows, 
                                        String bookName,String bookResource,String bookWriter);
	
	public int createBook(Book book);
	
	// 通过id查询图书
	public Book getBookById(Integer id);
	// 更新图书
	public int updateBook(Book book);
	// 删除图书
	public int deleteBook(Integer id);

}
