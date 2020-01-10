package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.MailRecordVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.MailRecordDao;

@Service
public class MailRecordServiceImpl implements MailRecordService {
	
	@Autowired
	private MailRecordDao dao;
	
	@Override
	public List<MailRecordVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public MailRecordVO selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void insert(MailRecordVO vo) {
		dao.insert(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<MailRecordVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
