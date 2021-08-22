package net.codejava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class diarytextService {
	@Autowired
	private diarytextRepository repo1;
	
	public List<diarytext> listAll(){
		return repo1.findAll();
		}
	
	public void save(diarytext dtext) {
		repo1.save(dtext);
	}
	
	public diarytext get(Long id) {
		return repo1.findById(id).get();
	}
	
	public void delete(Long id) {
		repo1.deleteById(id);
	}
}
