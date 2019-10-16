package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class AdviceDaoImpl implements AdviceDao {

	private static final String namespace = "com.webaid.mappers.AdviceMapper";

	@Autowired
	private SqlSession session;

	@Override
	public AdviceVO selectOne(int no) {
		return session.selectOne(namespace + ".selectOne", no);
	}

	@Override
	public List<AdviceVO> selectNonComplete() {
		return session.selectList(namespace + ".selectNonComplete");
	}

	@Override
	public void insert(AdviceVO vo) {
		session.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(AdviceVO vo) {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void updateUpload(AdviceVO vo) {
		session.update(namespace + ".updateUpload", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace + ".delete", no);
	}

	@Override
	public List<AdviceVO> listSearch(SearchCriteria cri) {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public List<AdviceVO> listSearchQuick(SearchCriteria cri) {
		return session.selectList(namespace + ".listSearchQuick", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public int listSearchQuickCount(SearchCriteria cri) {
		return session.selectOne(namespace + ".listSearchQuickCount", cri);

	}

}
