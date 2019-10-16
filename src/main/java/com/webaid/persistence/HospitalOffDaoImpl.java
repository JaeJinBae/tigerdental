package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.HospitalOffVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class HospitalOffDaoImpl implements HospitalOffDao{

	private static final String namespace = "com.webaid.mappers.HospitalOffMapper";

	@Autowired
	private SqlSession session;
	
	@Override
	public HospitalOffVO selectOne(int no) {
		return session.selectOne(namespace+".selectOne", no);
	}

	@Override
	public List<HospitalOffVO> listSearch(SearchCriteria cri) {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public List<HospitalOffVO> listSearchAll(SearchCriteria cri) {
		return session.selectList(namespace+".listSearchAll", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) {
		return session.selectOne(namespace+".listSearchCountAll", cri);
	}

	@Override
	public void insert(HospitalOffVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(HospitalOffVO vo) {
		session.update(namespace+".update", vo);
	}

	@Override
	public void updateUseState(HospitalOffVO vo) {
		session.update(namespace+".updateUseState", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace+".delete", no);
	}

}
