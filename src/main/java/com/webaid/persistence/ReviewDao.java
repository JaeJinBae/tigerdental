package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.ReviewVO;
import com.webaid.domain.SearchCriteria;

public interface ReviewDao {
	public List<ReviewVO> selectAll();
	public ReviewVO selectOne(int no);
	public ReviewVO selectBefore(int no);
	public ReviewVO selectAfter(int no);
	public void insert(ReviewVO vo);
	public void update(ReviewVO vo);
	public void updateCnt(int no);
	public void updateUseState(ReviewVO vo);
	public void delete(int no);
	public List<ReviewVO> listSearch(SearchCriteria cri) throws Exception;
	public List<ReviewVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCountAll(SearchCriteria cri) throws Exception;
}
