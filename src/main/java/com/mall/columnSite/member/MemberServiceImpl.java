package com.mall.columnSite.member;

import com.mall.columnSite.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    MemberMapper memberMapper;

    @Override
    public MemberDTO submitLogin(MemberDTO member) throws Exception {
        return memberMapper.submitLogin(member);
    }

    @Override
    public void submitSignUp(MemberDTO member) throws Exception {
        memberMapper.submitSignUp(member);
    }
}
