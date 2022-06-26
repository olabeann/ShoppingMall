console.log("*****review Module........");
function getList(param) {
     	 let contentsno  = param.contentsno;
         let sno = param.sno;
         let eno = param.eno;

        return fetch(`/review/list/${contentsno}/${sno}/${eno}` ,{method:'get'}) 
              .then(response => response.json())
              .catch(console.log)
              
              
}

//댓글 목록의 비동기 통신을 요청하는 getlist
//contentsno, sno, eno를 detail에서 다 받아오는 것. (자바스크립트로 선언을 해와서 받아 올 수 있음)
//getlist를 호출한 곳에서 promise를 받을 수 있음.
//promise는 then을 이용해서 받을 수 있음.

 
function getPage(param) { //consumer에서 만든 param 가지고 와서 사용

        return fetch(`/review/page?${param}`,{method : 'get'})
              .then(response => response.text()) //consumer의 paging이 text가 된다.
              .catch(console.log)
 
}

//페이징을 요청하는 getpage

function add(reply) {
        return fetch('/review/create',{
                method: 'post',
                body: JSON.stringify(reply),
                headers: {'Content-Type': "application/json; charset=utf-8"}
                })
                .then(response => response.json())
                .catch(console.log);
}
 
function get(rnum) {
        return fetch(`/review/${rnum}`,{method: 'get'})
               .then(response => response.json())
               .catch(console.log);
}

function update(reply) {
        return fetch(`/review/`,{
                method: 'put',
                body: JSON.stringify(reply),
                headers: {'Content-Type': "application/json; charset=utf-8"}
                })
               .then(response => response.text())
               .catch(console.log);
}
 
function remove(rnum) {
        return fetch(`/review/${rnum}`,{method: 'delete'})
               .then(response => response.text())
               .catch(console.log);
}