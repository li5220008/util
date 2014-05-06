/**
 * 全局js
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 14-3-11
 * Time: 上午10:53
 * To change this template use File | Settings | File Templates.
 */

/**
 * 点击改变图片路径
 * @param img
 */
function changeImg(img){
    img.src=img.src+'?'+new Date().getTime()
}

/**
 * 回复评论
 */
function commentReply(){
    $(".comment-reply-link").click(function(){
        var comment = $("#comment-panel");
        var commentC = $(this).closest(".comment-meta");
        commentC.next(".comment-content").after(comment);
        $(".comment-cancel").css("display","block");
        $("#content").focus();
    });
}

function commentQuote(){
    $(".comment-quote").click(function(){
        var commentC = $(this).closest(".comment-meta");
        var commentCent = commentC.next(".comment-content");
        $("#content").val(commentCent.html());
        $("#content").focus();
    });
}

function commentCancel(){
    $(".comment-cancel>a").click(function(){
        $("#comment-point").after($("#comment-panel"));
        $(".comment-cancel").css("display","none");
    });
}

function delConfirm(message,url){
    this.message  = message ? message : "你确定要这样做吗？";
    if(confirm(this.message)){
        return true;
    }else{
        return false;
    }
}