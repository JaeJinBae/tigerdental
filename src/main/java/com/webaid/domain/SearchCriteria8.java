package com.webaid.domain;

public class SearchCriteria8 extends Criteria8 {
	private String searchType;
	private String keyword;
	
	

	public SearchCriteria8() {
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
		return "SearchCriteria8 [searchType=" + searchType + ", keyword=" + keyword + "]";
	}

}
