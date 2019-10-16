package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.ReviewVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class ReviewDaoImpl implements ReviewDao {

	private static final String namespace = "com.webaid.mappers.ReviewMapper";

	@Autowired
	private SqlSession session;
	
	@Override
	public List<ReviewVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public ReviewVO selectOne(int no) {
		return session.selectOne(namespace+".selectOne", no);
	}

	@Override
	public ReviewVO selectBefore(int no) {
		return session.selectOne(namespace+".selectBefore", no);
	}

	@Override
	public ReviewVO selectAfter(int no) {
		return session.selectOne(namespace+".selectAfter", no);
	}

	@Override
	public void insert(ReviewVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(ReviewVO vo) {
		session.update(namespace+".update", vo);
	}

	@Override
	public void updateCnt(int no) {
		session.update(namespace+".updateCnt", no);
	}

	@Override
	public void updateUseState(ReviewVO vo) {
		session.update(namespace+".updateUseState", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace+".delete", no);
	}

	@Override
	public List<ReviewVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public List<ReviewVO> listSearchAll(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearchAll", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCountAll", cri);
	}

}
