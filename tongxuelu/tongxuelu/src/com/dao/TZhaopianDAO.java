package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TZhaopian;

/**
 * Data access object (DAO) for domain model class TZhaopian.
 * 
 * @see com.model.TZhaopian
 * @author MyEclipse Persistence Tools
 */

public class TZhaopianDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TZhaopianDAO.class);

	// property constants
	public static final String TITLE = "title";

	public static final String FUJIAN = "fujian";

	public static final String JIESHAO = "jieshao";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TZhaopian transientInstance)
	{
		log.debug("saving TZhaopian instance");
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

	public void delete(TZhaopian persistentInstance)
	{
		log.debug("deleting TZhaopian instance");
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

	public TZhaopian findById(java.lang.Integer id)
	{
		log.debug("getting TZhaopian instance with id: " + id);
		try
		{
			TZhaopian instance = (TZhaopian) getHibernateTemplate().get(
					"com.model.TZhaopian", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TZhaopian instance)
	{
		log.debug("finding TZhaopian instance by example");
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
		log.debug("finding TZhaopian instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TZhaopian as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTitle(Object title)
	{
		return findByProperty(TITLE, title);
	}

	public List findByFujian(Object fujian)
	{
		return findByProperty(FUJIAN, fujian);
	}

	public List findByJieshao(Object jieshao)
	{
		return findByProperty(JIESHAO, jieshao);
	}


	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TZhaopian instances");
		try
		{
			String queryString = "from TZhaopian";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TZhaopian merge(TZhaopian detachedInstance)
	{
		log.debug("merging TZhaopian instance");
		try
		{
			TZhaopian result = (TZhaopian) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TZhaopian instance)
	{
		log.debug("attaching dirty TZhaopian instance");
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

	public void attachClean(TZhaopian instance)
	{
		log.debug("attaching clean TZhaopian instance");
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

	public static TZhaopianDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TZhaopianDAO) ctx.getBean("TZhaopianDAO");
	}
}