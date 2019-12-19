package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.HospitalImgVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.HospitalImgDao;

@Service
public class HospitalImgServiceImpl implements HospitalImgService {

	@Autowired
	private HospitalImgDao dao;
	
	@Override
	public List<HospitalImgVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public HospitalImgVO selectOne(int no) {
		return dao.selectOne(no);
	}
	
	@Override
	public void insert(HospitalImgVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(HospitalImgVO vo) {
		dao.update(vo);
	}

	@Override
	public void updateUpload(HospitalImgVO vo) {
		dao.updateUpload(vo);
	}

	@Override
	public void updateCnt(int no) {
		dao.updateCnt(no);
	}

	@Override
	public void updateUseState(HospitalImgVO vo) {
		dao.updateUseState(vo);
	}

	@Override
	public void delete(int no) {
		dao.delete(no);
	}

	@Override
	public List<HospitalImgVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<HospitalImgVO> listSearchAll(SearchCriteria cri) throws Exception {
		return dao.listSearchAll(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return dao.listSearchCountAll(cri);
	}

}
