package cn.guitar.dao;
import java.util.List;
import cn.guitar.entity.Guitar;

public interface GuitarDao {
		
	public List<Guitar> getAll();
	public List<Guitar> search(String model);
	public void addGuitar(Guitar guitar);
	public void delGuitar(int id);

}
