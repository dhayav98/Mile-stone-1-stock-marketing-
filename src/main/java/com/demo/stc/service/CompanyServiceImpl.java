package com.demo.stc.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.stc.dao.CompanyDao;
import com.demo.stc.dao.CompanyDaoImpl;
import com.demo.stc.model.Company;
@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Autowired
	private CompanyDao companyDao;
	
	
	public Company insertCompany(Company company) throws SQLException, ClassNotFoundException {
		companyDao=new CompanyDaoImpl();
		return companyDao.insertCompany(company);
	}

	public Company updateCompany(Company company) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Company> getCompanyList() throws SQLException {
		companyDao=new CompanyDaoImpl();
		List<Company> list=null;
		try {
			 list=companyDao.GetAllCompany();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}