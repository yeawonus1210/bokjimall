package com.greedy.t;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.greedy.t.BVO;
import com.greedy.t.ContentCmd;
import com.greedy.t.DeleteCmd;
import com.greedy.t.ListCmd;
import com.greedy.t.ModifyCmd;
import com.greedy.t.ReplyCmd;
import com.greedy.t.ReplyFormCmd;
import com.greedy.t.WriteCmd;
import com.greedy.t.Bcmd;


@Controller
@RequestMapping("/*")
public class MainController {

	private Bcmd cmd;
	private MemberDAO memberDAO;

	public MainController() {
		memberDAO = new MemberDAO();
	}

	@RequestMapping("/")
	public void main() {}

	@RequestMapping("main")
	public String MainPage() {
		return "main";
	}

	@GetMapping("homelog")
	public void HomeLogPage() {

	}

	@GetMapping("maina")
	public String maina() {

		return "main/mainpage";
	}

	@PostMapping("/main")
	public String Login(Model model, @RequestParam("userid") String userid, @RequestParam("userpassword") String userpassword) throws Exception {

		String path = "";

		System.out.println(userid);

		System.out.println("여기까진오냐?");

		MemberVO vo = new MemberVO();
		vo.setUserid(userid);
		vo.setUserpassword(userpassword);

		int result = memberDAO.Login(vo.getUserid(), vo.getUserpassword());




		if(result == 1) {
			model.addAttribute("message",vo.getUsername() + "님 WelfareMall 에 오신것을 환영합니다.");
			path = "main/mainpage";
		} else if(result == 0) {

			model.addAttribute("message", "비밀번호가 틀렸습니다.");
			path = "homelog";
		} else {
			model.addAttribute("message", "아이디가 틀렸습니다.");
			path = "homelog";
		}

		return path;
	}

	@PostMapping("join")
	public String JoinPage(Model model, @ModelAttribute("join") MemberVO vo) {

		System.out.println(vo);

		String path = "";

		int result = memberDAO.join(vo);

		if(result == 1) {
			model.addAttribute("message",vo.getUsername() + "님 WelfareMall 에 오신것을 환영합니다.");
			path = "main/mainpage";
		} else {
			model.addAttribute("message","입력이안된값이있습니다.");
			path = "homejoin";
		}




		return path;
	}

	// mypage 수정
	@RequestMapping(value = "main/update_my", method = RequestMethod.POST)
	public String update_mypage(@ModelAttribute("my") MemberVO vo, Model model) throws Exception {
		String path = "";

		int result = memberDAO.update_mypage(vo);


		if(result == 1) {
			System.out.println("업데이트에 성공하였습니다.");
			model.addAttribute("messagee", "이름과 이메일이 수정되었습니다.");
			path = "main/my";

		}
		else {
			model.addAttribute("messagee","없는 아이디 입니다. 다시 입력해주세요");
			path = "main/my";
		}
		return path;
	}


	// 비밀번호 변경
	@RequestMapping(value = "main/update_pw", method = RequestMethod.POST)
	public String update_pw(Model model, @RequestParam("userpassword") String userpassword, @RequestParam("userid") String userid) throws Exception{


		int result = memberDAO.update_pw(userpassword,userid);

		String path = "";

		if(result == 1) {
			System.out.println("업데이트에 성공!!");
			model.addAttribute("messageee", "비밀번호가 변경 되었습니다.");

			path = "main/my";
		} else {
			System.out.println("업데이트실패!!");
			model.addAttribute("messageee", "아이디가 틀립니다. 다시 입력하세요.");
			path = "main/my";
		}


		return path;
	}

	@GetMapping("homejoin")
	public void homejoinPage() {

	}

	@PostMapping("main/mainpage")
	public void mainpage() {

	}


	@GetMapping("main/productlist")
	public void listMain() {

	}

	@GetMapping("main/my")
	public void myMain() {

	}

	
	//게시판
	
	@GetMapping("main/qna")
	public String list(Model model){
		System.out.println("---- list() 호출 -----");

		cmd = new ListCmd();
		cmd.service(model); 

		return "main/qna";
	}

	@GetMapping("main/writeForm")
	public String writeForm(Model model){
		System.out.println("------writeForm() 호출-------");

		return "main/writeForm";
	}


	@RequestMapping("main/writeOk")
	public String writeOk(HttpServletRequest request, Model model){
		System.out.println("------writeOk() 호출-------");

		model.addAttribute("request", request);
		cmd = new WriteCmd();
		cmd.service(model);

		return "redirect:qna";
	}


	@ModelAttribute("BVO")
	public BVO formBacking(){
		return new BVO();
	}

	@RequestMapping("main/replyOk")
	public String replyOk(HttpServletRequest request, Model model){
		System.out.println("------replyOk() 호출-----");

		model.addAttribute("request", request);
		cmd = new ReplyCmd();
		cmd.service(model);

		return "redirect:qna";
	}

	@RequestMapping("main/replyForm")
	public String replyForm(HttpServletRequest request, Model model){
		System.out.println("-----replyForm() 호출-----------");

		model.addAttribute("request", request);
		cmd = new ReplyFormCmd();
		cmd.service(model);		

		return "main/replyForm";
	}

	@RequestMapping("main/delete")
	public String delete(HttpServletRequest request, Model model){
		System.out.println("----delete() 호출-----");

		model.addAttribute("request", request);
		cmd = new DeleteCmd();
		cmd.service(model);

		return "redirect:qna";
	}

