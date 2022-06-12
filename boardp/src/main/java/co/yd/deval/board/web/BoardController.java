package co.yd.deval.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import co.yd.deval.board.service.BoardService;
import co.yd.deval.board.service.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardDao;

	@GetMapping("/free.do")
	public String free(Model model, BoardVO vo) {
		model.addAttribute("boardList", boardDao.boardSelectList(1));
		model.addAttribute("board", vo);
		return "board/free";
	}

	@GetMapping("/write.do")
	public String write() {
		return "board/write";
	}

	/* 상세페이지 */
	@GetMapping("/boardDetail.do")
	public String boardDetail(Model model, int board_no) {
		return "board/boardDetail";
	}

	@GetMapping("/boardSelect.do")
	public String freeSelect(BoardVO vo, Model model) {
		boardDao.boardHitUp(vo.getBoardNo());
		model.addAttribute("board", boardDao.boardSelect(vo));
		return "board/boardDetail";
	}

	 @PostMapping("/writePost.do")
		public String write(BoardVO vo) {
	    	System.out.println(vo);
	    	vo.setBoardTypeNo(1);
	    	boardDao.boardInsert(vo);
		    return "redirect:free.do";
	    } 
	

	@GetMapping("/boardDelete.do")
	public String boardDelete(BoardVO vo) {
		int i = boardDao.boardDelete(vo);
		if (i != 0) {
			return "redirect:free.do";
		}
		return "redirect:free.do";

	}
	 
	
	@GetMapping("/boardUpdateForm.do")
	public String boardUpdateForm(Model model, BoardVO vo) {
		model.addAttribute("board", boardDao.boardSelect(vo));
		return "board/boardUpdateForm";
	}

 
	
	@PostMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		 boardDao.boardUpdate(vo);
			return "redirect:free.do";
	}
		
}
