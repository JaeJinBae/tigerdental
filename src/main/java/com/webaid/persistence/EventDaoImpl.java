package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.EventVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;

@Repository
public class EventDaoImpl implements EventDao {

	private static final String namespace = "com.webaid.mappers.EventMapper";

	@Autowired
	private SqlSession session;

	@Override
	public List<EventVO> selectAll() {
		return session.selectList(namespace + ".selectAll");
	}

	@Override
	public EventVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public void insert(EventVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(EventVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void updateThumb(EventVO vo) {
		session.update(namespace + ".updateThumb", vo);
	}

	@Override
	public void updateCnt(int no) {
		session.update(namespace + ".updateCnt", no);
	}

	@Override
	public void updateUseState(EventVO vo) {
		session.update(namespace + ".updateUseState", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<EventVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public List<EventVO> listSearch12(SearchCriteria12 cri) throws Exception {
		return session.selectList(namespace + ".listSearch12", cri);
	}

	@Override
	public List<EventVO> listSearchAll(SearchCriteria cri) throws Exception {
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
