package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TYuanxiaoDAO;
import com.model.TYuanxiao;
import com.opensymphony.xwork2.ActionSupport;

public class yuanxiaoAction extends ActionSupport
{
	private Integer id;
	private String chinaProvince;
	private String chinaCity;
	private String mingcheng;
	
	private String del;
	
	private TYuanxiaoDAO yuanxiaoDAO;
	
	
	public String yuanxiaoAdd()
	{
		TYuanxiao yuanxiao=new TYuanxiao();
		
		yuanxiao.setChinaProvince(chinaProvince);
		yuanxiao.setChinaCity(chinaCity);
		yuanxiao.setMingcheng(mingcheng);
		yuanxiao.setDel("no");
		
		yuanxiaoDAO.save(yuanxiao);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	/**
	 * 查询学院数据
	 * 修改：地区可选
	 * 
	 * @return
	 */
	public String yuanxiaoRes()
	{
		System.out.println(chinaProvince+"&&&"+chinaCity);
		StringBuffer sql=new StringBuffer("from TYuanxiao where del='no'");
		if(chinaProvince.equals("选择")==false)
		{
			sql.append(" and chinaProvince like '%"+chinaProvince.trim()+"%'");
		}
		if(chinaCity.equals("选择")==false)
		{
			sql.append(" and chinaCity like '%"+chinaCity.trim()+"%'");
		}
		sql.append(" and mingcheng like '%"+mingcheng.trim()+"%'");
		sql.append(" order by chinaProvince,chinaCity");
		List yuanxiaoList=yuanxiaoDAO.getHibernateTemplate().find(sql.toString());
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuanxiaoList", yuanxiaoList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String yuanxiaoDel()
	{
		
		TYuanxiao yuanxiao=yuanxiaoDAO.findById(id);
		yuanxiao.setDel("yes");
		
		yuanxiaoDAO.attachDirty(yuanxiao);
		
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


	public String getDel()
	{
		return del;
	}


	public void setDel(String del)
	{
		this.del = del;
	}


	public TYuanxiaoDAO getYuanxiaoDAO()
	{
		return yuanxiaoDAO;
	}


	public void setYuanxiaoDAO(TYuanxiaoDAO yuanxiaoDAO)
	{
		this.yuanxiaoDAO = yuanxiaoDAO;
	}
	
}
