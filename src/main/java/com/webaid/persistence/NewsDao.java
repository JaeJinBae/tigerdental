package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.NewsVO;
import com.webaid.domain.SearchCriteria;

public interface NewsDao {
	public List<NewsVO> selectAll();
	public NewsVO selectOne(int no);
	public NewsVO selectBefore(int no);
	public NewsVO selectAfter(int no);
	public List<NewsVO> selectTopNews(String use_state);
	public void insert(NewsVO vo);
	public void update(NewsVO vo);
	public void updateCnt(int no);
	public void updateUseState(NewsVO vo);
	public void delete(int no);
	public List<NewsVO> listSearch(SearchCriteria cri) throws Exception;
	public List<NewsVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCountAll(SearchCriteria cri) throws Exception;
}
