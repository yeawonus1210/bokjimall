package com.greedy.t;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.greedy.t.BDAO;
import com.greedy.t.BVO;


public class ReplyFormCmd implements Bcmd {
	@Override
	public void service(Model model) {
		
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String bNo = request.getParameter("bNo");
		
		BDAO bDAO = new BDAO();
		BVO bVO = bDAO.replyForm(bNo);
		
		model.addAttribute("replyForm", bVO);
	}
}
