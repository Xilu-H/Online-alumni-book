package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TBanjiDAO;
import com.dao.TUserDAO;
import com.dao.TYuanxiaoDAO;
import com.model.TBanji;
import com.model.TUser;
import com.model.TYuanxiao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class banjiAction extends ActionSupport
{
	private Integer id;
	private String chinaProvince;
	private String chinaCity;
	private Integer yuanxiaoId;
	
	private String mingcheng;
	private Integer chuangjianUserId;
	private String chuangjianshi;
	private String zhuanye;
	
	private TUserDAO userDAO;
	private TBanjiDAO banjiDAO;
	private TYuanxiaoDAO yuanxiaoDAO;
	
	
	
	public String banjiAdd()
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		TBanji banji=new TBanji();
		
		banji.setChinaProvince(chinaProvince);
		banji.setChinaCity(chinaCity);
		banji.setYuanxiaoId(yuanxiaoId);
		banji.setMingcheng(mingcheng);
		banji.setZhuanye(zhuanye);
		
		banji.setChuangjianUserId(user.getId());
		banji.setChuangjianshi(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		
		
		banjiDAO.save(banji);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg1", "班级创建成功");
		return "msg1";
	}
	
	
	public String banjiMine()
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		StringBuffer sql=new StringBuffer("from TBanji where chuangjianUserId="+user.getId());
		List banjiList=banjiDAO.getHibernateTemplate().find(sql.toString());
		for(int i=0;i<banjiList.size();i++)
		{
			TBanji banji=(TBanji)banjiList.get(i);
			banji.setYuanxiao(yuanxiaoDAO.findById(banji.getYuanxiaoId()));
			banji.setChuangjianUser(userDAO.findById(banji.getChuangjianUserId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("banjiList", banjiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String banjiRes()
	{
		StringBuffer sql=new StringBuffer("from TBanji where yuanxiaoId="+yuanxiaoId);
		List banjiList=banjiDAO.getHibernateTemplate().find(sql.toString());
		for(int i=0;i<banjiList.size();i++)
		{
			TBanji banji=(TBanji)banjiList.get(i);
			banji.setChuangjianUser(userDAO.findById(banji.getChuangjianUserId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("banjiList", banjiList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String banjiMana()
	{
		StringBuffer sql=new StringBuffer("from TBanji order by chinaProvince,chinaCity,yuanxiaoId");
		List banjiList=banjiDAO.getHibernateTemplate().find(sql.toString());
		for(int i=0;i<banjiList.size();i++)
		{
			TBanji banji=(TBanji)banjiList.get(i);
			banji.setYuanxiao(yuanxiaoDAO.findById(banji.getYuanxiaoId()));
			banji.setChuangjianUser(userDAO.findById(banji.getChuangjianUserId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("banjiList", banjiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String banjiDel()
	{
		TBanji banji=banjiDAO.findById(id);
		banjiDAO.delete(banji);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除成功");
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


	public String getChinaProvince()
	{
		return chinaProvince;
	}


	public TYuanxiaoDAO getYuanxiaoDAO()
	{
		return yuanxiaoDAO;
	}


	public void setYuanxiaoDAO(TYuanxiaoDAO yuanxiaoDAO)
	{
		this.yuanxiaoDAO = yuanxiaoDAO;
	}


	public void setChinaProvince(String chinaProvince)
	{
		this.chinaProvince = chinaProvince;
	}


	public String getChinaCity()
	{
		return chinaCity;
	}


	public void setChinaCity(String chinaCity)
	{
		this.chinaCity = chinaCity;
	}


	public String getMingcheng()
	{
		return mingcheng;
	}


	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}


	public Integer getChuangjianUserId()
	{
		return chuangjianUserId;
	}


	public void setChuangjianUserId(Integer chuangjianUserId)
	{
		this.chuangjianUserId = chuangjianUserId;
	}


	public String getChuangjianshi()
	{
		return chuangjianshi;
	}


	public void setChuangjianshi(String chuangjianshi)
	{
		this.chuangjianshi = chuangjianshi;
	}


	public Integer getYuanxiaoId()
	{
		return yuanxiaoId;
	}


	public void setYuanxiaoId(Integer yuanxiaoId)
	{
		this.yuanxiaoId = yuanxiaoId;
	}


	public TUserDAO getUserDAO()
	{
		return userDAO;
	}


	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}


	public TBanjiDAO getBanjiDAO()
	{
		return banjiDAO;
	}


	public void setBanjiDAO(TBanjiDAO banjiDAO)
	{
		this.banjiDAO = banjiDAO;
	}


	public String getZhuanye() {
		return zhuanye;
	}


	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}


}
