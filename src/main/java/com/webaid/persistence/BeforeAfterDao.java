package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.BeforeAfterVO;
import com.webaid.domain.SearchCriteria;

public interface BeforeAfterDao {
	public List<BeforeAfterVO> selectAll();
	public BeforeAfterVO selectOne(int no);
	public List<BeforeAfterVO> selectByType(BeforeAfterVO vo);
	public void insert(BeforeAfterVO vo);
	public void update(BeforeAfterVO vo);
	public void updateUseState(BeforeAfterVO vo);
	public void updateBeforeImg(BeforeAfterVO vo);
	public void updateAfterImg(BeforeAfterVO vo);
	public void delete(int no);
	public List<BeforeAfterVO> listSearch(SearchCriteria cri) throws Exception;
	public List<BeforeAfterVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCountAll(SearchCriteria cri) throws Exception;
}
