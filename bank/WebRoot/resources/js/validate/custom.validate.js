//
//	jQuery Validate example script
//
//	Prepared by David Cochran
//
//	Free for your use -- No warranties, no guarantees!
//

// Validate
// http://bassistance.de/jquery-plugins/jquery-plugin-validation/
// http://docs.jquery.com/Plugins/Validation/
// http://docs.jquery.com/Plugins/Validation/validate#toptions
$(document).ready(function(){
    /**
     * 自定义中文
     */
    jQuery.validator.addMethod("isChinese",function(value,element){
        return /^[\u2E80-\uFE4F]+$/.test(value);
    },"请输入中英文");
    jQuery.validator.addMethod("isPhone",function(value,element){
        return  (value.trim()==""||/^[0-9]+$/.test(value));
    },"请输入数字");
    jQuery.validator.addMethod("isPwd",function(value,element){
        return /^[a-z0-9A-Z_]{6,15}$/.test(value);
    },"密码只能是6-15位的数字和字母的组合");
    jQuery.validator.addMethod("fullName", function(value, name){
        return  /^[\u4E00-\u9FA5\uF900-\uFA2D\w]+$/.test(value);
    }, "只能包括中文、英文、数字和下划线");
    jQuery.validator.addMethod("isDate",function(value,name){
        //这里只判断短日期 eg: 1986-03-01
        return /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/.test(value);
    },"日期格式不正确！");
    jQuery.validator.addMethod("isPostCode", function(value, name){
        return  ( value.trim()==""|| /^[0-9]{6}$/.test(value));
    }, "请输入正确的邮编");

    /**
     * user register form
     */
    $('#register-form').validate({
        rules: {
            "nickname": {
                required: true,
                isChinese: true,
                rangelength: [2, 8]

            },
            "username": {
                required: true,
                fullName: true,
                rangelength: [4, 16]
                /*remote:{
                 url:'/UserCt/findUserByAccount',
                 type:"post",
                 datatype:"json",
                 data:{
                 account:function(){ return $("#username").val()}
                 }
                 }*/
            },
            'password': {
                required: true,
                isPwd: true
            },
            "repassword": {
                required: true,
                equalTo: "#password"
            },
            "birthday": {
                required: false,
                isDate: true
            },
            "email": {
                required: true,
                email: true,
                maxlength: 100
                /*remote: {
                 url: '/UserCt/findUserByEmail',//检测EMAIL
                 type:"post",
                 dataType: "json",
                 data:{
                 email:function() { return $("#myEmail").val()}
                 }
                 }*/
            },
            "checkcode": {
                required: true,
                isChinese: true
            }
        },
        messages: {
            "username": {
                required: "请输入姓名",
                rangelength: "姓名长度应在2到8个字符之间！"
            },
            "nickname": {
                required: "请输入账号",
                isChinese: "昵称必须是中文",
                remote: "账号已被其他用户注册激活",
                rangelength: "账号长度应在4到16个字符之间！"
            },
            "email": {
                required: "请输入一个Email地址",
                email: "请输入一个有效的Email地址",
                remote: "该邮箱已被其他用户注册激活",
                maxlength: "邮箱最长100个字符"
            },
            "password": {
                required: "请输入密码"
            },
            "repassword": {
                required: "请输入确认密码",
                equalTo: "两次输入密码不一致"
            },
            "checkcode": {
                required: "请输入验证码！",
                isChinese: "验证码是中文噢！"
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        success: function (element) {
            element
                .text('OK!').addClass('valid')
                .closest('.form-group').removeClass('has-error').addClass('has-success');
        }
    });

    /**
     * user update form
     */
    $('#update-form').validate({
        rules: {
            "nickname": {
                required: true,
                isChinese: true,
                rangelength: [2, 8]

            },
            "username": {
                required: true,
                fullName: true,
                rangelength: [4, 16]
                /*remote:{
                 url:'/UserCt/findUserByAccount',
                 type:"post",
                 datatype:"json",
                 data:{
                 account:function(){ return $("#username").val()}
                 }
                 }*/
            },
            'password': {
                required: true,
                isPwd: true
            },
            "repassword": {
                required: true,
                equalTo: "#password"
            },
            "birthday": {
                required: false,
                isDate: true
            },
            "email": {
                required: true,
                email: true,
                maxlength: 100
                /*remote: {
                 url: '/UserCt/findUserByEmail',//检测EMAIL
                 type:"post",
                 dataType: "json",
                 data:{
                 email:function() { return $("#myEmail").val()}
                 }
                 }*/
            },
            "checkcode": {
                required: true,
                isChinese: true
            }
        },
        messages: {
            "username": {
                required: "请输入姓名",
                rangelength: "姓名长度应在2到8个字符之间！"
            },
            "nickname": {
                required: "请输入账号",
                isChinese: "昵称必须是中文",
                remote: "账号已被其他用户注册激活",
                rangelength: "账号长度应在4到16个字符之间！"
            },
            "email": {
                required: "请输入一个Email地址",
                email: "请输入一个有效的Email地址",
                remote: "该邮箱已被其他用户注册激活",
                maxlength: "邮箱最长100个字符"
            },
            "password": {
                required: "请输入密码"
            },
            "repassword": {
                required: "请输入确认密码",
                equalTo: "两次输入密码不一致"
            },
            "checkcode": {
                required: "请输入验证码！",
                isChinese: "验证码是中文噢！"
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        success: function (element) {
            element
                .text('OK!').addClass('valid')
                .closest('.form-group').removeClass('has-error').addClass('has-success');
        }
    });


    //alert(111);
    $("#doSubmit").validate({

        submitHandler :function(form){
            var form_val = $("#doSubmit").serializeArray();
            $.ajax({
                url:'/UserCt/register',
                dataType:'json',
                data:form_val,
                type:'post',
                success:function(data){
                    qicScriptContext.closeWindow("RegisterForm", "注册成功！");
                }

            });
        },
        rules: {
            "userRegisterDto.name": {
                required:true,
                isChinese:true,
                rangelength:[2,10]

            },
            "userRegisterDto.account":{
                required:true,
                fullName:true,
                rangelength:[4,16],
                remote:{
                    url:'/UserCt/findUserByAccount',
                    type:"post",
                    datatype:"json",
                    data:{
                        account:function(){ return $("#username").val()}
                    }
                }
            },
            'userRegisterDto.pwd':{
                required: true,
                isPwd:true
            },
            "userRegisterDto.rePwd":{
                required: true,
                isPwd:true,
                equalTo: "#pwd"
            },
            "userRegisterDto.phone":{
                required: false,
                isPhone:true
            },
            "userRegisterDto.postCode":{
                required: false,
                isPostCode:true
            },
            "userRegisterDto.address":{
                maxlength:150
            },
            "userRegisterDto.idCard":{
                maxlength:100
            },
            "userRegisterDto.email": {
                required: true,
                email: true,
                maxlength: 100,
                remote: {
                    url: '/UserCt/findUserByEmail',//检测EMAIL
                    type:"post",
                    dataType: "json",
                    data:{
                        email:function() { return $("#myEmail").val()}
                    }
                }
            }


        },
        messages:{
            "userRegisterDto.name":{
                required: "请输入姓名",
                rangelength:"姓名长度应在2到10个字符之间！"
            },
            "userRegisterDto.account":{
                required:"请输入账号",
                remote:"账号已被其他用户注册激活",
                rangelength:"账号长度应在4到16个字符之间！"
            },
            "userRegisterDto.email": {
                required: "请输入一个Email地址",
                email: "请输入一个有效的Email地址",
                remote:"该邮箱已被其他用户注册激活",
                maxlength:"邮箱最长100个字符"
            },
            "userRegisterDto.pwd":{
                required:"请输入密码"
            },
            "userRegisterDto.rePwd":{
                required:"请输入确认密码",
                equalTo:"两次输入密码不一致"
            },
            "userRegisterDto.address":{
                maxlength:"地址最长150个字符"
            },
            "userRegisterDto.idCard":{
                maxlength:"身份证最长100个字符"
            }
        },

        //验证成功
        success: function(label) {
            //$(".form_new_user").preventDefault();
            //element.parent().parent().find(".new_user_tips").hide();;
            label.parent().html("OK").removeClass("tips_error").addClass("tips_ok").parent();
        },
        errorPlacement: function(error, element) {
            element.parent().parent().find(".new_user_tips").show();
            //console.log('1.000:', element);
            var targetElement = element.parent().parent().find(".tips_text");
            error.appendTo(targetElement.removeClass("tips_ok").addClass('tips_error').empty());
            //console.log(targetElement)
        }
    });
}); // end document.ready