package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.PopupVO;
import com.webaid.domain.SearchCriteria;

public interface PopupDao {
	public List<PopupVO> selectAll();
	public PopupVO selectOne(int no);
	public List<PopupVO> selectByDatePc(String today);
	public List<PopupVO> selectByDateMobile(String today);
	public void insert(PopupVO vo);
	public void update(PopupVO vo);
	public void updateUseState(PopupVO vo);
	public void delete(int no);
	public List<PopupVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
