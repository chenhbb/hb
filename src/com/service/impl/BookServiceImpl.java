package com.service.impl;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BookDao;
import com.po.Book;
import com.service.BookService;
import com.utils.Page;
/**
 * 图书管理
 */
@Service("bookService")
@Transactional
public class BookServiceImpl implements BookService {
	// 声明DAO属性并注入
	@Autowired
	private BookDao bookDao;
	// 图书列表
	public Page<Book> findBookList(Integer page, Integer rows, 
			String bookName,  String bookResource,String bookWriter) {
		// 创建图书对象
		Book book = new Book();
		// 判断图书名称
		if(StringUtils.isNotBlank(bookName)){
			book.setBook_name(bookName);
		}
		// 判断图书信息来源
		if(StringUtils.isNotBlank(bookResource)){
			book.setBook_resource(bookResource);
		}
		// 判断图书作者
		if(StringUtils.isNotBlank(bookWriter)){
			book.setBook_writer(bookWriter);
		}
		// 当前页
		book.setStart((page-1) * rows) ;
		// 每页数
		book.setRows(rows);
		// 查询图书列表
		List<Book> books = 
                            bookDao.selectBookList(book);
		// 查询图书列表总记录数
		Integer count = bookDao.selectBookListCount(book);
		// 创建Page返回对象
		Page<Book> result = new Page<>();
		result.setPage(page);
		result.setRows(books);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * 创建图书
	 */
	@Override
	public int createBook(Book book) {
	    return bookDao.createBook(book);
	}
	/**
	 * 通过id查询图书
	 */
	@Override
	public Book getBookById(Integer id) {	
	    Book book = bookDao.getBookById(id);
	    return book;		
	}
	/**
	 * 更新图书
	 */
	@Override
	public int updateBook(Book book) {
	    return bookDao.updateBook(book);
	}
	/**
	 * 删除图书
	 */
	@Override
	public int deleteBook(Integer id) {
	    return bookDao.deleteBook(id);	
	}

	
}
