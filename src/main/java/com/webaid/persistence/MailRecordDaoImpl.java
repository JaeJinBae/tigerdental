package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.MailRecordVO;
import com.webaid.domain.SearchCriteria;
@Repository
public class MailRecordDaoImpl implements MailRecordDao {
	
	private static final String namespace = "com.webaid.mappers.MailRecordMapper";

	@Autowired
	private SqlSession session;
	
	@Override
	public List<MailRecordVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public MailRecordVO selectOne(int no) {
		return session.selectOne(namespace+".selectOne", no);
	}

	@Override
	public void insert(MailRecordVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void delete(int no) {
		session.delete(namespace+".delete", no);
	}

	@Override
	public List<MailRecordVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

}
