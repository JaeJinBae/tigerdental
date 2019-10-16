package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.CautionVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;
import com.webaid.persistence.CautionDao;

@Service
public class CautionServiceImpl implements CautionService {

	@Autowired
	private CautionDao dao;

	@Override
	public List<CautionVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public CautionVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public CautionVO selectBefore(int no) {
		return dao.selectBefore(no);
	}

	@Override
	public CautionVO selectAfter(int no) {
		return dao.selectAfter(no);
	}

	@Override
	public void insert(CautionVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(CautionVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateThumb(CautionVO vo) {
		dao.updateThumb(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateUseState(CautionVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<CautionVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<CautionVO> listSearch12(SearchCriteria12 cri) throws Exception {
		return dao.listSearch12(cri);
	}

	@Override
	public List<CautionVO> listSearchAll(SearchCriteria cri) throws Exception {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchCount12(SearchCriteria12 cri) throws Exception {
		return dao.listSearchCount12(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return dao.listSearchCountAll(cri);
	}

}
