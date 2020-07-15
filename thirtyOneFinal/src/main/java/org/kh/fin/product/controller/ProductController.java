package org.kh.fin.product.controller;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kh.fin.order.domain.OrderDetail;
import org.kh.fin.product.domain.Product;
import org.kh.fin.product.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;


@Controller
public class ProductController {

	@Autowired ProductService pService;
	//낚시용품 메인화면으로 이동
	@RequestMapping("productMain.do")
	public String productMain() {
		return "product/productMain";
	}

	
	//상품 등록 페이지
	@RequestMapping("insertShowProduct.do")
	public String insertShowProduct() {
		return "product/insertProduct";
	}
	//상품 등록한걸 저장하기위한 메소드
	@RequestMapping(value="insertProduct.do" ,method=RequestMethod.POST)
	public String insertProduct(Product product, @RequestParam(value="uploadFile", 
	required=false)MultipartFile uploadFile, HttpServletRequest request){


		if(!uploadFile.getOriginalFilename().equals("")) {
			String filePath = saveFile(uploadFile,request);
			if(filePath !=null) {
				product.setProductMainName(uploadFile.getOriginalFilename());
			product.setProductMainPath(filePath);
		
			}
		}
		
		//데이터를 디비에 저장하는 작업
		int result = 0;
		String path = null;

		result = pService.insertProduct(product, uploadFile, request);
		if(result>0) {
			return "product/insertProduct";
		}else {
			return "실패페이지로";
		}
	}
	
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root+"\\img\\productImg";
		// 저장 폴더 선택
		File folder = new File(savePath);
		
		//만약 폴더가 없을 경우 자동 생성
		if(!folder.exists()) {
			folder.mkdir();
		}
		
		String filePath = folder+"\\"+file.getOriginalFilename();
	
		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return filePath;
		
	}

	//등록된 상품보여주기 관리자만
	@RequestMapping("listAdminProduct.do")
	public ModelAndView modifyListProduct(ModelAndView mv) {
		ArrayList<Product> list = pService.productSelectList();
		if(!list.isEmpty()) {
		
			mv.addObject("list",list);
			mv.setViewName("product/showAdminProduct");
		}else {
			mv.addObject("실패");
			mv.setViewName("조짐스키");
			
		}
		return mv;
	}
	//카테고리선택 낚시대
	@RequestMapping("fishingRod.do")
	public ModelAndView fishingRodList(ModelAndView mv) {
		ArrayList<Product> list = pService.rodProductSelectList();

		
		if(!list.isEmpty()) {
			mv.addObject("list",list);

			mv.setViewName("product/showRodProduct");
		}else {
			mv.addObject("실패");
			mv.setViewName("조짐스키");
			
		}
		return mv;
	}
	@RequestMapping("fishingReel.do")
	public ModelAndView fishingReelList(ModelAndView mv) {
		ArrayList<Product> list = pService.reelProductSelectList();
		if(!list.isEmpty()) {
		
			mv.addObject("list",list);
			mv.setViewName("product/showReelProduct");
		}else {
			mv.addObject("실패");
			mv.setViewName("조짐스키");
			
		}
		return mv;
	}
	
	//미끼
	@RequestMapping("fishingBait.do")
	public ModelAndView fishingBaitList(ModelAndView mv) {
		ArrayList<Product> list = pService.baitProductSelectList();
		if(!list.isEmpty()) {
		
			mv.addObject("list",list);
			mv.setViewName("product/showBaitProduct");
		}else {
			mv.addObject("실패");
			mv.setViewName("조짐스키");
			
		}
		return mv;
	}
	//줄
	@RequestMapping("fishingLine.do")
	public ModelAndView fishingLineList(ModelAndView mv) {
		ArrayList<Product> list = pService.lineProductSelectList();
		if(!list.isEmpty()) {
		
			mv.addObject("list",list);
			mv.setViewName("product/showLineProduct");
		}else {
			mv.addObject("실패");
			mv.setViewName("조짐스키");
			
		}
		return mv;
	}
	//가방
	@RequestMapping("fishingBag.do")
	public ModelAndView fishingBagList(ModelAndView mv) {
		ArrayList<Product> list = pService.bagProductSelectList();
		if(!list.isEmpty()) {
		
			mv.addObject("list",list);
			mv.setViewName("product/showBagProduct");
		}else {
			mv.addObject("실패");
			mv.setViewName("조짐스키");
			
		}
		return mv;
	}
	@RequestMapping("ProductDetailView.do")
	public String productDetailView(int pNum, Model model) {
		
		Product product = pService.productSelectOne(pNum);
		if(product !=null) {
			model.addAttribute("p",product);
			return "product/selectDetailProduct";
		}else {
			return "에러페이지로";
		}
	
	}
	
	
	
	//주문버튼누르면 저장해주는 메소드
	@RequestMapping(value="buyInfoProduct.do", method=RequestMethod.POST)
	public String buyAndCartProduct(Product product) {
		System.out.println(product);
		return "product/buyAndCartProduct";
	}
	
		
	/*//등록된 상품보여주기 관리자만
	@RequestMapping("showAdinProduct.do")
	public ModelAndView showAdinProduct() {
		return null;
	}
	//등록된 상품 수정하기
	@RequestMapping("modifyProduct.do")
	public String modifyProduct() {
		return null;
	}
	//상품 삭제하기
	@RequestMapping("deleteProduct.do")
	public String deleteProduct() {
		return null;
	}
	
	
	*/
	
	
	
}
