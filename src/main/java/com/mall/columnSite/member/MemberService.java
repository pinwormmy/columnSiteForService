package com.mall.columnSite.member;

public interface MemberService {

    MemberDTO submitLogin(MemberDTO member) throws Exception;

    void submitSignUp(MemberDTO member) throws Exception;
}
