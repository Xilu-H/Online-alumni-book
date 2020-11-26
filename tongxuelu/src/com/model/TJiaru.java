package com.model;

/**
 * TJiaru entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TJiaru implements java.io.Serializable
{

	// Fields

	private Integer id;
	private Integer banjiId;
	private Integer userId;
	
	private TBanji banji;
	private TUser user;

	// Constructors

	/** default constructor */
	public TJiaru()
	{
	}

	/** full constructor */
	public TJiaru(Integer banjiId, Integer userId)
	{
		this.banjiId = banjiId;
		this.userId = userId;
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

	public Integer getBanjiId()
	{
		return this.banjiId;
	}

	public TUser getUser()
	{
		return user;
	}

	public void setUser(TUser user)
	{
		this.user = user;
	}

	public void setBanjiId(Integer banjiId)
	{
		this.banjiId = banjiId;
	}

	public TBanji getBanji()
	{
		return banji;
	}

	public void setBanji(TBanji banji)
	{
		this.banji = banji;
	}

	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

}