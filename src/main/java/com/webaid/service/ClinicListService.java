package com.webaid.service;

import java.util.List;

import com.webaid.domain.ClinicListVO;
import com.webaid.domain.SearchCriteria;

public interface ClinicListService {
	public ClinicListVO selectOne(int no);
	public void insert(ClinicListVO vo);
	public void update(ClinicListVO vo);
	public void delete(int no);
	public List<ClinicListVO> listSearch(SearchCriteria cri);
	public List<ClinicListVO> listSearchAll(SearchCriteria cri);
	public int listSearchCount(SearchCriteria cri);
	public int listSearchCountAll(SearchCriteria cri);
}
