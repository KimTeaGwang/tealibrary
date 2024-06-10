package com.tealibrary.shop.controller;

import java.util.List;
import java.util.Locale;

import com.tealibrary.shop.dto.MemberDto;
import com.tealibrary.shop.dto.MemberRentDto;
import com.tealibrary.shop.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@GetMapping("/") // 홈 이동
	public String home(Locale locale, Model model) {
		return "index";
	}
	
	@GetMapping("/register") // 고객등록 페이지 이동
	public String joinForm(Model m) {
		Integer cust_no = 0;
		try {
			cust_no = memberService.selectcustno();
		} catch (Exception e) {
			e.printStackTrace();
		}
		m.addAttribute("cust_no",cust_no);
		return "/member/joinForm";
	}

	@PostMapping("/register") // 고객등록
	public String join(MemberDto memberDto,Model m){
		List<MemberDto> list = null;
		try {
			int result_cnt = memberService.memberjoin(memberDto);
			list = memberService.memberList();
			m.addAttribute("list", list);
			return "redirect:/list";
		} catch (Exception e) {
			e.printStackTrace();
			m.addAttribute("memberDto", memberDto);
			return "/member/joinForm";
		}
	}

	@GetMapping("/list") // 고객 목록 페이지 이동
	public String memberList(Model m) {
		List<MemberDto> list = null;
		try {
			list = memberService.memberList();
			System.out.println("list = " + list);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		m.addAttribute("list", list);
		return "/member/list";
	}

	@GetMapping("/modify") // 고객정보수정 페이지 이동
	public String modifyForm(@RequestParam Integer cust_no, Model m) {
		MemberDto memberDto = null;
		try {
			memberDto = memberService.memberInfo(cust_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		m.addAttribute("memberDto", memberDto);
		return "/member/modifyForm";
	}

	@PostMapping("/modify") // 고객정보 수정
	public String modify(MemberDto memberDto,Model m) {
		MemberDto memberDto1 = null;
		try {
			int result_cnt = memberService.modify(memberDto);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return "redirect:/list"
				;
	}

	@GetMapping("/rentList") // 고객대여리스트 페이지 이동
	public String rentListForm(Model m) {
		List<MemberRentDto> list = null;
		try {
			list = memberService.rentList();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		m.addAttribute("list", list);
		return "/member/rentList";
	}

	@GetMapping("/rentMoney") // 고객대여금액조회 페이지 이동
	public String rentMoneyForm(Model m) {
		List<MemberDto> list = null;
		try {
			list = memberService.rentMoney();
		} catch (Exception e) {
			e.printStackTrace();
		}
		m.addAttribute("list", list);
		return "/member/rentMoney";
	}
	
}
