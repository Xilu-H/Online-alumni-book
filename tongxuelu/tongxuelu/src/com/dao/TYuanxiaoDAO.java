package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TYuanxiao;

/**
 * Data access object (DAO) for domain model class TYuanxiao.
 * 
 * @see com.model.TYuanxiao
 * @author MyEclipse Persistence Tools
 */

public class TYuanxiaoDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TYuanxiaoDAO.class);

	protected void initDao()
	{
		// do nothing
	}

	public void save(TYuanxiao transientInstance)
	{
		log.debug("saving TYuanxiao instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TYuanxiao persistentInstance)
	{
		log.debug("deleting TYuanxiao instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TYuanxiao findById(java.lang.Integer id)
	{
		log.debug("getting TYuanxiao instance with id: " + id);
		try
		{
			TYuanxiao instance = (TYuanxiao) getHibernateTemplate().get(
					"com.model.TYuanxiao", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TYuanxiao instance)
	{
		log.debug("finding TYuanxiao instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TYuanxiao instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TYuanxiao as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll()
	{
		log.debug("finding all TYuanxiao instances");
		try
		{
			String queryString = "from TYuanxiao";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TYuanxiao merge(TYuanxiao detachedInstance)
	{
		log.debug("merging TYuanxiao instance");
		try
		{
			TYuanxiao result = (TYuanxiao) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TYuanxiao instance)
	{
		log.debug("attaching dirty TYuanxiao instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TYuanxiao instance)
	{
		log.debug("attaching clean TYuanxiao instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TYuanxiaoDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TYuanxiaoDAO) ctx.getBean("TYuanxiaoDAO");
	}
}