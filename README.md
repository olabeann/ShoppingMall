# Semi-project

**쇼핑몰 웹사이트 제작**

1. **login 페이지**
   - id 찾기 페이지 구현 (비동기 통신을 이용해 이름과 이메일로 id찾기)
   - password 찾기 페이지 구현 (비동기 통신을 이용해 아이디와 이름으로 passwrod 찾기)
2. **community-Mypage : 사진 수정 기능 추가**
3. **관리자 페이지 -> 상품 목록 -> 상품 상세 조회(read) 추가**
4. **product click-> 카테고리 click-> 상품 상세보기 하단에 review 기능 추가**
   * modal을 이용해 등록/수정/삭제 기능 구현 
   * 작성자만 수정/삭제 가능
5. **community -> notice 페이지 생성**
   * 관리자 권한 : 생성, 수정, 삭제
   * 방문자& 회원 권한 : 목록, 조회
6. **상품 상세보기 페이지에 장바구니 기능 추가 및 장바구니 페이지 생성**
2. **상품 상세보기 페이지에 주문 생성 기능 및 주문 목록, 주문 조회 기능 생성**



## Team 1

- 개발기간 : 2022.06.20 - 2022.06.22

  ![Untitled-1](https://user-images.githubusercontent.com/101780699/174955026-3f5c32d2-83e5-47b1-b67e-6e37cd34eeea.jpg)

| 팀장   | 팀원   | 팀원   | 팀원   | 팀원   | 팀원   |
| ------ | ------ | ------ | ------ | ------ | ------ |
| 김범우 | 이학선 | 이청우 | 김나현 | 우형규 | 임다빈 |







## 사용자별 권한 및 역할

- 관리자 : 상품 조회, 공지사항 등록/수정/삭제
- 고객     : 사진 수정, 댓글 등록/수정/삭제
- 공통     : 회원가입, 제품 조회, 공지 조회, 댓글 조회







## 주기능 소개



### 주기능 1) login 페이지

>![로그인1](https://user-images.githubusercontent.com/103403634/175812516-1c28306b-9e00-4f45-b556-6455e757435d.png)

<span style="color: #2D3748; background-color:#fff5b1;">Login 화면 : ① 아이디 찾기 기능 추가 ② 패스워드 찾기 기능 추가</span>



![로그인2_아이디](https://user-images.githubusercontent.com/103403634/175812588-6bb913f7-2294-4270-b6c4-2381b0447d79.png)

<span style="color: #2D3748; background-color:#fff5b1;">① 아이디 찾기 기능 추가  </span>

![로그인2_아이디2](https://user-images.githubusercontent.com/103403634/175812628-5c012b16-5151-4384-aabe-c0863aa7d621.png)

<span style="color: #2D3748; background-color:#fff5b1;">① 아이디 찾기 기능 추가 : 이름과 이메일을 입력하고 **찾기** 버튼 클릭하면 **찾으시는 id는 '~' 입니다.** 문구 출력  </span>

![로그인3_패스워드1](https://user-images.githubusercontent.com/103403634/175812700-8c72fa18-e183-4111-ba30-098cae170403.png)

<span style="color: #2D3748; background-color:#fff5b1;">② 패스워드 찾기 기능 추가</span>

![로그인3_패스워드2](https://user-images.githubusercontent.com/103403634/175812854-8e7caf61-5769-4da5-aca2-f89480ea0d7c.png)



<span style="color: #2D3748; background-color:#fff5b1;">② 패스워드 찾기 기능 추가 : ID와 이름을 입력하고 **찾기** 버튼 클릭하면 **찾으시는 비밀번호는 '~' 입니다.** 문구 출력 </span>



### 주기능 2) community-Mypage : 사진 수정 기능 추가

>![mypage1](https://user-images.githubusercontent.com/103403634/175814928-79a26816-3d3e-48c0-934c-2869f6b69554.png)



<span style="color: #2D3748; background-color:#fff5b1;"> community-Mypage 버튼 click → 나의 정보 수정 페이지 로딩</span>

![mypage2](https://user-images.githubusercontent.com/103403634/175814964-99c3f5e7-1885-4692-8c6f-dae824fc4e4e.png)

<span style="color: #2D3748; background-color:#fff5b1;">**수정**버튼 click시 사진 수정 페이지 로딩</span>



![mypage3](https://user-images.githubusercontent.com/103403634/175814973-76f3d0c7-102b-440f-8285-b6e1f33e4731.png)

<span style="color: #2D3748; background-color:#fff5b1;">**파일 선택**버튼 click시 파일 선택 가능</span>



![mypage4](https://user-images.githubusercontent.com/103403634/175815024-3ca4cc74-7306-4958-af66-50ba33a29026.png)

<span style="color: #2D3748; background-color:#fff5b1;">**변경할 파일(Kakao Talk_20220503_170247845.jpg)**선택 후 **수정**버튼 click</span>



![mypage5](https://user-images.githubusercontent.com/103403634/175815028-05240965-e4f0-4e4a-9e95-18c06dcc82ed.png)

<span style="color: #2D3748; background-color:#fff5b1;">**수정** 버튼 누르면 바로 **나의 정보** 페이지가 나오면서 변경된 사진 확인 가능</span>




### 주기능 3)관리자 페이지 -> 상품 목록 -> 상품 상세 조회(read) 추가

>![상품조회](https://user-images.githubusercontent.com/103403634/175815173-53f339ef-2668-4455-b649-e9e944df40de.png)

 <span style="color: #2D3748; background-color:#fff5b1;"> **관리자**로 로그인 후 **상품 목록** 을 누르고, 상품명 (ex. '멋쟁이 바지!!')  click하면 **상품 상세 정보** 페이지 조회  가능 </span>

>![상품조회2](https://user-images.githubusercontent.com/103403634/175815175-273affce-e73d-4977-b06b-a6b691e5da9a.png)




 <span style="color: #2D3748; background-color:#fff5b1;"> **상품 상세 정보 페이지**</span>





### 주기능 4)  product click-> 

###                카테고리 click-> 상품 상세보기 하단 review 기능 추가

  * modal을 이용해 등록/수정/삭제 기능 구현 
   * 작성자만 수정/삭제 가능



![리뷰1](https://user-images.githubusercontent.com/103403634/175816176-1eac0371-3e65-4aa7-b4b1-ad33f38a28fa.png)

 <span style="color: #2D3748; background-color:#fff5b1;">product click → 상품 click</span>



![리뷰2](https://user-images.githubusercontent.com/103403634/175816180-cbfccc27-7df2-4304-b8a2-7f3e28b54091.png)

 <span style="color: #2D3748; background-color:#fff5b1;">**New Review** 버튼 click</span>

![리뷰3](https://user-images.githubusercontent.com/103403634/175816182-3f08407b-1987-4ce6-9959-8a25c5f494d8.png)

 <span style="color: #2D3748; background-color:#fff5b1;">내용 입력 후**Register** 버튼 click</span>

![리뷰4](https://user-images.githubusercontent.com/103403634/175816186-745e855c-67ad-4477-855e-e1645aef1c77.png)

 <span style="color: #2D3748; background-color:#fff5b1;">Review 리스트에서 **user1(본인)**이 작성한 리뷰 확인 가능</span>

![리뷰5](https://user-images.githubusercontent.com/103403634/175816188-df1130d8-5052-4cb6-9a9e-9662a55cb78e.png)

 <span style="color: #2D3748; background-color:#fff5b1;">**user1(본인)**이 작성한 리뷰의 경우 click시 **Modify(수정), Remove(삭제)** 가능 </span>



![리뷰6](https://user-images.githubusercontent.com/103403634/175816193-b0d36408-c707-46b3-b53b-9adb72ae9af6.png)

 <span style="color: #2D3748; background-color:#fff5b1;">**user2**로 로그인 한 후 user1의 리뷰 click시 **Modify(수정), Remove(삭제)** 버튼 확인 불가</span>



### 주기능 5) community -> notice 페이지 생성    

* 관리자 권한 : 생성, 수정, 삭제
* 방문자& 회원 권한 : 목록, 조회

>![공지사항1](https://user-images.githubusercontent.com/103403634/175816461-38769189-32cf-4684-a87e-b95556b8ebfa.png)

<span style="color: #2D3748; background-color:#fff5b1;"> **community-Notice** click</span>

>![공지사항2](https://user-images.githubusercontent.com/103403634/175816464-7fb0ee6d-dfe9-4ee7-8c2b-f819c81f76d8.png)
>
><span style="color: #2D3748; background-color:#fff5b1;"> **회원 or 방문자**가 공지 사항 페이지 조회시 검색 버튼 우측 **등록** 버튼 비생성</span>
>
>
>
>![공지사항3](https://user-images.githubusercontent.com/103403634/175816465-21ab14a4-7704-4be4-b63d-569646e04b73.png)
>
><span style="color: #2D3748; background-color:#fff5b1;"> **관리자**가 공지 사항 페이지 조회시 검색 버튼 우측 **등록** 버튼 생성</span>
>
>![공지사항4](https://user-images.githubusercontent.com/103403634/175816466-83525efd-2705-45a7-ba4d-6c62b5e0a514.png)

<span style="color: #2D3748; background-color:#fff5b1;"> **관리자**가 공지 사항 페이지 하단에 **등록, 수정, 삭제**목록 버튼 생성</span>

>![공지사항5](https://user-images.githubusercontent.com/103403634/175816662-cad2a8dd-8d25-4443-ae2f-275b45859a05.png)

<span style="color: #2D3748; background-color:#fff5b1;"> **회원 or 방문자**가 공지 사항 목록 조회시 페이지 하단에 **목록** 버튼만 생성되며 **등록, 수정, 삭제**버튼  **비**생성</span>



<h3>기능 6) 상품 상세보기 페이지- 장바구니 기능 &  장바구니 페이지 생성</h3>

![장바구니1](https://user-images.githubusercontent.com/103403634/175817013-c377bab6-7c0d-43f2-8102-8e748ba24b6a.png)

<span style="color: #2D3748; background-color:#fff5b1;">상품 이미지 우측 '설명:' 아래에 **장바구니** 아이콘 click</span>



![장바구니2](https://user-images.githubusercontent.com/103403634/175817017-e9b42f92-fe6a-4dd7-99a1-2c0641b91060.png)

<span style="color: #2D3748; background-color:#fff5b1;">설정해야하는 옵션(현 제품에서는 사이즈)이 선택 되지 않으면 alert창 호출</span>



![장바구니3](https://user-images.githubusercontent.com/103403634/175817018-b879ea76-b641-4ccb-aab4-cc1de237a2f3.png)

<span style="color: #2D3748; background-color:#fff5b1;"> 옵션 선택 후 **장바구니 아이콘** click시 **장바구니에 저장했습니다** alert창 호출</span>



![장바구니4](https://user-images.githubusercontent.com/103403634/175817022-ef02eedc-25f9-470d-b7ad-18bbc539ca24.png)



<span style="color: #2D3748; background-color:#fff5b1;"> 웹페이지 우측 상단에 **cart** 아이콘 click</span>

![장바구니6](https://user-images.githubusercontent.com/103403634/175817024-c5010431-c2d9-4c49-8401-f4db9ba30a02.png)

<span style="color: #2D3748; background-color:#fff5b1;"> **장바구니에 넣어놨던 상품들의 목록 확인**이 가능하며, 상품이 추가/삭제 될 때마다 주문 금액 변경됨</span>



<h3>기능 7) 상품 상세보기 페이지- 주문/결제 페이지 생성</h3>

![주문1](https://user-images.githubusercontent.com/103403634/175817342-c82eb59b-7305-46a2-801b-0a70328e0a72.png)

<span style="color: #2D3748; background-color:#fff5b1;"> 장바구니 아이콘 우측 **하트 가방(주문하기)**버튼 click</span>

![주문2](https://user-images.githubusercontent.com/103403634/175817341-4b4b8c3d-e5c7-4793-b2ae-cce9a086e74f.png)

<span style="color: #2D3748; background-color:#fff5b1;"> **장바구니에 넣어놨던 상품들의 목록 확인**이 가능하며, 상품이 추가/삭제 될 때마다 주문 금액 변경/ **배송 정보, 결제 정보 확인**가능</span>