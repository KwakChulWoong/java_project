
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table class="table table-bordered city" id="Paris" style="display:none;">
        <tbody style="vertical-align: middle;"><tr>
          <th class="text-center" style="width:100px">번호</th>
          <th class="text-center">제목</th>
          <th class="text-center">작성자</th>
          <th class="text-center">날짜</th>
          <th class="text-center" style="width:100px">조회수</th>
        </tr>
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">11</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1121&amp;page=1&amp;criteria=&amp;keyword=">123</a>
          </td><!--제목-->
          <td class="text-center">bb</td><!--작성자-->
          <td class="text-center">2020-05-04</td><!--날짜-->
          <td class="text-center">2<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">12</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1103&amp;page=1&amp;criteria=&amp;keyword=">질문</a>
          </td><!--제목-->
          <td class="text-center">a</td><!--작성자-->
          <td class="text-center">2020-05-09</td><!--날짜-->
          <td class="text-center">4<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">13</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1094&amp;page=1&amp;criteria=&amp;keyword=">댓글2</a>
          </td><!--제목-->
          <td class="text-center">hong</td><!--작성자-->
          <td class="text-center">2020-05-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">14</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1093&amp;page=1&amp;criteria=&amp;keyword=">댓글1</a>
          </td><!--제목-->
          <td class="text-center">hong</td><!--작성자-->
          <td class="text-center">2020-05-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">15</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1091&amp;page=1&amp;criteria=&amp;keyword=">질문</a>
          </td><!--제목-->
          <td class="text-center">a</td><!--작성자-->
          <td class="text-center">2020-05-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">16</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1090&amp;page=1&amp;criteria=&amp;keyword=">질문</a>
          </td><!--제목-->
          <td class="text-center">c</td><!--작성자-->
          <td class="text-center">2020-05-26</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">17</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1089&amp;page=1&amp;criteria=&amp;keyword=">질문</a>
          </td><!--제목-->
          <td class="text-center">b</td><!--작성자-->
          <td class="text-center">2020-05-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">18</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1102&amp;page=1&amp;criteria=&amp;keyword=">Re : 1</a>
          </td><!--제목-->
          <td class="text-center">uuuu</td><!--작성자-->
          <td class="text-center">2020-05-09</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">20</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1087&amp;page=1&amp;criteria=&amp;keyword=">질문2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-05-06</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">21</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1086&amp;page=1&amp;criteria=&amp;keyword=">질문2</a>
          </td><!--제목-->
          <td class="text-center">b</td><!--작성자-->
          <td class="text-center">2020-05-06</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        </tbody>
        </table>
        <div><button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='/review/reviewregister?itemno=${vo.itemno}'">리뷰 작성</button></div>
        <div><button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='/review/questionregister?itemno=${vo.itemno}'">후기 작성</button></div>
        <script src="/resources/dist/js/w3.js"></script>
<%-- =======
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table class="table table-bordered city" id="Paris" style="display:none;">
        <tbody style="vertical-align: middle;"><tr>
          <th class="text-center" style="width:100px">번호</th>
          <th class="text-center">제목</th>
          <th class="text-center">작성자</th>
          <th class="text-center">날짜</th>
          <th class="text-center" style="width:100px">조회수</th>
        </tr>
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1121</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1121&amp;page=1&amp;criteria=&amp;keyword=">123</a>
          </td><!--제목-->
          <td class="text-center">1235435346346</td><!--작성자-->
          <td class="text-center">2020-05-04</td><!--날짜-->
          <td class="text-center">2<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1103</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1103&amp;page=1&amp;criteria=&amp;keyword=">계층형 게시판</a>
          </td><!--제목-->
          <td class="text-center">대우</td><!--작성자-->
          <td class="text-center">2020-03-09</td><!--날짜-->
          <td class="text-center">4<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1094</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1094&amp;page=1&amp;criteria=&amp;keyword=">댓글2</a>
          </td><!--제목-->
          <td class="text-center">hong</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1093</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1093&amp;page=1&amp;criteria=&amp;keyword=">댓글1</a>
          </td><!--제목-->
          <td class="text-center">hong</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1091</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1091&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1090</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1090&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1089</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1089&amp;page=1&amp;criteria=&amp;keyword=">1</a>
          </td><!--제목-->
          <td class="text-center">1</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1102</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1102&amp;page=1&amp;criteria=&amp;keyword=">Re : 1</a>
          </td><!--제목-->
          <td class="text-center">유민재</td><!--작성자-->
          <td class="text-center">2020-03-09</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1087</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1087&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1086</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1086&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        </tbody>
        </table>
        <div><button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='/board/ReviewRegister'">리뷰 작성</button></div>
        <div><button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='/board/QuestionRegister'">후기 작성</button></div>
        <script src="/resources/dist/js/w3.js"></script>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table class="table table-bordered city" id="Paris" style="display:none;">
        <tbody style="vertical-align: middle;"><tr>
          <th class="text-center" style="width:100px">번호</th>
          <th class="text-center">제목</th>
          <th class="text-center">작성자</th>
          <th class="text-center">날짜</th>
          <th class="text-center" style="width:100px">조회수</th>
        </tr>
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1121</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1121&amp;page=1&amp;criteria=&amp;keyword=">123</a>
          </td><!--제목-->
          <td class="text-center">1235435346346</td><!--작성자-->
          <td class="text-center">2020-05-04</td><!--날짜-->
          <td class="text-center">2<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1103</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1103&amp;page=1&amp;criteria=&amp;keyword=">계층형 게시판</a>
          </td><!--제목-->
          <td class="text-center">대우</td><!--작성자-->
          <td class="text-center">2020-03-09</td><!--날짜-->
          <td class="text-center">4<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1094</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1094&amp;page=1&amp;criteria=&amp;keyword=">댓글2</a>
          </td><!--제목-->
          <td class="text-center">hong</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1093</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1093&amp;page=1&amp;criteria=&amp;keyword=">댓글1</a>
          </td><!--제목-->
          <td class="text-center">hong</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1091</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1091&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1090</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1090&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1089</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1089&amp;page=1&amp;criteria=&amp;keyword=">1</a>
          </td><!--제목-->
          <td class="text-center">1</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">1<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1102</td><!--번호-->
          <td>
            
              
                &nbsp;
              
                &nbsp;
              
            
            <a href="qHitUpdate.do?bno=1102&amp;page=1&amp;criteria=&amp;keyword=">Re : 1</a>
          </td><!--제목-->
          <td class="text-center">유민재</td><!--작성자-->
          <td class="text-center">2020-03-09</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1087</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1087&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        <tr><!-- 리스트 목록 보여주기 -->
          <td class="text-center">1086</td><!--번호-->
          <td>
            
            <a href="qHitUpdate.do?bno=1086&amp;page=1&amp;criteria=&amp;keyword=">2</a>
          </td><!--제목-->
          <td class="text-center">2</td><!--작성자-->
          <td class="text-center">2020-02-26</td><!--날짜-->
          <td class="text-center">0<span class="badge badge-pill badge-primary"></span></td>
        </tr>		
        
        </tbody>
        </table>
        <div><button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='/review/reviewregister?itemno=${vo.itemno}'">리뷰 작성</button></div>
        <div><button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='/review/questionregister?itemno=${vo.itemno}'">후기 작성</button></div>
        <script src="/resources/dist/js/w3.js"></script>
>>>>>>> refs/remotes/origin/master
>>>>>>> branch 'master' of https://github.com/KwakChulWoong/java_project.git
</div> --%>