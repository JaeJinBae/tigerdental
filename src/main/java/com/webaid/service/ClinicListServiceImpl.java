package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.ClinicListVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.ClinicListDao;

@Service
public class ClinicListServiceImpl implements ClinicListService {

	@Autowired
	private ClinicListDao dao;
	
	@Override
	public ClinicListVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void insert(ClinicListVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(ClinicListVO vo) {
		dao.update(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<ClinicListVO> listSearch(SearchCriteria cri) {
		return dao.listSearch(cri);
	}

	@Override
	public List<ClinicListVO> listSearchAll(SearchCriteria cri) {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) {
		return dao.listSearchCountAll(cri);
	}

}
