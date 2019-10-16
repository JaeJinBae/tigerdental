package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.ClinicResListVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.ClinicResListDao;

@Service
public class ClinicResListServiceImpl implements ClinicResListService {

	@Autowired
	private ClinicResListDao dao;
	
	@Override
	public ClinicResListVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void insert(ClinicResListVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(ClinicResListVO vo) {
		dao.update(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<ClinicResListVO> listSearchAll(SearchCriteria cri) {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) {
		return dao.listSearchCountAll(cri);
	}

}
