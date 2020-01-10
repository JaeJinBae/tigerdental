package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.MailRecordVO;
import com.webaid.domain.SearchCriteria;

public interface MailRecordDao {
	public List<MailRecordVO> selectAll();
	public MailRecordVO selectOne(int no);
	public void insert(MailRecordVO vo);
	public void delete(int no);
	public List<MailRecordVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
