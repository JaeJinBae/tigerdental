package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.BeforeAfterVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria9;
import com.webaid.persistence.BeforeAfterDao;

@Service
public class BeforeAfterServiceImpl implements BeforeAfterService {

	@Autowired
	private BeforeAfterDao dao;

	@Override
	public List<BeforeAfterVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public BeforeAfterVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public List<BeforeAfterVO> selectByType(BeforeAfterVO vo) {
		return dao.selectByType(vo);
	}

	@Override
	public void insert(BeforeAfterVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(BeforeAfterVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateUseState(BeforeAfterVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void updateBeforeImg(BeforeAfterVO vo) {
		dao.updateBeforeImg(vo);
	}

	@Override
	public void updateAfterImg(BeforeAfterVO vo) {
		dao.updateAfterImg(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<BeforeAfterVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<BeforeAfterVO> listSearch9(SearchCriteria9 cri) throws Exception {
		return dao.listSearch9(cri);
	}

	@Override
	public List<BeforeAfterVO> listSearchAll(SearchCriteria cri) throws Exception {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchCount9(SearchCriteria9 cri) throws Exception {
		return dao.listSearchCount9(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return dao.listSearchCountAll(cri);
	}

}
