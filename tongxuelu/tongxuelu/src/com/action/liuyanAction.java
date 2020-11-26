package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TLiuyanDAO;
import com.model.TAdmin;
import com.model.TLiuyan;
import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class liuyanAction extends ActionSupport
{
	private Integer liuyanId;
	private String liuyanContent;
	private String liuyanDate;
	private String liuyanUser;
	
	private Integer banjiId;
	
	private TLiuyanDAO liuyanDAO;
	
	public String liuyanAll()
	{
		String sql="from TLiuyan where banjiId="+banjiId+" order by liuyanDate desc";
		List liuyanList=liuyanDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("liuyanList", liuyanList);
		request.put("banjiId", banjiId);
		return ActionSupport.SUCCESS;
	}
	
	
	public String liuyanAdd()
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		TLiuyan liuyan=new TLiuyan();
		
		liuyan.setLiuyanContent(liuyanContent);
		liuyan.setLiuyanDate(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		liuyan.setLiuyanUser(user.getXingming());
		liuyan.setBanjiId(banjiId);
		
		liuyanDAO.save(liuyan);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息发布成功");
		return "msg";
	}

	
	public String liuyanMana()
	{
		String sql="from TLiuyan order by liuyanDate desc";
		List liuyanList=liuyanDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("liuyanList", liuyanList);
		return ActionSupport.SUCCESS;
	}
	
	public String liuyanDel()
	{
		TLiuyan liuyan=liuyanDAO.findById(liuyanId);
		liuyanDAO.delete(liuyan);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除完毕");
		return "msg";
	}


	public Integer getLiuyanId()
	{
		return liuyanId;
	}



	public void setLiuyanId(Integer liuyanId)
	{
		this.liuyanId = liuyanId;
	}



	public TLiuyanDAO getLiuyanDAO()
	{
		return liuyanDAO;
	}


	public void setLiuyanDAO(TLiuyanDAO liuyanDAO)
	{
		this.liuyanDAO = liuyanDAO;
	}


	public String getLiuyanContent()
	{
		return liuyanContent;
	}



	public void setLiuyanContent(String liuyanContent)
	{
		this.liuyanContent = liuyanContent;
	}



	public String getLiuyanDate()
	{
		return liuyanDate;
	}



	public void setLiuyanDate(String liuyanDate)
	{
		this.liuyanDate = liuyanDate;
	}



	public String getLiuyanUser()
	{
		return liuyanUser;
	}



	public void setLiuyanUser(String liuyanUser)
	{
		this.liuyanUser = liuyanUser;
	}



	public Integer getBanjiId()
	{
		return banjiId;
	}



	public void setBanjiId(Integer banjiId)
	{
		this.banjiId = banjiId;
	}
	
}
