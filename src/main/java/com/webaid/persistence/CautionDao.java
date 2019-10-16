package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.CautionVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;

public interface CautionDao {
	public List<CautionVO> selectAll();
	public CautionVO selectOne(int no);
	public CautionVO selectBefore(int no);
	public CautionVO selectAfter(int no);
	public void insert(CautionVO vo);
	public void update(CautionVO vo);
	public void updateThumb(CautionVO vo);
	public void updateCnt(int no);
	public void updateUseState(CautionVO vo);
	public void delete(int no);
	public List<CautionVO> listSearch(SearchCriteria cri) throws Exception;
	public List<CautionVO> listSearch12(SearchCriteria12 cri) throws Exception;
	public List<CautionVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCount12(SearchCriteria12 cri) throws Exception;
	public int listSearchCountAll(SearchCriteria cri) throws Exception;
}
