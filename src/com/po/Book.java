package com.po;
import java.io.Serializable;
import java.util.Date;
/**
 * 客户持久化类
 */
public class Book implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer book_id;          // 图书编号
	private String book_name;         // 图书名称
	private String book_resource;     // 图书来源
	private String book_category;     // 图书类型
	private String book_writer;		  // 图书作者
	private String book_press;        // 图书出版社
	private String book_edition;      // 图书印刷版次
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	

	public Integer getBook_id() {
		return book_id;
	}
	public void setBook_id(Integer book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_resource() {
		return book_resource;
	}
	public void setBook_resource(String book_resource) {
		this.book_resource = book_resource;
	}
	public String getBook_category() {
		return book_category;
	}
	public void setBook_category(String book_category) {
		this.book_category = book_category;
	}
	public String getBook_writer() {
		return book_writer;
	}
	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}
	public String getBook_press() {
		return book_press;
	}
	public void setBook_press(String book_press) {
		this.book_press = book_press;
	}
	public String getBook_edition() {
		return book_edition;
	}
	public void setBook_edition(String book_edition) {
		this.book_edition = book_edition;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}


}
