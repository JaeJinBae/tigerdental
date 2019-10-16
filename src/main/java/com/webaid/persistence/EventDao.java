package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.EventVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;

public interface EventDao {
	public List<EventVO> selectAll();
	public EventVO selectOne(int no);
	public void insert(EventVO vo);
	public void update(EventVO vo);
	public void updateThumb(EventVO vo);
	public void updateCnt(int no);
	public void updateUseState(EventVO vo);
	public void delete(int no);
	public List<EventVO> listSearch(SearchCriteria cri) throws Exception;
	public List<EventVO> listSearch12(SearchCriteria12 cri) throws Exception;
	public List<EventVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCount12(SearchCriteria12 cri) throws Exception;
	public int listSearchCountAll(SearchCriteria cri) throws Exception;
}
