package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.ClinicResListVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class ClinicResListDaoImpl implements ClinicResListDao {

	private static final String namespace = "com.webaid.mappers.ClinicResListMapper";

	@Autowired
	private SqlSession session;

	@Override
	public ClinicResListVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public void insert(ClinicResListVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(ClinicResListVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<ClinicResListVO> listSearchAll(SearchCriteria cri) {
		return session.selectList(namespace + ".listSearchAll", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) {
		return session.selectOne(namespace + ".listSearchCountAll", cri);
	}

}
