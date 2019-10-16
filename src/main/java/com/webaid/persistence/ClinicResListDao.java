package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.ClinicResListVO;
import com.webaid.domain.SearchCriteria;

public interface ClinicResListDao {
	public ClinicResListVO selectOne(int no);
	public void insert(ClinicResListVO vo);
	public void update(ClinicResListVO vo);
	public void delete(int no);
	public List<ClinicResListVO> listSearchAll(SearchCriteria cri);
	public int listSearchCountAll(SearchCriteria cri);
}
