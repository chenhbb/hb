package com.dao;
import java.util.List;

import com.po.Book;
/**
 * Book接口
 */
public interface BookDao {
    // 图书列表
	public List<Book> selectBookList(Book book);
	// 图书数
	public Integer selectBookListCount(Book book);
	
	// 创建图书
	public int createBook(Book book);
	// 通过id查询图书
	public Book getBookById(Integer id);
	// 更新图书信息
	public int updateBook(Book book);
	// 删除图书
	int deleteBook (Integer id);

}
