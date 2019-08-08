package com.demo.stc.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.stc.dao.SectorDao;
import com.demo.stc.model.Sector;

public class SectorServiceImpl implements SectorService {

	private SectorDao sectorDao;
	public Sector Insert(Sector sector) throws ClassNotFoundException, SQLException {
		return sectorDao.Insert(sector) ;
	}

	public List<Sector> GetAllSector() throws ClassNotFoundException, SQLException {
		return sectorDao.GetAllSector();
	}

}
