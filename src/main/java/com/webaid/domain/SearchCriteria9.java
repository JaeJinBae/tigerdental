package com.webaid.domain;

public class SearchCriteria9 extends Criteria9 {
	private String searchType;
	private String keyword;
	
	

	public SearchCriteria9() {
		super();
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "SearchCriteria9 [searchType=" + searchType + ", keyword=" + keyword + "]";
	}

}
