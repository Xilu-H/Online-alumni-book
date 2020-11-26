package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TJiaruDAO;
import com.dao.TUserDAO;
import com.model.TJiaru;
import com.opensymphony.xwork2.ActionSupport;

public class tongxunluAction extends ActionSupport
{
	private int banjiId;
	private TJiaruDAO jiaruDAO;
	private TUserDAO userDAO;
	
	public String tongxunluAll()
	{
		System.out.println(banjiId+"HHH");
		
		String sql="from TJiaru where banjiId="+banjiId;
		List jiaruList=jiaruDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<jiaruList.size();i++)
		{
			TJiaru jiaru=(TJiaru)jiaruList.get(i);
			jiaru.setUser(userDAO.findById(jiaru.getUserId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jiaruList", jiaruList);
		return ActionSupport.SUCCESS;
	}

	public TJiaruDAO getJiaruDAO() {
		return jiaruDAO;
	}

	public void setJiaruDAO(TJiaruDAO jiaruDAO) {
		this.jiaruDAO = jiaruDAO;
	}

	public int getBanjiId() {
		return banjiId;
	}

	public void setBanjiId(int banjiId) {
		this.banjiId = banjiId;
	}

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}

	
}
