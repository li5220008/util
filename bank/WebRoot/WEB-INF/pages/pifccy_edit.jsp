<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pifccy_edit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
          <div>
           <h3>修改货币信息</h3>
          <form action="pifccy/edit.html" method="post" id="pifccy">
                <table>
                    <tr>
                      <td>货币码</td>
                      <td><input type="text" name="cur_cde" value="${pifccy.cur_cde }" readonly="readonly"/></td>   
                      <td>中文货币名称</td>
                      <td><input type="text" name="cur_nmc" value="${pifccy.cur_nmc }"/></td>                                        
                    </tr> 
                    <tr>
                      <td>英文货币名称</td>
                      <td><input type="text" name="cur_nme" value="${pifccy.cur_nme }"/></td>  
                      <td>国内货币符号</td>
                      <td><input type="text" name="dom_cde" value="${pifccy.dom_cde }"/></td>                     
                    </tr>
                     <tr>
                      <td>国际标准货币符号</td>
                      <td><input type="text" name="int_cur" value="${pifccy.int_cur }"/></td>  
                      <td>辅币名称</td>
                      <td>
                         <input type="text" name="cnt_nam" value="${pifccy.cnt_nam }"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>辅币位数</td>
                      <td>
                          <select name="dec_pos">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${pifccy.dec_pos eq "0"?"selected=true":"" }>无小数位</option>
                           <option value="2" ${pifccy.dec_pos eq "2"?"selected=true":"" }>小数2位</option>
                           <option value="3" ${pifccy.dec_pos eq "3"?"selected=true":"" }>小数3位</option>
                         </select>
                       </td>  
                      <td>辅币现金收付标识</td>
                      <td>
                          <select name="cnt_flg">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="Y" ${pifccy.cnt_flg eq "Y"?"selected=true":"" }>辅币收付现金</option>
                           <option value="N" ${pifccy.cnt_flg eq "N"?"selected=true":"" }>辅币不收付现金</option>
                         </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>货币种类标识</td>
                      <td>
                       <select name="ccy_knd">
                          <option selected="selected" value="">请选择货币种类标识</option>
                          <option value="L" ${pifccy.ccy_knd eq "L"?"selected=true":"" }>本币（RMB）</option>
                          <option value="U" ${pifccy.ccy_knd eq "U"?"selected=true":"" }>美元（USD）</option>
                          <option value="O" ${pifccy.ccy_knd eq "O"?"selected=true":"" }>其他外币（Other）</option>                         
                       </select>                
                      </td>
                      <td>记账货币标记</td>
                      <td>
                         <select name="clr_flg">
                          <option selected="selected" value="">请选择记账货币标记</option>
                          <option value="0" ${pifccy.clr_flg eq "0"?"selected=true":"" }>现汇</option>
                          <option value="1" ${pifccy.clr_flg eq "1"?"selected=true":"" }>记账外汇</option>                        
                       </select>  
                      </td>                      
                    </tr>
                <tr>
                      <td>现金进位标识</td>
                      <td>
                         <select name="rnd_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0" ${pifccy.rnd_flg eq "0"?"selected=true":"" }>该货币无进位（即舍去）</option>
                          <option value="1" ${pifccy.rnd_flg eq "1"?"selected=true":"" }>该货币由角位开始四舍五入</option>
                          <option value="2" ${pifccy.rnd_flg eq "2"?"selected=true":"" }>该货币由分位开始四舍五入</option>
                          <option value="3" ${pifccy.rnd_flg eq "3"?"selected=true":"" }>该货币由毫位开始四舍五入</option>
                          <option value="4" ${pifccy.rnd_flg eq "4"?"selected=true":"" }>辅币进位</option>                        
                       </select>
                      </td>
                      <td>有否现金标识</td>
                      <td>
                         <select name="csh_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifccy.csh_flg eq "Y"?"selected=true":"" }>有</option>
                          <option value="N" ${pifccy.csh_flg eq "N"?"selected=true":"" }>无</option>                        
                       </select>
                      </td>                     
                    </tr>
                <tr>
                      <td>有否T/T价标识</td>
                      <td>
                         <select name="ttc_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifccy.ttc_flg eq "Y"?"selected=true":"" }>有</option>
                          <option value="N" ${pifccy.ttc_flg eq "N"?"selected=true":"" }>无</option> 
                         </select>
                      </td> 
                      <td>可否兑换标识</td>
                      <td>
                          <select name="exc_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifccy.exc_flg eq "Y"?"selected=true":"" }>有</option>
                          <option value="N" ${pifccy.exc_flg eq "N"?"selected=true":"" }>无</option> 
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
                          <option value="I" ${pifccy.prc_flg eq "I"?"selected=true":"" }>间接标价</option>
                          <option value="D" ${pifccy.prc_flg eq "D"?"selected=true":"" }>直接标价</option> 
                         </select>
                      </td>
                      <td>标价单位</td>
                      <td>
                         <select name="exc_unt">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="1" ${pifccy.exc_unt eq "1"?"selected=true":"" }>1</option>
                          <option value="2" ${pifccy.exc_unt eq "2"?"selected=true":"" }>100</option> 
                          <option value="3" ${pifccy.exc_unt eq "3"?"selected=true":"" }>1000</option> 
                          <option value="4" ${pifccy.exc_unt eq "4"?"selected=true":"" }>1000 000</option> 
                         </select>
                      </td>                      
                    </tr>                    
                    <tr>
                      <td>假日表标识</td>
                      <td>
                         <select name="hol_flg">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="0" ${pifccy.hol_flg eq "0"?"selected=true":"" }>无假日表</option>
                          <option value="1" ${pifccy.hol_flg eq "1"?"selected=true":"" }>有假日表</option> 
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
                          <option value="A" ${pifccy.cur_sts eq "A"?"selected=true":"" }>该货币可用</option>
                          <option value="I" ${pifccy.cur_sts eq "I"?"selected=true":"" }>该货币不可用</option> 
                         </select>
                      </td>                     
                    </tr>   
                    <tr>
                      <td rowspan="2"><input type="submit" value="提交"/><input type="button" value="返回" onclick="window.history.back(-1);"/></td>                     
                    </tr>        
                </table>
          </form>
      </div>
  </body>
</html>
