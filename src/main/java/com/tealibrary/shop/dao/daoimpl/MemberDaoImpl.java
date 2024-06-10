package com.tealibrary.shop.dao.daoimpl;

import com.tealibrary.shop.dao.MemberDao;
import com.tealibrary.shop.dto.MemberDto;
import com.tealibrary.shop.dto.MemberRentDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberDaoImpl implements MemberDao {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.tealibrary.shop.dao.MemberMapper.";

    public int selectcustno() {
        return session.selectOne(namespace + "selectcustno");
    }

    @Override
    public int memberjoin(MemberDto memberDto) throws Exception {
        return session.insert(namespace + "memberjoin", memberDto);
    }

    @Override
    public List<MemberDto> memberList() throws Exception {
        return session.selectList(namespace + "memberList");
    }

    @Override
    public MemberDto memberInfo(Integer custNo) {
        return session.selectOne(namespace + "memberInfo", custNo);
    }

    @Override
    public int modify(MemberDto memberDto) throws Exception {
        return session.update(namespace + "modify", memberDto);
    }

    @Override
    public List<MemberRentDto> rentList() throws Exception {
        return session.selectList(namespace + "rentList");
    }

    @Override
    public List<MemberDto> rentMoney() throws Exception {
        return session.selectList(namespace + "rentMoney");
    }
}
