package com.gtafe.model;

import java.util.Date;

/**
 * Desc: 利率表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 上午10:59
 */
public class Pifirt {

    private String irt_key;//利率主键
    private String cur_cde;//货币码
    private String irt_cde;//利率代码
    private String irt_kd1;//利率大类
    private String irt_kd2;//利率细类
    private String eff_dat;//启用日期
    private String irt_nam;//利率名称
    private String cur_flg;//当天使用标记
    private String mod_flg;//当天修改标记
    private double irt_val;//年利率值
    private double irt_sph;//浮动上限值
    private double irt_spl;//浮动下限值
    private String spr_flg;//浮动标记
    private String cdr_flg;//借贷标记
    private double irt_trm;//期限
    private String trm_unt;//期限单位
    private String cre_tlr;//建档柜员
    private Date cre_dat;//建档日期
    private Date upt_dat;//最后更新日期
    private String upt_tlr;//更新柜员
    private String rec_sts;//记录状态

    public String getIrt_key() {
        return irt_key;
    }

    public void setIrt_key(String irt_key) {
        this.irt_key = irt_key;
    }

    public String getCur_cde() {
        return cur_cde;
    }

    public void setCur_cde(String cur_cde) {
        this.cur_cde = cur_cde;
    }

    public String getIrt_cde() {
        return irt_cde;
    }

    public void setIrt_cde(String irt_cde) {
        this.irt_cde = irt_cde;
    }

    public String getIrt_kd1() {
        return irt_kd1;
    }

    public void setIrt_kd1(String irt_kd1) {
        this.irt_kd1 = irt_kd1;
    }

    public String getIrt_kd2() {
        return irt_kd2;
    }

    public void setIrt_kd2(String irt_kd2) {
        this.irt_kd2 = irt_kd2;
    }

    public String getEff_dat() {
        return eff_dat;
    }

    public void setEff_dat(String eff_dat) {
        this.eff_dat = eff_dat;
    }

    public String getIrt_nam() {
        return irt_nam;
    }

    public void setIrt_nam(String irt_nam) {
        this.irt_nam = irt_nam;
    }

    public String getCur_flg() {
        return cur_flg;
    }

    public void setCur_flg(String cur_flg) {
        this.cur_flg = cur_flg;
    }

    public String getMod_flg() {
        return mod_flg;
    }

    public void setMod_flg(String mod_flg) {
        this.mod_flg = mod_flg;
    }

    public double getIrt_val() {
        return irt_val;
    }

    public void setIrt_val(double irt_val) {
        this.irt_val = irt_val;
    }

    public double getIrt_sph() {
        return irt_sph;
    }

    public void setIrt_sph(double irt_sph) {
        this.irt_sph = irt_sph;
    }

    public double getIrt_spl() {
        return irt_spl;
    }

    public void setIrt_spl(double irt_spl) {
        this.irt_spl = irt_spl;
    }

    public String getSpr_flg() {
        return spr_flg;
    }

    public void setSpr_flg(String spr_flg) {
        this.spr_flg = spr_flg;
    }

    public String getCdr_flg() {
        return cdr_flg;
    }

    public void setCdr_flg(String cdr_flg) {
        this.cdr_flg = cdr_flg;
    }

    public double getIrt_trm() {
        return irt_trm;
    }

    public void setIrt_trm(double irt_trm) {
        this.irt_trm = irt_trm;
    }

    public String getTrm_unt() {
        return trm_unt;
    }

    public void setTrm_unt(String trm_unt) {
        this.trm_unt = trm_unt;
    }

    public String getCre_tlr() {
        return cre_tlr;
    }

    public void setCre_tlr(String cre_tlr) {
        this.cre_tlr = cre_tlr;
    }

    public Date getCre_dat() {
        return cre_dat;
    }

    public void setCre_dat(Date cre_dat) {
        this.cre_dat = cre_dat;
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

    @Override
    public String toString() {
        return "Pifirt{" +
                "irt_key='" + irt_key + '\'' +
                ", cur_cde='" + cur_cde + '\'' +
                ", irt_cde='" + irt_cde + '\'' +
                ", irt_kd1='" + irt_kd1 + '\'' +
                ", irt_kd2='" + irt_kd2 + '\'' +
                ", eff_dat='" + eff_dat + '\'' +
                ", irt_nam='" + irt_nam + '\'' +
                ", cur_flg='" + cur_flg + '\'' +
                ", mod_flg='" + mod_flg + '\'' +
                ", irt_val=" + irt_val +
                ", irt_sph=" + irt_sph +
                ", irt_spl=" + irt_spl +
                ", spr_flg='" + spr_flg + '\'' +
                ", cdr_flg='" + cdr_flg + '\'' +
                ", irt_trm=" + irt_trm +
                ", trm_unt='" + trm_unt + '\'' +
                ", cre_tlr='" + cre_tlr + '\'' +
                ", cre_dat=" + cre_dat +
                ", upt_dat=" + upt_dat +
                ", upt_tlr='" + upt_tlr + '\'' +
                ", rec_sts='" + rec_sts + '\'' +
                '}';
    }
}
