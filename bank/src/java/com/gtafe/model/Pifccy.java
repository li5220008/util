package com.gtafe.model;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 货币实体
 * @author li.wan
 *
 */
public class Pifccy {
	/**
	 * 注意：可能为空的字段数据类型都用包装类型
	 */
    private String cur_cde;//货币码(主键)
    private String cur_nmc;//中文货币码
    private String cur_nme;//英文货币名称
    private String cnt_nam;//辅币名称
    private String dom_cde;//国内货币符号
    private String int_cur;//国际标准货币符号
    private Integer    dec_pos;//辅币位数
    private Character   ccy_knd;//货币种类标识
    private Character   clr_flg;//记账货币标记
    private Character   ttc_flg;//有否T/T价标识
    private Character   csh_flg;//有否现金标识
    private Character   cnt_flg;//辅币现金收付标识
    private Character   rnd_flg;//现金进位标识
    private Character   exc_flg;//可否兑换标识
    private BigDecimal cur_unt;//折算汇率单位
    private Character   prc_flg;//汇率标价法
    private Integer    exc_unt;//标价单位
    private Integer int_per;//计息周期
    private Character   hol_flg;//假日表标识
    private Character   cur_sts;//货币状态
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date   eff_dat;//启用日期
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date   exp_dat;//使用到期日
    private String spe_flg;//特殊使用标识  
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date   upt_dat;//最后更新日期   
    private String upt_tlr;//更新柜员
    private String rec_sts;//记录状态
	public String getCur_cde() {
		return cur_cde;
	}
	public void setCur_cde(String cur_cde) {
		this.cur_cde = cur_cde;
	}
	public String getCur_nmc() {
		return cur_nmc;
	}
	public void setCur_nmc(String cur_nmc) {
		this.cur_nmc = cur_nmc;
	}
	public String getCur_nme() {
		return cur_nme;
	}
	public void setCur_nme(String cur_nme) {
		this.cur_nme = cur_nme;
	}
	public String getCnt_nam() {
		return cnt_nam;
	}
	public void setCnt_nam(String cnt_nam) {
		this.cnt_nam = cnt_nam;
	}
	public String getDom_cde() {
		return dom_cde;
	}
	public void setDom_cde(String dom_cde) {
		this.dom_cde = dom_cde;
	}
	public String getInt_cur() {
		return int_cur;
	}
	public void setInt_cur(String int_cur) {
		this.int_cur = int_cur;
	}
	public Integer getDec_pos() {
		return dec_pos;
	}
	public void setDec_pos(Integer dec_pos) {
		this.dec_pos = dec_pos;
	}
	public Character getCcy_knd() {
		return ccy_knd;
	}
	public void setCcy_knd(Character ccy_knd) {
		this.ccy_knd = ccy_knd;
	}
	public Character getClr_flg() {
		return clr_flg;
	}
	public void setClr_flg(Character clr_flg) {
		this.clr_flg = clr_flg;
	}
	public Character getTtc_flg() {
		return ttc_flg;
	}
	public void setTtc_flg(Character ttc_flg) {
		this.ttc_flg = ttc_flg;
	}
	public Character getCsh_flg() {
		return csh_flg;
	}
	public void setCsh_flg(Character csh_flg) {
		this.csh_flg = csh_flg;
	}
	public Character getCnt_flg() {
		return cnt_flg;
	}
	public void setCnt_flg(Character cnt_flg) {
		this.cnt_flg = cnt_flg;
	}
	public Character getRnd_flg() {
		return rnd_flg;
	}
	public void setRnd_flg(Character rnd_flg) {
		this.rnd_flg = rnd_flg;
	}
	public Character getExc_flg() {
		return exc_flg;
	}
	public void setExc_flg(Character exc_flg) {
		this.exc_flg = exc_flg;
	}

	public BigDecimal getCur_unt() {
		return cur_unt;
	}
	public void setCur_unt(BigDecimal cur_unt) {
		this.cur_unt = cur_unt;
	}
	public Character getPrc_flg() {
		return prc_flg;
	}
	public void setPrc_flg(Character prc_flg) {
		this.prc_flg = prc_flg;
	}

	public Integer getExc_unt() {
		return exc_unt;
	}
	public void setExc_unt(Integer exc_unt) {
		this.exc_unt = exc_unt;
	}

	public Integer getInt_per() {
		return int_per;
	}
	public void setInt_per(Integer int_per) {
		this.int_per = int_per;
	}
	public Character getHol_flg() {
		return hol_flg;
	}
	public void setHol_flg(Character hol_flg) {
		this.hol_flg = hol_flg;
	}
	public Character getCur_sts() {
		return cur_sts;
	}
	public void setCur_sts(Character cur_sts) {
		this.cur_sts = cur_sts;
	}
	public Date getEff_dat() {
		return eff_dat;
	}
	public void setEff_dat(Date eff_dat) {
		this.eff_dat = eff_dat;
	}
	public Date getExp_dat() {
		return exp_dat;
	}
	public void setExp_dat(Date exp_dat) {
		this.exp_dat = exp_dat;
	}
	public String getSpe_flg() {
		return spe_flg;
	}
	public void setSpe_flg(String spe_flg) {
		this.spe_flg = spe_flg;
	}
	public Date getUpt_dat() {
		return upt_dat;
	}
	public void setUpt_dat(Date upt_dat) {
		this.upt_dat = upt_dat;
	}
	public String getUpt_tlr() {
		return upt_tlr;
	}
	public void setUpt_tlr(String upt_tlr) {
		this.upt_tlr = upt_tlr;
	}
	public String getRec_sts() {
		return rec_sts;
	}
	public void setRec_sts(String rec_sts) {
		this.rec_sts = rec_sts;
	}
    
    
}
