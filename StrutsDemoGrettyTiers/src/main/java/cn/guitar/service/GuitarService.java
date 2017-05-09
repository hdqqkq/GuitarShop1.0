package cn.guitar.service;
import java.util.List;
import cn.guitar.dao.GuitarDao;
import cn.guitar.entity.Guitar;

public class GuitarService {
	public GuitarService() {
		super();
	}
	private GuitarDao guitarDao;

	public void setGuitarDao(GuitarDao guitarDao) {
		this.guitarDao = guitarDao;
	}	
	public GuitarService(GuitarDao guitarDao){
		this.guitarDao = guitarDao;
	}
	public List<Guitar> getAll(){
		return guitarDao.getAll();
	}
    public List<Guitar>  search(String model){
    	return guitarDao.search(model);
    }
}
