<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pifitm_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/My97DatePicker/WdatePicker.js></script>
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/jquery-1.4.2.min.js></script>
  </head>
  
  <body>
    <h3>新增科目表</h3>
      <div><form action="pifitm/edit.html" method="post" id="pifitm">
      <table>
                    <tr>
                     <td>科目号</td>
                      <td><input type="text" name="itm_num" value="${pifitm.itm_num }" readonly="readonly"/></td>   
                      <td>科目名称</td>
                      <td><input type="text" name="itm_nam" value="${pifitm.itm_nam }"/></td>                                        
                    </tr> 
                    <tr>
                      <td>科目类型</td>
                      <td>
                       <select name="itm_typ">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="1" ${pifitm.itm_typ eq "1"?"selected=true":"" }>资产类</option>
                           <option value="2" ${pifitm.itm_typ eq "2"?"selected=true":"" }>负债类</option>
                           <option value="3" ${pifitm.itm_typ eq "3"?"selected=true":"" }>资产负债共同类</option>
                           <option value="4" ${pifitm.itm_typ eq "4"?"selected=true":"" }>所有者权益类</option>
                           <option value="5" ${pifitm.itm_typ eq "5"?"selected=true":"" }>损益类</option>
                           <option value="6" ${pifitm.itm_typ eq "6"?"selected=true":"" }>或有资产或有负债类</option>
                           <option value="9" ${pifitm.itm_typ eq "9"?"selected=true":"" }>表外类</option>
                       </select>
                      </td>  
                      <td>科目性质</td>
                      <td>
                          <select name="itm_atr">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="A" ${pifitm.itm_atr eq "A"?"selected=true":"" }>现金</option>
                           <option value="B" ${pifitm.itm_atr eq "B"?"selected=true":"" }>存款</option>
                           <option value="C" ${pifitm.itm_atr eq "C"?"selected=true":"" }>放款</option>
                           <option value="D" ${pifitm.itm_atr eq "D"?"selected=true":"" }>同业联行</option>
                           <option value="E" ${pifitm.itm_atr eq "E"?"selected=true":"" }>拆借</option>
                           <option value="F" ${pifitm.itm_atr eq "F"?"selected=true":"" }>兑换</option>
                           <option value="G" ${pifitm.itm_atr eq "G"?"selected=true":"" }>应暂收付</option>
                           <option value="H" ${pifitm.itm_atr eq "H"?"selected=true":"" }>或有资产或负债</option>
                           <option value="I" ${pifitm.itm_atr eq "I"?"selected=true":"" }>固定资产</option>
                           <option value="J" ${pifitm.itm_atr eq "J"?"selected=true":"" }>证券</option>
                           <option value="K" ${pifitm.itm_atr eq "K"?"selected=true":"" }>期收付</option>
                       </select>
                      </td>                     
                    </tr>
                    <tr>
                      <td>科目级别</td>
                      <td>
                          <select name="itm_cla">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="1" ${pifitm.itm_cla eq "1"?"selected=true":"" }>一级科目</option>
                           <option value="2" ${pifitm.itm_cla eq "2"?"selected=true":"" }>二级科目</option>
                       </select>
                      </td>                  
                      <td>归属科目</td>
                      <td>
                         <input type="text" name="bel_itm" value="${pifitm.bel_itm }"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>外部科目</td>
                       <td>
                           <input type="text" name="pbc_itm" value="${pifitm.pbc_itm }"/>  
                       </td>  
                      <td>有无子目</td>
                      <td>
                          <select name="sub_flg">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="Y" ${pifitm.sub_flg eq "Y"?"selected=true":"" }>有</option>
                           <option value="N" ${pifitm.sub_flg eq "N"?"selected=true":"" }>无</option>
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>有无细目</td>
                      <td>
                       <select name="dtl_flg">
                          <option selected="selected" value="">--请选择--</option>
                          <option value="Y" ${pifitm.dtl_flg eq "Y"?"selected=true":"" }>有</option>
                          <option value="N" ${pifitm.dtl_flg eq "N"?"selected=true":"" }>无</option>                        
                       </select>                
                      </td>
                      <td>余额方向</td>
                      <td>
                         <select name="bal_dir">
                          <option selected="selected" value="">--请选择--</option>
                          <option value="D" ${pifitm.bal_dir eq "D"?"selected=true":"" }>借方</option>
                          <option value="C" ${pifitm.bal_dir eq "C"?"selected=true":"" }>贷方</option>
                          <option value="A" ${pifitm.bal_dir eq "A"?"selected=true":"" }>借/贷方</option>                         
                       </select>  
                      </td>                      
                    </tr>
                <tr>
                      <td>适用对象</td>
                      <td>
                         <select name="usr_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0" ${pifitm.usr_flg eq "0"?"selected=true":"" }>没有限制</option>
                          <option value="1" ${pifitm.usr_flg eq "1"?"selected=true":"" }>允许支行使用</option>
                          <option value="2" ${pifitm.usr_flg eq "2"?"selected=true":"" }>容许分行一级使用</option>
                          <option value="3" ${pifitm.usr_flg eq "3"?"selected=true":"" }>容许总行一级使用</option>                        
                       </select>
                      </td>
                      <td>输入授权级别</td>
                      <td>
                        <input type="text" name="ery_aut" value="${pifitm.ery_aut }">
                      </td>                     
                    </tr>
                <tr>
                      <td>查询授权级别</td>
                      <td>
                         <input type="text" name="req_aut" value="${pifitm.req_aut }">
                      </td> 
                      <td>销账类别标志</td>
                      <td>
                          <select name="rev_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="N" ${pifitm.rev_flg eq "N"?"selected=true":"" }>非销账类科目</option>
                          <option value="D" ${pifitm.rev_flg eq "D"?"selected=true":"" }>借方销账</option>
                          <option value="C" ${pifitm.rev_flg eq "C"?"selected=true":"" }>贷方销账</option> 
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>销账种类</td>
                      <td>
                         <select name="rev_typ">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0" ${pifitm.rev_typ eq "0"?"selected=true":"" }>全数销账</option>
                          <option value="1" ${pifitm.rev_typ eq "1"?"selected=true":"" }>部分冲销</option> 
                         </select>
                      </td>                     
                    </tr> 
                        <tr>
                      <td>销账期限</td>
                      <td>
                         <input type="text" name="rev_trm" value="${pifitm.rev_trm }">
                      </td>
                      <td>适用统计码</td>
                      <td>
                         <input type="text" name="sta_cde" value="${pifitm.sta_cde }">
                      </td>                      
                    </tr>                    
                    <tr>
                      <td>利率种类</td>
                      <td>
                         <input type="text" name="int_knd" value="${pifitm.int_knd }">
                      </td> 
                      <td>余额红字标志</td>
                      <td>
                          <select name="blr_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0" ${pifitm.blr_flg eq "0"?"selected=true":"" }>不可同向出现红字</option>
                          <option value="1" ${pifitm.blr_flg eq "1"?"selected=true":"" }>可同向出现红字</option> 
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>零余额标志</td>
                      <td>
                          <select name="zbl_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0" ${pifitm.zbl_flg eq "0"?"selected=true":"" }>不可等于0</option>
                          <option value="1" ${pifitm.zbl_flg eq "1"?"selected=true":"" }>可等于0</option> 
                         </select>
                      </td> 
                      <td>核算标志</td>
                      <td>
                          <select name="act_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="N" ${pifitm.act_flg eq "N"?"selected=true":"" }>不设分户及明细，科目核算</option>
                          <option value="D" ${pifitm.act_flg eq "D"?"selected=true":"" }>设科目明细账</option>
                          <option value="A" ${pifitm.act_flg eq "A"?"selected=true":"" }>本级科目下设立分户帐</option> 
                         </select>
                      </td>                    
                    </tr>   
                       <tr>
                      <td>会计输入标志</td>
                      <td>
                          <select name="eny_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="N" ${pifitm.eny_flg eq "N"?"selected=true":"" }>不允许</option>
                          <option value="Y" ${pifitm.eny_flg eq "Y"?"selected=true":"" }>允许</option>
                         </select>
                      </td> 
                      <td>计息标志</td>
                      <td>
                          <select name="int_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifitm.int_flg eq "Y"?"selected=true":"" }>计息科目</option>
                          <option value="N" ${pifitm.int_flg eq "N"?"selected=true":"" }>不计息科目</option>
                         </select>
                      </td>                     
                    </tr> 
                    <tr>
                      <td>计提营业税</td>
                      <td>
                          <select name="tax_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifitm.tax_flg eq "Y"?"selected=true":"" }>计提科目</option>
                          <option value="N" ${pifitm.tax_flg eq "N"?"selected=true":"" }>不计提科目</option> 
                         </select>
                      </td>                     
                    </tr>  
                     <tr>
                      <td>对转科目</td>
                      <td>
                        <input type="text"  name="ops_itm" value="${pifitm.ops_itm }">
                      </td> 
                      <td>利息支出账户科目</td>
                      <td><input type="text" name="int_exp" value="${pifitm.int_exp }"/></td>                    
                    </tr>
                    <tr>
                      <td>利息收入账户科目</td>
                      <td><input type="text" name="int_inc" value="${pifitm.int_inc }"/></td> 
                      <td>应付利息账户科目</td>
                      <td><input type="text" name="int_dac" value="${pifitm.int_dac }"/></td> 
                    </tr>
                    <tr>
                      <td>应收利息账户科目</td>
                      <td><input type="text" name="int_cac" value="${pifitm.int_cac }"/></td> 
                      <td>账户所属总账码</td>
                      <td><input type="text" name="gle_cde" value="${pifitm.gle_cde }"/></td> 
                    </tr>
                    <tr>
                      <td>账户所属损益码</td>
                      <td><input type="text" name="pnl_cde" value="${pifitm.pnl_cde }"/></td> 
                      <td>最后更新日期</td>
                      <td><input type="text" name="upt_dat"  value="<fmt:formatDate pattern="yyyy-MM-dd" value="${pifitm.upt_dat }"/>"  class="Wdate" onClick="WdatePicker()"  readonly="readonly"//></td> 
                    </tr>
                     <tr>
                      <td>更新柜员</td>
                      <td><input type="text" name="upt_tlr" value="${pifitm.upt_tlr }"/>
                          
                      </td> 
                      <td>科目使用状态</td>
                      <td>
                          <select name="itm_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifitm.itm_sts eq "Y"?"selected=true":"" }>使用</option>
                          <option value="N" ${pifitm.itm_sts eq "N"?"selected=true":"" }>当前未使用</option> 
                         </select>
                      </td> 
                    </tr>
                     <tr>                    
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P" ${pifitm.rec_sts eq "P"?"selected=true":"" }>有效</option>
                          <option value="I"  ${pifitm.rec_sts eq "I"?"selected=true":"" }>无效</option> 
                          <option value="D"  ${pifitm.rec_sts eq "D"?"selected=true":"" }>可以删除</option> 
                         </select>
                      </td> 
                    </tr>
                     <tr>
                      <td rowspan="2"><input type="submit" value="提交"/><input type="button" value="返回" onclick="javascript:history.go(-1);"/></td>                     
                    </tr>        
                </table>
          </form>
      </div>
  </body>
</html>
