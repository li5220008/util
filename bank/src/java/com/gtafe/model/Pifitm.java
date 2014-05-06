package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 科目表
 * @author li.wan
 *
 */
public class Pifitm {
    private String itm_num;//科目号
    private String itm_nam;//科目名称
    private String itm_typ;//科目类型
    private String itm_atr;//科目性质
    private String itm_cla;//科目级别
    private String bel_itm;//归属科目
    private String pbc_itm;//外部科目
    private String itm_sts;//科目使用状态
    private String sub_flg;//有无子目
    private String dtl_flg;//有无细目
    private String bal_dir;//余额方向
    private String blr_flg;//余额红字标识
    private String zbl_flg;//零余额标识
    private String usr_flg;//适用对象
    private String act_flg;//核算标识
    private String eny_flg;//会计输入标识
    private String ery_aut;//输入授权级别
    private String req_aut;//查询授权级别
    private String rev_flg;//销账类别标识
    private String rev_typ;//销账种类
    private Integer rev_trm;//销账期限
    private String sta_cde;//适用统计码
    private String int_knd;//利率种类
    private String int_flg;//计息标志
    private String tax_flg;//计提营业税   
    private String ops_itm;//对转科目
    private String int_exp;//利息支出账户科目
    private String int_inc;//利息收入账户科目
    private String int_dac;//应付利息账户科目
    private String int_cac;//应收利息账户科目
    private String gle_cde;//账户所属总账码
    private String pnl_cde;//账户所属损益吗
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date upt_dat;//最后更新日期
    private String upt_tlr;//更新柜员
    private String rec_sts;//记录状态
    
    
	public String getItm_num() {
		return itm_num;
	}
	public void setItm_num(String itm_num) {
		this.itm_num = itm_num;
	}
	public String getItm_nam() {
		return itm_nam;
	}
	public void setItm_nam(String itm_nam) {
		this.itm_nam = itm_nam;
	}
	public String getItm_typ() {
		return itm_typ;
	}
	public void setItm_typ(String itm_typ) {
		this.itm_typ = itm_typ;
	}
	public String getItm_atr() {
		return itm_atr;
	}
	public void setItm_atr(String itm_atr) {
		this.itm_atr = itm_atr;
	}
	public String getItm_cla() {
		return itm_cla;
	}
	public void setItm_cla(String itm_cla) {
		this.itm_cla = itm_cla;
	}
	public String getBel_itm() {
		return bel_itm;
	}
	public void setBel_itm(String bel_itm) {
		this.bel_itm = bel_itm;
	}
	public String getPbc_itm() {
		return pbc_itm;
	}
	public void setPbc_itm(String pbc_itm) {
		this.pbc_itm = pbc_itm;
	}

	public String getItm_sts() {
		return itm_sts;
	}
	public void setItm_sts(String itm_sts) {
		this.itm_sts = itm_sts;
	}
	public String getSub_flg() {
		return sub_flg;
	}
	public void setSub_flg(String sub_flg) {
		this.sub_flg = sub_flg;
	}
	public String getDtl_flg() {
		return dtl_flg;
	}
	public void setDtl_flg(String dtl_flg) {
		this.dtl_flg = dtl_flg;
	}
	public String getBal_dir() {
		return bal_dir;
	}
	public void setBal_dir(String bal_dir) {
		this.bal_dir = bal_dir;
	}
	public String getBlr_flg() {
		return blr_flg;
	}
	public void setBlr_flg(String blr_flg) {
		this.blr_flg = blr_flg;
	}
	public String getZbl_flg() {
		return zbl_flg;
	}
	public void setZbl_flg(String zbl_flg) {
		this.zbl_flg = zbl_flg;
	}
	public String getUsr_flg() {
		return usr_flg;
	}
	public void setUsr_flg(String usr_flg) {
		this.usr_flg = usr_flg;
	}
	public String getAct_flg() {
		return act_flg;
	}
	public void setAct_flg(String act_flg) {
		this.act_flg = act_flg;
	}
	public String getEny_flg() {
		return eny_flg;
	}
	public void setEny_flg(String eny_flg) {
		this.eny_flg = eny_flg;
	}
	public String getEry_aut() {
		return ery_aut;
	}
	public void setEry_aut(String ery_aut) {
		this.ery_aut = ery_aut;
	}
	public String getReq_aut() {
		return req_aut;
	}
	public void setReq_aut(String req_aut) {
		this.req_aut = req_aut;
	}
	public String getRev_flg() {
		return rev_flg;
	}
	public void setRev_flg(String rev_flg) {
		this.rev_flg = rev_flg;
	}
	public String getRev_typ() {
		return rev_typ;
	}
	public void setRev_typ(String rev_typ) {
		this.rev_typ = rev_typ;
	}
	public String getSta_cde() {
		return sta_cde;
	}
	public void setSta_cde(String sta_cde) {
		this.sta_cde = sta_cde;
	}
	public String getInt_knd() {
		return int_knd;
	}
	public void setInt_knd(String int_knd) {
		this.int_knd = int_knd;
	}
	public String getInt_flg() {
		return int_flg;
	}
	public void setInt_flg(String int_flg) {
		this.int_flg = int_flg;
	}
	public String getTax_flg() {
		return tax_flg;
	}
	public void setTax_flg(String tax_flg) {
		this.tax_flg = tax_flg;
	}
	public String getOps_itm() {
		return ops_itm;
	}
	public void setOps_itm(String ops_itm) {
		this.ops_itm = ops_itm;
	}
	public String getInt_exp() {
		return int_exp;
	}
	public void setInt_exp(String int_exp) {
		this.int_exp = int_exp;
	}
	public String getInt_inc() {
		return int_inc;
	}
	public void setInt_inc(String int_inc) {
		this.int_inc = int_inc;
	}
	public String getInt_dac() {
		return int_dac;
	}
	public void setInt_dac(String int_dac) {
		this.int_dac = int_dac;
	}
	public String getInt_cac() {
		return int_cac;
	}
	public void setInt_cac(String int_cac) {
		this.int_cac = int_cac;
	}
	public String getGle_cde() {
		return gle_cde;
	}
	public void setGle_cde(String gle_cde) {
		this.gle_cde = gle_cde;
	}
	public String getPnl_cde() {
		return pnl_cde;
	}
	public void setPnl_cde(String pnl_cde) {
		this.pnl_cde = pnl_cde;
	}

	public Integer getRev_trm() {
		return rev_trm;
	}
	public void setRev_trm(Integer rev_trm) {
		this.rev_trm = rev_trm;
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