	@RequestMapping(value="main/modify", method=RequestMethod.POST)
	public String modify(HttpServletRequest request, Model model){
		System.out.println("----modify() 호출---------");

		model.addAttribute("request", request);
		cmd = new ModifyCmd();
		cmd.service(model);

		return "redirect:qna";
	}

	@RequestMapping("main/contentView")
	public String contentView(HttpServletRequest request, Model model){
		System.out.println("---- contentView() 호출----");

		model.addAttribute("request", request);
		cmd = new ContentCmd();
		cmd.service(model);

		return "main/contentView";
	}

	@GetMapping("main/fruit")
	public void fruit() {

	}

	@GetMapping("main/vegetable")
	public void vegetable() {

	}

	@GetMapping("main/electronics")
	public void electronics() {

	}

	@GetMapping("main/kitchenware")
	public void kitchenware() {

	}


	@PostMapping("joinActionPage")
	public String joinactionpage(Model model, @RequestParam("userid") String userid) {

		MemberVO vo = new MemberVO();
		String path = "";

		vo.setUserid(userid);

		int result = memberDAO.joinAction(userid);
		if(result == 1) {
			model.addAttribute("messageon", "사용중인 아이디 입니다.");
			model.addAttribute("messa",userid);
			path = "homejoin";
		} else {
			model.addAttribute("messageone", "사용가능한 아이디 입니다.");
			model.addAttribute("messa",userid);
			path = "homejoin";
		}


		return path;
	}

	@GetMapping("main/productlist_view")
	public void productlist_view() {

	}

	@RequestMapping("main/deleted")
	public void deleted() {

	}

	@PostMapping("main/deleteAction")
	public String deleteAction(Model model, @RequestParam("userid") String userid) {

		String path = "";

		int result = memberDAO.delete(userid);

		if(result == 1) {
			model.addAttribute("delete","계정이 삭제 되었습니다.");
			path = "homelog";
		} else {
			model.addAttribute("delete", "계정이 삭제가 안되었습니다.");
			path = "main/my";
		}

		return path;
	}

	@GetMapping("main/vege/asparagus_view")
	public void asparagus_view() {

	}
	@GetMapping("main/vege/baechu_view")
	public void baechu_view() {

	}
	@GetMapping("main/vege/broccoli_view")
	public void broccoli_view() {

	}
	@GetMapping("main/vege/carrot_view")
	public void carrot_view() {

	}@GetMapping("main/vege/chiculri_view")
	public void chiculri_view() {

	}@GetMapping("main/vege/chunggyungchae_view")
	public void chunggyungchae_view() {

	}@GetMapping("main/vege/corn_view")
	public void corn_view() {

	}@GetMapping("main/vege/minari_view")
	public void minari_view() {

	}
	//여기서 부터 전자제품
	@GetMapping("main/elec/refrig_view")
	public void refrig_view() {			
	}		
	@GetMapping("main/elec/biskabedcleaner_view")
	public void biskabedcleaner_view() {			
	}	
	@GetMapping("main/elec/watermachine_view")
	public void watermachine_view() {		
	}	
	@GetMapping("main/elec/dysondry_view")
	public void dysondry_view() {			
	}	
	@GetMapping("main/elec/familyherb_view")
	public void familyherb_view() {		
	}	
	@GetMapping("main/elec/philipsespressomachine_view")
	public void philipsespressomachine_view() {			
	}	
	@GetMapping("main/elec/philpssenseIQdry_view")
	public void philpssenseIQdry_view() {			
	}		
	@GetMapping("main/elec/robotmachine_view")
	public void robotmachine_view() {			
	}		
	//여기서 부터 주방 용품		
	@GetMapping("main/kitchen/kitchenscissor_view")
	public void kitchenscissor_view() {			
	}	
	@GetMapping("main/kitchen/kitchenwareset_view")
	public void kitchenwareset_view() {			
	}		
	@GetMapping("main/kitchen/mandootool_view")
	public void mandootool_view() {			
	}		
	@GetMapping("main/kitchen/meatstamper_view")
	public void meatstamper_view() {

	}
	@GetMapping("main/kitchen/corncutter_view")
	public void corncutter_view() {
		
	}
	
	@GetMapping("main/kitchen/fishgoodbye_view")
	public void fishgoodbye_view() {
		
	}
	
	@GetMapping("main/kitchen/icecube_view")
	public void icecube_view() {
		
	}
	
	@GetMapping("main/kitchen/melonknife_view")
	public void melonknife_view() {
		
	}
	@GetMapping("main/fruit/strawberry_view")
	public void strawberry_view() {
		
	}
	
	@GetMapping("main/fruit/shinemucat_view")
	public void shinemucat_view() {
		
	}
	
	@GetMapping("main/fruit/goldkiwi_view")
	public void goldkiwi_view() {
		
	}
	
	@GetMapping("main/fruit/watermelon_view")
	public void watermelon_view() {
		
	}
	
	@GetMapping("main/fruit/peach_view")
	public void peach_view() {
		
	}
	
	@GetMapping("main/fruit/papaya_view")
	public void papaya_view() {
		
	}
	
	@GetMapping("main/fruit/applemango_view")
	public void applemango_view() {
		
	}
	
	@GetMapping("main/fruit/koreanmelon_view")
	public void koreanmelon_view() {
		
	}
}
