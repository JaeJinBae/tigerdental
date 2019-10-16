package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.ReviewVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDao dao;
	
	@Override
	public List<ReviewVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public ReviewVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public ReviewVO selectBefore(int no) {
		return dao.selectBefore(no);
	}

	@Override
	public ReviewVO selectAfter(int no) {
		return dao.selectAfter(no);
	}

	@Override
	public void insert(ReviewVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(ReviewVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateUseState(ReviewVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<ReviewVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<ReviewVO> listSearchAll(SearchCriteria cri) throws Exception {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return dao.listSearchCountAll(cri);
	}

}
