package com.webaid.service;

import java.util.List;

import com.webaid.domain.MailRecordVO;
import com.webaid.domain.SearchCriteria;

public interface MailRecordService {
	public List<MailRecordVO> selectAll();
	public MailRecordVO selectOne(int no);
	public void insert(MailRecordVO vo);
	public void delete(int no);
	public List<MailRecordVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
