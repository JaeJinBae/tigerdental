package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.HospitalImgVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class HospitalImgDaoImpl implements HospitalImgDao {

	private static final String namespace = "com.webaid.mappers.HospitalImgMapper";

	@Autowired
	private SqlSession session;
	
	@Override
	public List<HospitalImgVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public HospitalImgVO selectOne(int no) {
		return session.selectOne(namespace+".selectOne", no);
	}
	
	@Override
	public void insert(HospitalImgVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(HospitalImgVO vo) {
		session.update(namespace+".update", vo);
	}

	@Override
	public void updateUpload(HospitalImgVO vo) {
		session.update(namespace+".updateUpload", vo);
	}

	@Override
	public void updateCnt(int no) {
		session.update(namespace+".updateCnt", no);
	}

	@Override
	public void updateUseState(HospitalImgVO vo) {
		session.update(namespace+".updateUseState", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace+".delete", no);
	}

	@Override
	public List<HospitalImgVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public List<HospitalImgVO> listSearchAll(SearchCriteria cri) throws Exception {
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
