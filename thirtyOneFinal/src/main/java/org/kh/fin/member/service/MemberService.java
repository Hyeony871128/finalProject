package org.kh.fin.member.service;

import org.kh.fin.member.domain.Member;

public interface MemberService {
	
	
		/**
		 * 로그인 유저.!
		 * @param mem
		 * @return loginInfo
		 */
		public Member loginMember(Member mem);
		
		public int checkIdDup(String userId);
		
		
		/**
		 * 회원가입..
		 * @param mem
		 * @return mem
		 */
		public int insertMember(Member mem);
		
		public int updateMember(Member mem);
		
		public int deleteMember(String id);
}
