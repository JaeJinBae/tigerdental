package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.EventVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;
import com.webaid.persistence.EventDao;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDao dao;

	@Override
	public List<EventVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public EventVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void insert(EventVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(EventVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateThumb(EventVO vo) {
		dao.updateThumb(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateUseState(EventVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<EventVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<EventVO> listSearch12(SearchCriteria12 cri) throws Exception {
		return dao.listSearch12(cri);
	}

	@Override
	public List<EventVO> listSearchAll(SearchCriteria cri) throws Exception {
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
