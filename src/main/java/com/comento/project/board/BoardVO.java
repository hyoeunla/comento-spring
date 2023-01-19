package com.comento.project.board;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private Integer no;
	private String title;
	private String content;
	private String writer;
	private String password;
	private Date regDate;
	private int hit;
	
}
