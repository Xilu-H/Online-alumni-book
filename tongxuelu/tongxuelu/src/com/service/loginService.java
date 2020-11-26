package com.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.dao.TAdminDAO;
import com.dao.TUserDAO;
import com.dao.TYuanxiaoDAO;
import com.model.TAdmin;
import com.model.TJiaru;
import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;

public class loginService
{
	private TAdminDAO adminDAO;
	private TUserDAO userDAO;
	private TYuanxiaoDAO yuanxiaoDAO;
	
	public TAdminDAO getAdminDAO()
	{
		return adminDAO;
	}
	public void setAdminDAO(TAdminDAO adminDAO)
	{
		this.adminDAO = adminDAO;
	}
	
	
	public TYuanxiaoDAO getYuanxiaoDAO()
	{
		return yuanxiaoDAO;
	}
	public void setYuanxiaoDAO(TYuanxiaoDAO yuanxiaoDAO)
	{
		this.yuanxiaoDAO = yuanxiaoDAO;
	}
	public TUserDAO getUserDAO()
	{
		return userDAO;
	}
	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}
	/**
	 * 注册用户
	 * 该功能仅能注册普通童用户
	 * @param name
	 * @param phone
	 * @param xuehao
	 * @param userName
	 * @param userPw
	 * @return
	 */
	public String register(String name,String phone,String xuehao,String userName,String userPw){
		String res="no";
		
		//查询是否已存在同名用户
		String sql="from TUser where xingming=? or xuehao=? or xiandianhua=? or loginname=?";
		Object[] con={name,xuehao,phone,userName};
		List userList=userDAO.getHibernateTemplate().find(sql,con);
		if(userList.size()>0)
		{
			TUser tUser=(TUser)userList.get(0);
			System.out.println(tUser.getId());
			
			if(tUser.getXingming().equals(name)){
				res="该姓名已存在";	
			}else if(tUser.getXiandianhua().equals(phone)){
				res="手机号码已存在";	
			}else if(tUser.getLoginname().equals(userName)){
				res="登录名已存在";
			}else if(tUser.getXuehao().equals(xuehao)){
				res="学号已存在";
			}
			return res;
		}else{
			//入库
			TUser user=new TUser();
			
			user.setXuehao(xuehao);
			user.setXingming(name);
			user.setXiandianhua(phone);
			user.setXingbie("");
			user.setNianling("");
			user.setLoginname(userName);
			user.setLoginpw(userPw);
			user.setXiandanwei("");
			user.setXiandizhi("");
			user.setDel("no");

			userDAO.save(user);
			res="yes";
			//注册完成，自动登录
			WebContext ctx = WebContextFactory.get(); 
			HttpSession session=ctx.getSession(); 
			 
			session.setAttribute("userType", 1);
	        session.setAttribute("user", user);
	        
		}
   
		return res;
	}
	public String login(String userName,String userPw,int userType)
	{
		
		String result="no";
		
		if(userType==0)//系统管理员登陆
		{
			String sql="from TAdmin where userName=? and userPw=?";
			Object[] con={userName,userPw};
			List adminList=adminDAO.getHibernateTemplate().find(sql,con);
			if(adminList.size()==0)
			{
				 result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TAdmin admin=(TAdmin)adminList.get(0);
				 session.setAttribute("userType", 0);
	             session.setAttribute("admin", admin);
	             result="yes";
			}
		}
		if(userType==1)
		{
			String sql="from TUser where loginname=? and loginpw=?  and del='no'";
			Object[] con={userName,userPw};
			List userList=userDAO.getHibernateTemplate().find(sql,con);
			if(userList.size()==0)
			{
				result="no";
			}
			else
			{
				 WebContext ctx = WebContextFactory.get(); 
				 HttpSession session=ctx.getSession(); 
				 TUser user=(TUser)userList.get(0);
				 session.setAttribute("userType", 1);
	             session.setAttribute("user", user);
	             
	             result="yes";
			}
		}
		if(userType==2)
		{
		}
		return result;
	}
	
	
	public String userLogout()
	{
		try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 WebContext ctx = WebContextFactory.get(); 
		 HttpSession session=ctx.getSession(); 
		 
		 session.setAttribute("userType", null);
	     session.setAttribute("user", null);
	     
	     return "yes";
	}

    public String adminPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TAdmin admin=(TAdmin)session.getAttribute("admin");
		admin.setUserPw(userPwNew);
		
		adminDAO.getHibernateTemplate().update(admin);
		session.setAttribute("admin", admin);
		
		return "yes";
    }
    
    
    public List yuanxiaoAll(String chinaCity)
    {
    	StringBuffer sql=new StringBuffer("from TYuanxiao where del='no'");
		sql.append(" and chinaCity like '%"+chinaCity.trim()+"%'");
		List yuanxiaoList=yuanxiaoDAO.getHibernateTemplate().find(sql.toString());
		
		return yuanxiaoList;
    }
}
