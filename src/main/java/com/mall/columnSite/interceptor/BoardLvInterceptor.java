package com.mall.columnSite.interceptor;

import com.mall.columnSite.member.MemberDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Slf4j
public class BoardLvInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        MemberDTO member = (MemberDTO)session.getAttribute("member");
        if (member == null || member.getMemberLevel() < 2){
            log.debug("해당 접근은 관리자 승인이 필요합니다.");
            response.sendRedirect("/");
            return false;
        }
        return true;
    }
}
