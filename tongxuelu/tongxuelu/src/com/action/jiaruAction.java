package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TBanjiDAO;
import com.dao.TJiaruDAO;
import com.model.TJiaru;
import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class jiaruAction extends ActionSupport
{
	private Integer id;
	private Integer banjiId;
	private Integer userId;
	
	private TJiaruDAO jiaruDAO;
	private TBanjiDAO banjiDAO;
	
	
	
	
	
	public String jiaruMine()
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		StringBuffer sql=new StringBuffer("from TJiaru where userId="+user.getId());
		
		List jiaruList=jiaruDAO.getHibernateTemplate().find(sql.toString());
		for(int i=0;i<jiaruList.size();i++)
		{
			TJiaru jiaru=(TJiaru)jiaruList.get(i);
			
			if(jiaru.getBanjiId()>0){
				jiaru.setBanji(banjiDAO.findById(jiaru.getBanjiId()));
			}
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jiaruList", jiaruList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String jiaruAdd()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String s=panduan_shifou_jiaru(banjiId, user.getId());
		System.out.println(s);
		if(s.equals("yijingjiaru"))
		{
			request.put("msg1", "已经加入该班级，不能重复加入");
		}
		else
		{
			TJiaru jiaru=new TJiaru();
			
			jiaru.setBanjiId(banjiId);
			jiaru.setUserId(user.getId());
			
			jiaruDAO.save(jiaru);
			
			request.put("msg1", "成功加入该班级");
		}
		
		
		return "msg1";
	}


    public String panduan_shifou_jiaru(int banjiId,int userId)
    {
    	String sql="from TJiaru where banjiId=? and userId=?";
    	Object[] c={banjiId,userId};
    	List list=jiaruDAO.getHibernateTemplate().find(sql,c);
    	if(list.size()>0)
    	{
    		return "yijingjiaru";
    	}
    	else
    	{
    		return "meiyoujiaru";
    	}
    	
    }


	public Integer getId()
	{
		return id;
	}





	public void setId(Integer id)
	{
		this.id = id;
	}





	public Integer getBanjiId()
	{
		return banjiId;
	}





	public void setBanjiId(Integer banjiId)
	{
		this.banjiId = banjiId;
	}





	public Integer getUserId()
	{
		return userId;
	}





	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}





	public TJiaruDAO getJiaruDAO()
	{
		return jiaruDAO;
	}





	public void setJiaruDAO(TJiaruDAO jiaruDAO)
	{
		this.jiaruDAO = jiaruDAO;
	}





	public TBanjiDAO getBanjiDAO()
	{
		return banjiDAO;
	}





	public void setBanjiDAO(TBanjiDAO banjiDAO)
	{
		this.banjiDAO = banjiDAO;
	}

}
