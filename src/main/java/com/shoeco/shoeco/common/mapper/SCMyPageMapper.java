package com.shoeco.shoeco.common.mapper;

import java.util.HashMap;
import java.util.List;

import com.shoeco.shoeco.common.domain.SCMyPageVO;
import com.shoeco.shoeco.common.paging.CartPagingDTO;

public interface SCMyPageMapper {
	
	
    // 회원의 문의내역 조회(페이징 추가)
    public List<SCMyPageVO> selectQuestionList(CartPagingDTO cartPagingDTO);
    
    // 회원의 문의내역 갯수 조회
    public int selectRowTotal();
    
    // 문의 등록
    public int insertQuestion(HashMap<String, Object> questionMap);
    
    // 문의내용 수정
    public int updatecontent(HashMap<String, Object> modifyMap);
    
    // 회원의 리뷰내역 조회
    public List<SCMyPageVO> selectReview(CartPagingDTO cartPagingDTO);
    
    // 회원의 리뷰 총 갯수 조회
    public int selectRevTotal();
    
}
