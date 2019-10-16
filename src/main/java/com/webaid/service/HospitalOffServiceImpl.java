package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.HospitalOffVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.HospitalOffDao;

@Service
public class HospitalOffServiceImpl implements HospitalOffService {

	@Autowired
	private HospitalOffDao dao;
	
	@Override
	public HospitalOffVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public List<HospitalOffVO> listSearch(SearchCriteria cri) {
		return dao.listSearch(cri);
	}

	@Override
	public List<HospitalOffVO> listSearchAll(SearchCriteria cri) {
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

	@Override
	public void insert(HospitalOffVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(HospitalOffVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateUseState(HospitalOffVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

}
