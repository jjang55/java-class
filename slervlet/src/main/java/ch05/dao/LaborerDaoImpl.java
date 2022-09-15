package ch05.dao;

import ch05.config.Configuration;
import ch05.dao.map.LaborerMap;
import ch05.domain.Laborer;

public class LaborerDaoImpl implements LaborerDao {
	private LaborerMap laborerMap;
	
	public LaborerDaoImpl() {
		this.laborerMap = Configuration.getMapper(LaborerMap.class);
	}
	
	@Override
	public Laborer selectLaborer() {
		return laborerMap.selectLaborer();
	}
}
