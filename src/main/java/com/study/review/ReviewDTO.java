package com.study.review;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.study.member.MemberDTO;
import com.study.orders.OrdersDTO;

import lombok.Data;

@Data
public class ReviewDTO {
     private int rnum;
     private String content;
     private String regdate;
     private String id;
     private int contentsno;
}
