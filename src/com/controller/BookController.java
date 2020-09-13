package com.controller;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.po.BaseDict;
import com.po.Book;
import com.po.User;
import com.service.BaseDictService;
import com.service.BookService;
import com.utils.Page;
/**
 * 图书管理控制器类
 */
@Controller
public class BookController {
	// 依赖注入
	@Autowired
	private BookService bookService;
	@Autowired
	private BaseDictService baseDictService;
	// 图书来源
	@Value("${book.from.type}")
	private String FROM_TYPE;
	// 图书类别
	@Value("${book.category.type}")
	private String CATEGORY_TYPE;
	// 图书作者
	@Value("${book.writer.type}")
	private String WRITER_TYPE;
	/**
	 * 图书列表
	 */
	@RequestMapping(value = "/book/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
		@RequestParam(defaultValue="10")Integer rows, String bookName, String bookResource, String bookWriter, Model model) {
		// 条件查询所有图书
		Page<Book> books = bookService.findBookList(page, rows, bookName,bookResource, bookWriter);
		model.addAttribute("page", books);
		// 图书来源
		List<BaseDict> fromType = baseDictService.findBaseDictByTypeCode(FROM_TYPE);
		// 图书所属行业
		List<BaseDict> categoryType = baseDictService.findBaseDictByTypeCode(CATEGORY_TYPE);
		// 图书级别
		List<BaseDict> writerType = baseDictService.findBaseDictByTypeCode(WRITER_TYPE);
		// 添加参数
		model.addAttribute("fromType", fromType);
		model.addAttribute("categoryType", categoryType);
		model.addAttribute("writerType", writerType);
		model.addAttribute("bookName", bookName);
		model.addAttribute("bookResource", bookResource);
		model.addAttribute("bookWriter", bookWriter);
		return "book";
	}
	
	/**
	 * 创建图书
	 */
	@RequestMapping("/book/create.action")
	@ResponseBody
	public String bookCreate(Book book,HttpSession session) {
	    // 获取Session中的当前用户信息
	    User user = (User) session.getAttribute("USER_SESSION");
	    // 创建Date对象
	    Date date = new Date();
	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = bookService.createBook(book);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 通过id获取图书信息
	 */
	@RequestMapping("/book/getBookById.action")
	@ResponseBody
	public Book getBookById(Integer id) {
		Book book = bookService.getBookById(id);
	    return book;
	}
	/**
	 * 更新图书
	 */
	@RequestMapping("/book/update.action")
	@ResponseBody
	public String bookUpdate(Book book) {
	    int rows = bookService.updateBook(book);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 删除图书
	 */
	@RequestMapping("/book/delete.action")
	@ResponseBody
	public String bookDelete(Integer id) {
	    int rows = bookService.deleteBook(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}

}
