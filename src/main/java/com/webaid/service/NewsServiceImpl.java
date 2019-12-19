package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.NewsVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.NewsDao;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao dao;

	@Override
	public List<NewsVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public NewsVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public NewsVO selectBefore(int no) {
		return dao.selectBefore(no);
	}

	@Override
	public NewsVO selectAfter(int no) {
		return dao.selectAfter(no);
	}

	@Override
	public List<NewsVO> selectTopNews(String use_state) {
		return dao.selectTopNews(use_state);
	}

	@Override
	public void insert(NewsVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(NewsVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateUseState(NewsVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<NewsVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}
	
	@Override
	public List<NewsVO> listSearchAll(SearchCriteria cri) throws Exception {
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
