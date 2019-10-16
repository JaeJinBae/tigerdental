package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.RealStoryVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria8;

public interface RealStoryDao {
	public List<RealStoryVO> selectAll();
	public RealStoryVO selectOne(int no);
	public RealStoryVO selectBefore(int no);
	public RealStoryVO selectAfter(int no);
	public void insert(RealStoryVO vo);
	public void update(RealStoryVO vo);
	public void updateThumb(RealStoryVO vo);
	public void updateCnt(int no);
	public void updateUseState(RealStoryVO vo);
	public void delete(int no);
	public List<RealStoryVO> listSearch(SearchCriteria cri) throws Exception;
	public List<RealStoryVO> listSearch8(SearchCriteria8 cri) throws Exception;
	public List<RealStoryVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCount8(SearchCriteria8 cri) throws Exception;
	public int listSearchCountAll(SearchCriteria cri) throws Exception;
}
