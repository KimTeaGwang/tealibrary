package com.tealibrary.shop.dao;

import com.tealibrary.shop.dto.MemberDto;
import com.tealibrary.shop.dto.MemberRentDto;

import java.util.List;

public interface MemberDao {
    int selectcustno() throws Exception;

    int memberjoin(MemberDto memberDto) throws Exception;

    List<MemberDto> memberList() throws Exception;

    MemberDto memberInfo(Integer custNo) throws Exception;

    int modify(MemberDto memberDto) throws Exception;

    List<MemberRentDto> rentList() throws Exception;

    List<MemberDto> rentMoney() throws Exception;
}
