package com.gtafe.model;

import java.text.NumberFormat;
import java.util.Date;

/**
 * Desc: 业务码表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 上午11:01
 */
public class Pifbus {
    private String bus_cde;//(业务码)
    private String app_cde;//应用码
    private String bus_itm;//对应的核算科目号
    private String bus_app;//对应的应用码
    private String bus_nam;//业务描述
    private String bus_snm;//业务简称
    private Date upt_dat;//最后更新日期
    private String upt_tlr;//更新柜员
    private String bus_kd1;//业务大类
    private int bus_kd2;//业务小类
    private String rec_sts;//记录状态

    public String getBus_cde() {
        return bus_cde;
    }

    public void setBus_cde(String bus_cde) {
        this.bus_cde = bus_cde;
    }

    public String getApp_cde() {
        return app_cde;
    }

    public void setApp_cde(String app_cde) {
        this.app_cde = app_cde;
    }

    public String getBus_itm() {
        return bus_itm;
    }

    public void setBus_itm(String bus_itm) {
        this.bus_itm = bus_itm;
    }

    public String getBus_app() {
        return bus_app;
    }

    public void setBus_app(String bus_app) {
        this.bus_app = bus_app;
    }

    public String getBus_nam() {
        return bus_nam;
    }

    public void setBus_nam(String bus_nam) {
        this.bus_nam = bus_nam;
    }

    public String getBus_snm() {
        return bus_snm;
    }

    public void setBus_snm(String bus_snm) {
        this.bus_snm = bus_snm;
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

    public String getBus_kd1() {
        return bus_kd1;
    }

    public void setBus_kd1(String bus_kd1) {
        this.bus_kd1 = bus_kd1;
    }

    public int getBus_kd2() {
        return bus_kd2;
    }

    public void setBus_kd2(int bus_kd2) {
        this.bus_kd2 = bus_kd2;
    }

    public String getRec_sts() {
        return rec_sts;
    }

    public void setRec_sts(String rec_sts) {
        this.rec_sts = rec_sts;
    }

    @Override
    public String toString() {
        return "Pifbus{" +
                "bus_cde='" + bus_cde + '\'' +
                ", app_cde='" + app_cde + '\'' +
                ", bus_itm='" + bus_itm + '\'' +
                ", bus_app='" + bus_app + '\'' +
                ", bus_nam='" + bus_nam + '\'' +
                ", bus_snm='" + bus_snm + '\'' +
                ", upt_dat=" + upt_dat +
                ", upt_tlr='" + upt_tlr + '\'' +
                ", bus_kd1='" + bus_kd1 + '\'' +
                ", bus_kd2=" + bus_kd2 +
                ", rec_sts='" + rec_sts + '\'' +
                '}';
    }
}
