<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>API Demo: Request Message API - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<a id="custom-login-btn" href="javascript:loginWithKakao()">
    <img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
</a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('612a87bb0cf67fdc626376d0928d101b');
    // 친구 조회 및 메시지 전송을 위해서 friends, talk_message에 대한 동의를 받습니다.
    function loginWithKakao() {
      Kakao.Auth.login({
        scope: 'friends,talk_message',
        success: function() {
          // 로그인 성공시, 친구 조회 API를 호출합니다. (앱에 가입한 친구만 대상이 됩니다.)
          Kakao.API.request({
            url: '/v1/friends',
            success: function(res) {
              // 친구 중에 첫 번째 친구에게 메시지를 보냅니다. API 호출 시 메시지가 전송됨으로 테스트 시 주의해주세요.
              Kakao.API.request({
                url: '/v2/api/talk/message/send',
                data: {
                  template_id: 17359,
                  receiver_id: res.elements[0].id
                },
                success: function(res) {
                  alert('메시지 전송이 완료되었습니다.');
                }
              });
            }
          });
        }
      });
    }
  //]]>
</script>

</body>
</html>