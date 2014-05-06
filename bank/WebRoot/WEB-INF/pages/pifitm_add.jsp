<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
      <div><form action="pifitm/add.html" method="post" id="pifitm">
      <table>
                    <tr>
                     <td>科目号</td>
                      <td><input type="text" name="itm_num"/></td>   
                      <td>科目名称</td>
                      <td><input type="text" name="itm_nam"/></td>                                        
                    </tr> 
                    <tr>
                      <td>科目类型</td>
                      <td>
                       <select name="itm_typ">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="1">资产类</option>
                           <option value="2">负债类</option>
                           <option value="3">资产负债共同类</option>
                           <option value="4">所有者权益类</option>
                           <option value="5">损益类</option>
                           <option value="6">或有资产或有负债类</option>
                           <option value="9">表外类</option>
                       </select>
                      </td>  
                      <td>科目性质</td>
                      <td>
                          <select name="itm_atr">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="A">现金</option>
                           <option value="B">存款</option>
                           <option value="C">放款</option>
                           <option value="D">同业联行</option>
                           <option value="E">拆借</option>
                           <option value="F">兑换</option>
                           <option value="G">应暂收付</option>
                           <option value="H">或有资产或负债</option>
                           <option value="I">固定资产</option>
                           <option value="J">证券</option>
                           <option value="K">期收付</option>
                       </select>
                      </td>                     
                    </tr>
                    <tr>
                      <td>科目级别</td>
                      <td>
                          <select name="itm_cla">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="1">一级科目</option>
                           <option value="2">二级科目</option>
                       </select>
                      </td>  
                      <td>归属科目</td>
                      <td>
                         <input type="text" name="bel_itm"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>外部科目</td>
                       <td>
                           <input type="text" name="pbc_itm"/>  
                       </td>  
                      <td>有无子目</td>
                      <td>
                          <select name="sub_flg">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="Y">有</option>
                           <option value="N">无</option>
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>有无细目</td>
                      <td>
                       <select name="dtl_flg">
                          <option selected="selected" value="">--请选择--</option>
                          <option value="Y">有</option>
                          <option value="N">无</option>                        
                       </select>                
                      </td>
                      <td>余额方向</td>
                      <td>
                         <select name="bal_dir">
                          <option selected="selected" value="">--请选择--</option>
                          <option value="D">借方</option>
                          <option value="C">贷方</option>
                          <option value="A">借/贷方</option>                         
                       </select>  
                      </td>                      
                    </tr>
                <tr>
                      <td>适用对象</td>
                      <td>
                         <select name="usr_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0">没有限制</option>
                          <option value="1">允许支行使用</option>
                          <option value="2">容许分行一级使用</option>
                          <option value="3">容许总行一级使用</option>                        
                       </select>
                      </td>
                      <td>输入授权级别</td>
                      <td>
                        <input type="text" name="ery_aut">
                      </td>                     
                    </tr>
                <tr>
                      <td>查询授权级别</td>
                      <td>
                         <input type="text" name="req_aut">
                      </td> 
                      <td>销账类别标志</td>
                      <td>
                          <select name="rev_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="N、">非销账类科目</option>
                          <option value="D">借方销账</option>
                          <option value="C">贷方销账</option> 
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>销账种类</td>
                      <td>
                         <select name="rev_typ">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0">全数销账</option>
                          <option value="1">部分冲销</option> 
                         </select>
                      </td>                     
                    </tr> 
                        <tr>
                      <td>销账期限</td>
                      <td>
                         <input type="text" name="rev_trm">
                      </td>
                      <td>适用统计码</td>
                      <td>
                         <input type="text" name="sta_cde">
                      </td>                      
                    </tr>                    
                    <tr>
                      <td>利率种类</td>
                      <td>
                         <input type="text" name="int_knd">
                      </td> 
                      <td>余额红字标志</td>
                      <td>
                          <select name="blr_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0">不可同向出现红字</option>
                          <option value="1">可同向出现红字</option> 
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>零余额标志</td>
                      <td>
                          <select name="zbl_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0">不可等于0</option>
                          <option value="1">可等于0</option> 
                         </select>
                      </td> 
                      <td>核算标志</td>
                      <td>
                          <select name="act_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="N">不设分户及明细，科目核算</option>
                          <option value="D">设科目明细账</option>
                          <option value="A">本级科目下设立分户帐</option> 
                         </select>
                      </td>                    
                    </tr>   
                       <tr>
                      <td>会计输入标志</td>
                      <td>
                          <select name="eny_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="N">不允许</option>
                          <option value="Y">允许</option>
                         </select>
                      </td> 
                      <td>计息标志</td>
                      <td>
                          <select name="int_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">计息科目</option>
                          <option value="N">不计息科目</option>
                         </select>
                      </td>                     
                    </tr> 
                    <tr>
                      <td>计提营业税</td>
                      <td>
                          <select name="tax_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">计提科目</option>
                          <option value="N">不计提科目</option> 
                         </select>
                      </td>                     
                    </tr>  
                     <tr>
                      <td>对转科目</td>
                      <td>
                        <input type="text"  name="ops_itm">
                      </td> 
                      <td>利息支出账户科目</td>
                      <td><input type="text" name="int_exp"/></td>                    
                    </tr>
                    <tr>
                      <td>利息收入账户科目</td>
                      <td><input type="text" name="int_inc"/></td> 
                      <td>应付利息账户科目</td>
                      <td><input type="text" name="int_dac"/></td> 
                    </tr>
                    <tr>
                      <td>应收利息账户科目</td>
                      <td><input type="text" name="int_cac"/></td> 
                      <td>账户所属总账码</td>
                      <td><input type="text" name="gle_cde"/></td> 
                    </tr>
                    <tr>
                      <td>账户所属损益码</td>
                      <td><input type="text" name="pnl_cde"/></td> 
                      <td>最后更新日期</td>
                      <td><input type="text" name="upt_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly"/></td> 
                    </tr>
                     <tr>
                      <td>更新柜员</td>
                      <td><input type="text" name="upt_tlr"/>
                          
                      </td> 
                      <td>科目使用状态</td>
                      <td>
                          <select name="itm_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">使用</option>
                          <option value="N">当前未使用</option> 
                         </select>
                      </td> 
                    </tr>
                     <tr>                    
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P">有效</option>
                          <option value="I">无效</option> 
                          <option value="D">可以删除</option> 
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
