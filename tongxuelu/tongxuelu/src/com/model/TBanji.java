package com.model;

/**
 * TBanji entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TBanji implements java.io.Serializable
{

	// Fields

	private Integer id;
	private String chinaProvince;
	private String chinaCity;
	private Integer yuanxiaoId;
	private String zhuanye;
	private String mingcheng;
	private Integer chuangjianUserId;
	private String chuangjianshi;
	
	private TUser chuangjianUser;
	private TYuanxiao yuanxiao;

	// Constructors

	/** default constructor */
	public TBanji()
	{
	}

	/** full constructor */
	public TBanji(String chinaProvince, String chinaCity, Integer yuanxiaoId,
			String mingcheng, Integer chuangjianUserId, String chuangjianshi)
	{
		this.chinaProvince = chinaProvince;
		this.chinaCity = chinaCity;
		this.yuanxiaoId = yuanxiaoId;
		this.mingcheng = mingcheng;
		this.chuangjianUserId = chuangjianUserId;
		this.chuangjianshi = chuangjianshi;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getChinaProvince()
	{
		return this.chinaProvince;
	}

	public TYuanxiao getYuanxiao() {
		return yuanxiao;
	}

	public void setYuanxiao(TYuanxiao yuanxiao) {
		this.yuanxiao = yuanxiao;
	}

	public TUser getChuangjianUser()
	{
		return chuangjianUser;
	}

	public void setChuangjianUser(TUser chuangjianUser)
	{
		this.chuangjianUser = chuangjianUser;
	}

	public void setChinaProvince(String chinaProvince)
	{
		this.chinaProvince = chinaProvince;
	}

	public String getChinaCity()
	{
		return this.chinaCity;
	}

	public void setChinaCity(String chinaCity)
	{
		this.chinaCity = chinaCity;
	}

	public Integer getYuanxiaoId()
	{
		return this.yuanxiaoId;
	}

	public void setYuanxiaoId(Integer yuanxiaoId)
	{
		this.yuanxiaoId = yuanxiaoId;
	}

	public String getMingcheng()
	{
		return this.mingcheng;
	}

	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}

	public Integer getChuangjianUserId()
	{
		return this.chuangjianUserId;
	}

	public void setChuangjianUserId(Integer chuangjianUserId)
	{
		this.chuangjianUserId = chuangjianUserId;
	}

	public String getChuangjianshi()
	{
		return this.chuangjianshi;
	}

	public void setChuangjianshi(String chuangjianshi)
	{
		this.chuangjianshi = chuangjianshi;
	}

	public String getZhuanye() {
		return zhuanye;
	}

	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}

}