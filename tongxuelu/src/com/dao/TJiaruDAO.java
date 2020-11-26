package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TJiaru;

/**
 * A data access object (DAO) providing persistence and search support for
 * TJiaru entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.TJiaru
 * @author MyEclipse Persistence Tools
 */

public class TJiaruDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TJiaruDAO.class);
	// property constants
	public static final String BANJI_ID = "banjiId";
	public static final String USER_ID = "userId";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TJiaru transientInstance)
	{
		log.debug("saving TJiaru instance");
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

	public void delete(TJiaru persistentInstance)
	{
		log.debug("deleting TJiaru instance");
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

	public TJiaru findById(java.lang.Integer id)
	{
		log.debug("getting TJiaru instance with id: " + id);
		try
		{
			TJiaru instance = (TJiaru) getHibernateTemplate().get(
					"com.model.TJiaru", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TJiaru instance)
	{
		log.debug("finding TJiaru instance by example");
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
		log.debug("finding TJiaru instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TJiaru as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBanjiId(Object banjiId)
	{
		return findByProperty(BANJI_ID, banjiId);
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findAll()
	{
		log.debug("finding all TJiaru instances");
		try
		{
			String queryString = "from TJiaru";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TJiaru merge(TJiaru detachedInstance)
	{
		log.debug("merging TJiaru instance");
		try
		{
			TJiaru result = (TJiaru) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TJiaru instance)
	{
		log.debug("attaching dirty TJiaru instance");
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

	public void attachClean(TJiaru instance)
	{
		log.debug("attaching clean TJiaru instance");
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

	public static TJiaruDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TJiaruDAO) ctx.getBean("TJiaruDAO");
	}
}