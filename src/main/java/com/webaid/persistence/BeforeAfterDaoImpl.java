package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.BeforeAfterVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria9;

@Repository
public class BeforeAfterDaoImpl implements BeforeAfterDao {

	private static final String namespace = "com.webaid.mappers.BeforeAfterMapper";

	@Autowired
	private SqlSession session;

	@Override
	public List<BeforeAfterVO> selectAll() {
		return session.selectList(namespace + ".selectAll");
	}

	@Override
	public BeforeAfterVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public List<BeforeAfterVO> selectByType(BeforeAfterVO vo) {
		return session.selectList(namespace + ".selectByType", vo);
	}

	@Override
	public void insert(BeforeAfterVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(BeforeAfterVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void updateUseState(BeforeAfterVO vo) {
		session.update(namespace + ".updateUseState", vo);
	}

	@Override
	public void updateBeforeImg(BeforeAfterVO vo) {
		session.update(namespace + ".updateBeforeImg", vo);
	}

	@Override
	public void updateAfterImg(BeforeAfterVO vo) {
		session.update(namespace + ".updateAfterImg", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<BeforeAfterVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public List<BeforeAfterVO> listSearch9(SearchCriteria9 cri) throws Exception {
		return session.selectList(namespace + ".listSearch9", cri);
	}

	@Override
	public List<BeforeAfterVO> listSearchAll(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearchAll", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int listSearchCount9(SearchCriteria9 cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount9", cri);
	}

	@Override
	public int listSearchCountAll(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCountAll", cri);
	}

}
