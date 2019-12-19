package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.NewsVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class NewsDaoImpl implements NewsDao {

	private static final String namespace = "com.webaid.mappers.NewsMapper";

	@Autowired
	private SqlSession session;

	@Override
	public List<NewsVO> selectAll() {
		return session.selectList(namespace + ".selectAll");
	}

	@Override
	public NewsVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public NewsVO selectBefore(int no) {
		return session.selectOne(namespace + ".selectBefore", no);
	}

	@Override
	public NewsVO selectAfter(int no) {
		return session.selectOne(namespace + ".selectAfter", no);
	}

	@Override
	public List<NewsVO> selectTopNews(String use_state) {
		return session.selectList(namespace + ".selectTopNews", use_state);
	}

	@Override
	public void insert(NewsVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(NewsVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void updateCnt(int no) {
		session.update(namespace + ".updateCnt", no);
	}

	@Override
	public void updateUseState(NewsVO vo) {
		session.update(namespace + ".updateUseState", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<NewsVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}
	
	@Override
	public List<NewsVO> listSearchAll(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearchAll", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCountAll", cri);
	}

}
