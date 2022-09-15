package ch05.service;

import ch05.dao.LaborerDao;
import ch05.dao.LaborerDaoImpl;
import ch05.domain.Laborer;

public class LaborerServiceImpl implements LaborerService {
	private LaborerDao laborerDao;
	
	public LaborerServiceImpl() {
		this.laborerDao = new LaborerDaoImpl();
	}
	
	@Override
	public Laborer getLaborer() {
		return laborerDao.selectLaborer();
	}
}
