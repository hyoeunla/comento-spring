package com.comento.project.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.comento.project.board.BoardVO;
import com.comento.project.board.service.BoardService;

@Controller
public class BoardController {
	
	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/ListAll", method = RequestMethod.GET)
	public String listAll(Model model) throws Exception {
		model.addAttribute("list", boardService.listAll());
		return "listAll";
	}
	
	@GetMapping("/Register")
	public String registerView() {
		return "register";
	}
	
	@PostMapping("/Register")
	public String registerAction(BoardVO board) throws Exception {
		boardService.register(board);
		return "redirect:/ListAll";
	}
	
	@RequestMapping(value = "/Read", method = RequestMethod.GET)
	public String read(@RequestParam("no")Integer no, Model model) throws Exception {
		model.addAttribute(boardService.read(no));
		return "read";
	}
	
	@GetMapping("/Modify")
	public String modifyView(Integer no, Model model) throws Exception {
		model.addAttribute(boardService.read(no));
		return "modify";
	}
	
	@PostMapping("/Modify")
	public String modifyAction(BoardVO board) throws Exception {
		boardService.modify(board);
		return "redirect:/ListAll";
	}
	
	@RequestMapping(value = "/Remove", method = RequestMethod.POST)
	public String remove(@RequestParam("no")Integer no) throws Exception {
		boardService.remove(no);
		return "redirect:/ListAll";
	}
}
