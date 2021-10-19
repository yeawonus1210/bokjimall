package com.greedy.t;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.greedy.t.BDAO;
import com.greedy.t.BVO;


public class ListCmd implements Bcmd {


	@Override
	public void service(Model model) {
		BDAO dao = new BDAO();
		ArrayList<BVO> bVOs = dao.list();
		model.addAttribute("list", bVOs);
	}

}
