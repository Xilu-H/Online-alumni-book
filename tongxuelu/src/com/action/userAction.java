package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TUserDAO;
import com.model.TJiaru;
import com.model.TUser;
import com.model.TYuanxiao;
import com.opensymphony.xwork2.ActionSupport;

public class userAction extends ActionSupport
{
	private Integer id;
	private String xuehao;
	private String xingming;
	private String xingbie;

	private String nianling;
	private String loginname;
	private String loginpw;
	private String xiandizhi;
	
	private String xiandanwei;
	private String xiandianhua;
	private String del;

	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	
	
	
	public String userReg()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		String sql="from TUser where loginname=? and del='no'";
		Object[] c={loginname.trim()};
		List list=userDAO.getHibernateTemplate().find(sql,c);
		if(list.size()>0)
		{
			request.put("msg", "账号已被占用，请重新注册");
			
			return "msg";
		}
		
		TUser user=new TUser();
		
		user.setXuehao(xuehao);
		user.setXingming(xingming);
		user.setXingbie(xingbie);
		user.setNianling(nianling);
		
		user.setLoginname(loginname);
		user.setLoginpw(loginpw);
		user.setXiandizhi(xiandizhi);
		user.setXiandanwei(xiandanwei);
		
		user.setXiandianhua(xiandianhua);
		user.setDel("no");
		
		userDAO.save(user);
		
		
		request.put("msg", "注册成功。请登录");
		
		return "msg";
	}
	
	public String userMana(){
		System.out.println("TEST");
		StringBuffer sql=new StringBuffer("from TUser where del='no'");
		
		List userList=userDAO.getHibernateTemplate().find(sql.toString());
	
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		System.out.println(userList.toString());
		return ActionSupport.SUCCESS;	
	}
	public String userDel(){
		TUser user=userDAO.findById(id);
		user.setDel("yes");
		
		userDAO.attachDirty(user);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "用户删除成功");
		return "msg";
	}
	
	
	public String userEdit()
	{
		TUser user=userDAO.findById(id);
		
		user.setXuehao(xuehao);
		user.setXingming(xingming);
		user.setXingbie(xingbie);
		user.setNianling(nianling);
		
		user.setLoginname(loginname);
		user.setLoginpw(loginpw);
		user.setXiandizhi(xiandizhi);
		user.setXiandanwei(xiandanwei);
		
		user.setXiandianhua(xiandianhua);
		user.setDel("no");
		
		userDAO.attachDirty(user);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg1", "修改成功，重新登录后生效");
		
		return "msg1";
	}
	


	public String getLoginname()
	{
		return loginname;
	}

	public void setLoginname(String loginname)
	{
		this.loginname = loginname;
	}

	public String getDel()
	{
		return del;
	}

	public void setDel(String del)
	{
		this.del = del;
	}

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getLoginpw()
	{
		return loginpw;
	}

	public void setLoginpw(String loginpw)
	{
		this.loginpw = loginpw;
	}

	public String getXiandizhi() {
		return xiandizhi;
	}



	public void setXiandizhi(String xiandizhi) {
		this.xiandizhi = xiandizhi;
	}



	public String getXiandanwei() {
		return xiandanwei;
	}



	public void setXiandanwei(String xiandanwei) {
		this.xiandanwei = xiandanwei;
	}



	public String getXiandianhua() {
		return xiandianhua;
	}



	public void setXiandianhua(String xiandianhua) {
		this.xiandianhua = xiandianhua;
	}



	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getNianling()
	{
		return nianling;
	}

	public void setNianling(String nianling)
	{
		this.nianling = nianling;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}

	public String getXingbie()
	{
		return xingbie;
	}

	public void setXingbie(String xingbie)
	{
		this.xingbie = xingbie;
	}

	public String getXingming()
	{
		return xingming;
	}

	public void setXingming(String xingming)
	{
		this.xingming = xingming;
	}

	public String getXuehao()
	{
		return xuehao;
	}

	public void setXuehao(String xuehao)
	{
		this.xuehao = xuehao;
	}

}
