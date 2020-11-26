package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TLiuyanDAO;
import com.dao.TZhaopianDAO;
import com.model.TAdmin;
import com.model.TLiuyan;
import com.model.TUser;
import com.model.TZhaopian;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class zhaopianAction extends ActionSupport
{
	private Integer id;
	private String title;
	private String fujian;
	private String shijian;
	
	private String shangchuanzhe;
	private int banjiId;
	
	private TZhaopianDAO zhaopianDAO;
	
	public String zhaopianAll()
	{
		String sql="from TZhaopian where banjiId="+banjiId+" order by shijian desc";
		List zhaopianList=zhaopianDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopianList", zhaopianList);
		request.put("banjiId", banjiId);
		return ActionSupport.SUCCESS;
	}
	
	
	public String zhaopianAdd()
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		TZhaopian zhaopian=new TZhaopian();
		
		zhaopian.setTitle(title);
		zhaopian.setFujian(fujian);
		zhaopian.setShijian(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		zhaopian.setShangchuanzhe(user.getXingming());
		
		zhaopian.setBanjiId(banjiId);
		
		zhaopianDAO.save(zhaopian);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "照片上传成功");
		return "msg";
	}

	
	public String zhaopianMana()
	{
		String sql="from TZhaopian order by shijian desc";
		List zhaopianList=zhaopianDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopianList", zhaopianList);
		return ActionSupport.SUCCESS;
	}
	
	public String zhaopianDel()
	{
		TZhaopian zhaopian=zhaopianDAO.findById(id);
		zhaopianDAO.delete(zhaopian);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除完毕");
		return "msg";
	}

	public Integer getId()
	{
		return id;
	}


	public void setId(Integer id)
	{
		this.id = id;
	}


	public String getTitle()
	{
		return title;
	}


	public void setTitle(String title)
	{
		this.title = title;
	}


	public String getFujian()
	{
		return fujian;
	}


	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}


	public String getShijian()
	{
		return shijian;
	}


	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}


	public String getShangchuanzhe()
	{
		return shangchuanzhe;
	}


	public void setShangchuanzhe(String shangchuanzhe)
	{
		this.shangchuanzhe = shangchuanzhe;
	}


	public int getBanjiId()
	{
		return banjiId;
	}


	public void setBanjiId(int banjiId)
	{
		this.banjiId = banjiId;
	}


	public TZhaopianDAO getZhaopianDAO()
	{
		return zhaopianDAO;
	}


	public void setZhaopianDAO(TZhaopianDAO zhaopianDAO)
	{
		this.zhaopianDAO = zhaopianDAO;
	}
	
}
