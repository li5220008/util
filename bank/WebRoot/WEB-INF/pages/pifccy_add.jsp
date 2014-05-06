<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pifccy_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/My97DatePicker/WdatePicker.js></script>
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/jquery-1.4.2.min.js></script>
</head>
   
<body>

  <h3>新增货币</h3>
      <div><form action="pifccy/add.html" method="post" id="pifccy">
      <table>
                    <tr>
                     <td>货币码</td>
                      <td><input type="text" name="cur_cde"/></td>   
                      <td>中文货币名称</td>
                      <td><input type="text" name="cur_nmc"/></td>                                        
                    </tr> 
                    <tr>
                      <td>英文货币名称</td>
                      <td><input type="text" name="cur_nme" ></td>  
                      <td>国内货币符号</td>
                      <td><input type="text" name="dom_cde"/></td>                     
                    </tr>
                    <tr>
                      <td>国际标准货币符号</td>
                      <td><input type="text" name="int_cur"/></td>  
                      <td>辅币名称</td>
                      <td>
                         <input type="text" name="cnt_nam"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>辅币位数</td>
                      <td>
                          <select name="dec_pos">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0">无小数位</option>
                           <option value="2">小数2位</option>
                           <option value="3">小数3位</option>
                         </select>
                       </td>  
                      <td>辅币现金收付标识</td>
                      <td>
                          <select name="cnt_flg">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="Y">辅币收付现金</option>
                           <option value="N">辅币不收付现金</option>
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>货币种类标识</td>
                      <td>
                       <select name="ccy_knd">
                          <option selected="selected" value="">请选择货币种类标识</option>
                          <option value="L">本币（RMB）</option>
                          <option value="U">美元（USD）</option>
                          <option value="O">其他外币（Other）</option>                         
                       </select>                
                      </td>
                      <td>记账货币标记</td>
                      <td>
                         <select name="clr_flg">
                          <option selected="selected" value="">请选择记账货币标记</option>
                          <option value="0">现汇</option>
                          <option value="1">记账外汇</option>                        
                       </select>  
                      </td>                      
                    </tr>
                <tr>
                      <td>现金进位标识</td>
                      <td>
                         <select name="rnd_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0">该货币无进位（即舍去）</option>
                          <option value="1">该货币由角位开始四舍五入</option>
                          <option value="2">该货币由分位开始四舍五入</option>
                          <option value="3">该货币由毫位开始四舍五入</option>
                          <option value="4">辅币进位</option>                        
                       </select>
                      </td>
                      <td>有否现金标识</td>
                      <td>
                         <select name="csh_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">有</option>
                          <option value="N">无</option>                        
                       </select>
                      </td>                     
                    </tr>
                <tr>
                      <td>有否T/T价标识</td>
                      <td>
                         <select name="ttc_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">有</option>
                          <option value="N">无</option> 
                         </select>
                      </td> 
                      <td>可否兑换标识</td>
                      <td>
                          <select name="exc_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">有</option>
                          <option value="N">无</option> 
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>折算汇率单位</td>
                      <td>
                         <input type="text" name="cur_unt">
                      </td>                     
                    </tr> 
                        <tr>
                      <td>汇率标价法</td>
                      <td>
                         <select name="prc_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="I">间接标价</option>
                          <option value="D">直接标价</option> 
                         </select>
                      </td>
                      <td>标价单位</td>
                      <td>
                         <select name="exc_unt">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="1">1</option>
                          <option value="2">100</option> 
                          <option value="3">1000</option> 
                          <option value="4">1000 000</option> 
                         </select>
                      </td>                      
                    </tr>                    
                    <tr>
                      <td>假日表标识</td>
                      <td>
                         <select name="hol_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0">无假日表</option>
                          <option value="1">有假日表</option> 
                         </select>
                      </td> 
                      <td>计息周期</td>
                      <td><input type="text" name="int_per"/></td>                    
                    </tr>
                 <tr>
                      <td>启用日期</td>
                      <td><input type="text" name="eff_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly"/></td> 
                      <td>使用到期日</td>
                      <td><input type="text" name="exp_dat" class="Wdate"  onClick="WdatePicker()"  readonly="readonly"/></td>                    
                    </tr>   
                       <tr>
                      <td>最后更新日</td>
                      <td><input type="text" name="upt_dat"  class="Wdate" onClick="WdatePicker()"  readonly="readonly"/></td> 
                      <td>更新柜员</td>
                      <td><input type="text" name="upt_tlr"/></td>                     
                    </tr> 
                    <tr>
                      <td>货币状态</td>
                      <td>
                          <select name="cur_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="A">该货币可用</option>
                          <option value="I">该货币不可用</option> 
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
