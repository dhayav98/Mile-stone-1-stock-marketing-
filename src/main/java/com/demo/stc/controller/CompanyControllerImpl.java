package com.demo.stc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.stc.model.Company;
import com.demo.stc.service.CompanyService;
import com.demo.stc.service.CompanyServiceImpl;
@Controller
public class CompanyControllerImpl implements CompanyController {
	@Autowired
	private CompanyService companyService ;

	public Company insertCompanyDetails(Company company) throws SQLException, ClassNotFoundException {
		companyService.insertCompany(company);
		return company;
	}
	@RequestMapping("/adminlandingpage")
	public String adminpage()
	{
		return "admin_landing_page";
	}
	@RequestMapping("/insertcompanypage")
	public String insertcompany()
	{
		return "create_new_company";
	}
	
	@RequestMapping("/insertcompany")
	public Company insert(HttpServletRequest req){
		int companyCode= Integer.parseInt(req.getParameter("company_code"));
		String companyName=req.getParameter("name");
		double turnOver=Double.parseDouble(req.getParameter("turnover"));
		String ceo=req.getParameter("coe_name_board_members");
		String boardOfDirectors=req.getParameter("coe_name_board_members");
		int sectorId=Integer.parseInt(req.getParameter("sector_id"));
		String briefWriteUp=req.getParameter("brief_desc");
		int stockCode=Integer.parseInt(req.getParameter("stock_code"));
		Company company=new Company();
		company.setCompanyCode(companyCode);
		company.setCompanyName(companyName);
		company.setTurnOver(turnOver);
		company.setCeo(ceo);
		company.setBoardOfDirectors(boardOfDirectors);
		company.setSectorId(sectorId);
		company.setBriefWriteUp(briefWriteUp);
		company.setStockCode(stockCode);
		try {
			insertCompanyDetails(company);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return company;
	}

	public Company updateCompany(Company company) {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping("/company")
		public ModelAndView getCompanyList() throws Exception {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("list_company_details");
			mv.addObject("companyList",companyService.getCompanyList());
			return mv;
		
	}
	

	// try
	public static void main(String[] args) {
		CompanyController controller = new CompanyControllerImpl();
		try {
			System.out.println(controller.getCompanyList());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	

}