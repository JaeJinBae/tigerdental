package com.webaid.tigerdental;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.webaid.domain.NoticeVO;
import com.webaid.persistence.BeforeAfterDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class NoticeDaoTest {

	@Autowired
	private BeforeAfterDao dao;
	
	@Test
	public void selectAll(){
		dao.selectAll();
	}
	
	//@Test
	public void selectOne(){
		dao.selectOne(1);
	}
	
	//@Test
	public void delete(){
		dao.delete(2);
	}
}
