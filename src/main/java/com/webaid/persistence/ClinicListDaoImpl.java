package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.ClinicListVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class ClinicListDaoImpl implements ClinicListDao {

	private static final String namespace = "com.webaid.mappers.ClinicListMapper";

	@Autowired
	private SqlSession session;

	@Override
	public ClinicListVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public void insert(ClinicListVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(ClinicListVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<ClinicListVO> listSearch(SearchCriteria cri) {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public List<ClinicListVO> listSearchAll(SearchCriteria cri) {
		return session.selectList(namespace + ".listSearchAll", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) {
		return session.selectOne(namespace + ".listSearchCountAll", cri);
	}

}
