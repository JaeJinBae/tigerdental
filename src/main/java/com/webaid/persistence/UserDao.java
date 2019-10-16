package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.UserVO;

public interface UserDao {
	public UserVO selectOne(int no);
	public UserVO selectById(String id);
	public UserVO selectByNameEmail(UserVO vo);
	public UserVO selectByIdNameEmail(UserVO vo);
	public void insert(UserVO vo);
	public void update(UserVO vo);
	public void updatePwChangeState(UserVO vo);
	public void updateWithdraw(UserVO vo);
	public void updateLoginCnt(int no);
	public void delete(int no);
	public List<UserVO> listSearchAll(SearchCriteria cri);
	public List<UserVO> listSearchWithdrawAll(SearchCriteria cri);
	public int listSearchCountAll(SearchCriteria cri);
	public int listSearchWithdrawCountAll(SearchCriteria cri);
}
