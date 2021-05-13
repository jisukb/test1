package com.pms.petopia.service;

import com.pms.petopia.domain.Member;

public interface MemberService {

  int add(Member member) throws Exception;

  Member get(int no) throws Exception;

  Member get(String id, String password) throws Exception;

  int update(Member member) throws Exception;

  int delete(int no) throws Exception;

}







