package com.mall.columnSite.member;

import lombok.Data;

@Data
public class MemberDTO {

    private String id;
    private String pw;
    private String name;
    private String phone;
    private String address;
    private String email;
    private int lv;

}
