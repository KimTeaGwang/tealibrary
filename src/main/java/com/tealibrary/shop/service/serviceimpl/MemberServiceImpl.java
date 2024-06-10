package com.tealibrary.shop.service.serviceimpl;

import com.tealibrary.shop.dao.MemberDao;
import com.tealibrary.shop.dto.MemberDto;
import com.tealibrary.shop.dto.MemberRentDto;
import com.tealibrary.shop.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    MemberDao memberDao;
    
    @Override public int selectcustno() throws Exception {
        return memberDao.selectcustno();
    }

    @Override
    public int memberjoin(MemberDto memberDto) throws Exception {
        return memberDao.memberjoin(memberDto);
    }

    @Override
    public List<MemberDto> memberList() throws Exception {
        return memberDao.memberList();
    }

    @Override
    public MemberDto memberInfo(Integer custNo) throws Exception {
        return memberDao.memberInfo(custNo);
    }

    @Override
    public int modify(MemberDto memberDto) throws Exception {
        return memberDao.modify(memberDto);
    }

    @Override
    public List<MemberRentDto> rentList() throws Exception {
        return memberDao.rentList();
    }

    @Override
    public List<MemberDto> rentMoney() throws Exception {
        return memberDao.rentMoney();
    }
}
