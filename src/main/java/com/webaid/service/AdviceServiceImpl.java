package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.AdviceDao;

@Service
public class AdviceServiceImpl implements AdviceService {

	@Autowired
	private AdviceDao dao;

	@Override
	public AdviceVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public List<AdviceVO> selectNonComplete() {
		return dao.selectNonComplete();
	}

	@Override
	public List<AdviceVO> selectNonCompleteQuick() {
		return dao.selectNonCompleteQuick();
	}

	@Override
	public void insert(AdviceVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(AdviceVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateUpload(AdviceVO vo) {
		dao.updateUpload(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<AdviceVO> listSearch(SearchCriteria cri) {
		return dao.listSearch(cri);
	}

	@Override
	public List<AdviceVO> listSearchQuick(SearchCriteria cri) {
		return dao.listSearchQuick(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchQuickCount(SearchCriteria cri) {
		return dao.listSearchQuickCount(cri);
	}

}
