package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.HospitalOffVO;
import com.webaid.domain.SearchCriteria;

public interface HospitalOffDao {
	public HospitalOffVO selectOne(int no);
	public List<HospitalOffVO> listSearch(SearchCriteria cri);
	public List<HospitalOffVO> listSearchAll(SearchCriteria cri);
	public int listSearchCount(SearchCriteria cri);
	public int listSearchCountAll(SearchCriteria cri);
	public void insert(HospitalOffVO vo);
	public void update(HospitalOffVO vo);
	public void updateUseState(HospitalOffVO vo);
	public void delete(int no);
}
