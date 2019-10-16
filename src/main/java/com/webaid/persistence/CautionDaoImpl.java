package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.CautionVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;

@Repository
public class CautionDaoImpl implements CautionDao {

	private static final String namespace = "com.webaid.mappers.CautionMapper";

	@Autowired
	private SqlSession session;

	@Override
	public List<CautionVO> selectAll() {
		return session.selectList(namespace + ".selectAll");
	}

	@Override
	public CautionVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public CautionVO selectBefore(int no) {
		return session.selectOne(namespace + ".selectBefore", no);
	}

	@Override
	public CautionVO selectAfter(int no) {
		return session.selectOne(namespace + ".selectAfter", no);
	}

	@Override
	public void insert(CautionVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(CautionVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void updateThumb(CautionVO vo) {
		session.update(namespace + ".updateThumb", vo);
	}

	@Override
	public void updateCnt(int no) {
		session.update(namespace + ".updateCnt", no);
	}

	@Override
	public void updateUseState(CautionVO vo) {
		session.update(namespace + ".updateUseState", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<CautionVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public List<CautionVO> listSearch12(SearchCriteria12 cri) throws Exception {
		return session.selectList(namespace + ".listSearch12", cri);
	}

	@Override
	public List<CautionVO> listSearchAll(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearchAll", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int listSearchCount12(SearchCriteria12 cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount12", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCountAll", cri);
	}

}
