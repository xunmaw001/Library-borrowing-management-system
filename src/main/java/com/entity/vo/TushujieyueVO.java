package com.entity.vo;

import com.entity.TushujieyueEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 图书借阅
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-02-01 19:13:06
 */
public class TushujieyueVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 图书编号
	 */
	
	private String tushubianhao;
		
	/**
	 * 图书名称
	 */
	
	private String tushumingcheng;
		
	/**
	 * 图书馆名称
	 */
	
	private String tushuguanmingcheng;
		
	/**
	 * 可借天数
	 */
	
	private String kejietianshu;
		
	/**
	 * 可借数量
	 */
	
	private String kejieshuliang;
		
	/**
	 * 借阅日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jieyueriqi;
		
	/**
	 * 借阅天数
	 */
	
	private Integer jieyuetianshu;
		
	/**
	 * 应还日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date yinghairiqi;
		
	/**
	 * 借阅状态
	 */
	
	private String jieyuezhuangtai;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 身份证
	 */
	
	private String shenfenzheng;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：图书编号
	 */
	 
	public void setTushubianhao(String tushubianhao) {
		this.tushubianhao = tushubianhao;
	}
	
	/**
	 * 获取：图书编号
	 */
	public String getTushubianhao() {
		return tushubianhao;
	}
				
	
	/**
	 * 设置：图书名称
	 */
	 
	public void setTushumingcheng(String tushumingcheng) {
		this.tushumingcheng = tushumingcheng;
	}
	
	/**
	 * 获取：图书名称
	 */
	public String getTushumingcheng() {
		return tushumingcheng;
	}
				
	
	/**
	 * 设置：图书馆名称
	 */
	 
	public void setTushuguanmingcheng(String tushuguanmingcheng) {
		this.tushuguanmingcheng = tushuguanmingcheng;
	}
	
	/**
	 * 获取：图书馆名称
	 */
	public String getTushuguanmingcheng() {
		return tushuguanmingcheng;
	}
				
	
	/**
	 * 设置：可借天数
	 */
	 
	public void setKejietianshu(String kejietianshu) {
		this.kejietianshu = kejietianshu;
	}
	
	/**
	 * 获取：可借天数
	 */
	public String getKejietianshu() {
		return kejietianshu;
	}
				
	
	/**
	 * 设置：可借数量
	 */
	 
	public void setKejieshuliang(String kejieshuliang) {
		this.kejieshuliang = kejieshuliang;
	}
	
	/**
	 * 获取：可借数量
	 */
	public String getKejieshuliang() {
		return kejieshuliang;
	}
				
	
	/**
	 * 设置：借阅日期
	 */
	 
	public void setJieyueriqi(Date jieyueriqi) {
		this.jieyueriqi = jieyueriqi;
	}
	
	/**
	 * 获取：借阅日期
	 */
	public Date getJieyueriqi() {
		return jieyueriqi;
	}
				
	
	/**
	 * 设置：借阅天数
	 */
	 
	public void setJieyuetianshu(Integer jieyuetianshu) {
		this.jieyuetianshu = jieyuetianshu;
	}
	
	/**
	 * 获取：借阅天数
	 */
	public Integer getJieyuetianshu() {
		return jieyuetianshu;
	}
				
	
	/**
	 * 设置：应还日期
	 */
	 
	public void setYinghairiqi(Date yinghairiqi) {
		this.yinghairiqi = yinghairiqi;
	}
	
	/**
	 * 获取：应还日期
	 */
	public Date getYinghairiqi() {
		return yinghairiqi;
	}
				
	
	/**
	 * 设置：借阅状态
	 */
	 
	public void setJieyuezhuangtai(String jieyuezhuangtai) {
		this.jieyuezhuangtai = jieyuezhuangtai;
	}
	
	/**
	 * 获取：借阅状态
	 */
	public String getJieyuezhuangtai() {
		return jieyuezhuangtai;
	}
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：身份证
	 */
	 
	public void setShenfenzheng(String shenfenzheng) {
		this.shenfenzheng = shenfenzheng;
	}
	
	/**
	 * 获取：身份证
	 */
	public String getShenfenzheng() {
		return shenfenzheng;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
