package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.RealStoryVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria8;
import com.webaid.persistence.RealStoryDao;

@Service
public class RealStoryServiceImpl implements RealStoryService {

	@Autowired
	private RealStoryDao dao;

	@Override
	public List<RealStoryVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public RealStoryVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public RealStoryVO selectBefore(int no) {
		return dao.selectBefore(no);
	}

	@Override
	public RealStoryVO selectAfter(int no) {
		return dao.selectAfter(no);
	}

	@Override
	public void insert(RealStoryVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(RealStoryVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateThumb(RealStoryVO vo) {
		dao.updateThumb(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateUseState(RealStoryVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<RealStoryVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<RealStoryVO> listSearch8(SearchCriteria8 cri) throws Exception {
		return dao.listSearch8(cri);
	}

	@Override
	public List<RealStoryVO> listSearchAll(SearchCriteria cri) throws Exception {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchCount8(SearchCriteria8 cri) throws Exception {
		return dao.listSearchCount8(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return dao.listSearchCountAll(cri);
	}

}
