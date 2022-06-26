package com.study.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.study.utility.Utility;


//데이터를 리턴하고 싶을때 원래 responsebody를 썼는데, restcontroller를 쓰면 없어도 객체 형태로 리턴된다.
@RestController
public class ReviewController {
  private static final Logger log = LoggerFactory.getLogger(ReviewController.class);
    
  @Autowired
  @Qualifier("com.study.review.ReviewServiceImpl")
  private ReviewService service;
  
  @GetMapping("/review/list/{contentsno}/{sno}/{eno}")
  public ResponseEntity<List<ReviewDTO>> getList( //responseEntity는 responseBody랑 똑같음. // 둘의 차이: entity는 httpstatus를 통해 성공여부를 확인할 수 있음
      @PathVariable("contentsno") int contentsno,
      @PathVariable("sno") int sno,
      @PathVariable("eno") int eno
      ) {
    Map map = new HashMap();
    map.put("contentsno", contentsno);
    map.put("sno", sno);
    map.put("eno", eno);
    
    
    
    return new ResponseEntity<List<ReviewDTO>>(service.list(map), HttpStatus.OK);
    //service하고 mapper타입은 서로 다름. mapper은 마이바티스랑 연동되는 것. 
    //service는 서버랑 연동되는 것 dao와 controller의 중간자 역할을 하는 것.
  }
  
  @GetMapping("/review/page")
  public ResponseEntity<String> getPage(int nPage, int contentsno ) {
 
    int total = service.total(contentsno);
    String url = "./"+contentsno;
 
    int recordPerPage = 3; // 한페이지당 출력할 레코드 갯수
 
    String paging = Utility.rpaging(total, recordPerPage, url, nPage);
 
    return new ResponseEntity<>(paging, HttpStatus.OK);
 
  }
  
  @PostMapping("/review/create")
  public ResponseEntity<String> create(@RequestBody ReviewDTO vo) {
 
    log.info("ReviewDTO1: contents " + vo.getContent());
    log.info("ReviewDTO1: id " + vo.getId());
    log.info("ReviewDTO1: contentsno " + vo.getContentsno());
 
    vo.setContent(vo.getContent().replaceAll("/n/r", "<br>"));
 
    int flag = service.create(vo);
 
    log.info("Review INSERT flag: " + flag);
 
    return flag == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
        : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
  }
 
  @GetMapping("/review/{rnum}")
  public ResponseEntity<ReviewDTO> get(@PathVariable("rnum") int rnum) {
 
    log.info("get: " + rnum);
 
    return new ResponseEntity<>(service.read(rnum), HttpStatus.OK);
  }
  
  @PutMapping("/review/")
  public ResponseEntity<String> modify(@RequestBody ReviewDTO vo) {
 
    log.info("modify: " + vo);
 
    return service.update(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
        : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
 
  }
 
  @DeleteMapping("/review/{rnum}")
  public ResponseEntity<String> remove(@PathVariable("rnum") int rnum) {
 
    log.info("remove: " + rnum);
 
    return service.delete(rnum) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
        : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
 
  }
}
