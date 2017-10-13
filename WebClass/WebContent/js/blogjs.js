 $(document).ready(function(){
        $('#loginForm').submit(function (event) {
           // submit되는 것을 막기
           event.preventDefault();
           
           
           //id, pwd 값 가져오기
           var id = $("#id").val();
           var pwd = $("#password").val();
           console.log(id, pwd);
           // 서버로 post 방식 전송 (ajax)
           $.post("http://httpbin.org/post",
                 {id: id, pwd:pwd},
                 function(data) {
                    //서버로부터 응답을 받으면
                    //alert(data.form.id+'님 로그인되었습니다.');
                    var myModal= $('#myModal');
                    myModal.modal();
                    myModal.find('.modal-body').text(data.form.id+'님 로그인되었습니다.');
                 });
        });
        
        $('#signupForm').submit(function (event) {
            // submit되는 것을 막기
            event.preventDefault();
            
            
            //id, pwd 값 가져오기
            var id = $("#id2").val();
            var pwd = $("#password2").val();
            console.log(id, pwd);
            // 서버로 post 방식 전송 (ajax)
            $.post("http://httpbin.org/post",
                  {id: id, pwd:pwd},
                  function(data) {
                     var myModal= $('#myModal2');
                     myModal.modal();
                     myModal.find('.modal-body').text(data.form.id+'님 회원가입되었습니다.');
                  });
         });
     });
     // 간단하게 쓰기
     $(function() {
     
     });