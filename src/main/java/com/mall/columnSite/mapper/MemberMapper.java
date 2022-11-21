package com.mall.columnSite.mapper;

import com.mall.columnSite.member.MemberDTO;

public interface MemberMapper {
	
	public MemberDTO submitLogin(MemberDTO member) throws Exception;
    
    public void submitSignUp(MemberDTO member) throws Exception;

}
