package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TBanji;

/**
 * A data access object (DAO) providing persistence and search support for
 * TBanji entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.TBanji
 * @author MyEclipse Persistence Tools
 */

public class TBanjiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TBanjiDAO.class);
	// property constants
	public static final String CHINA_PROVINCE = "chinaProvince";
	public static final String CHINA_CITY = "chinaCity";
	public static final String ZHUANYE = "zhuanye";
	public static final String YUANXIAO_ID = "yuanxiaoId";
	public static final String MINGCHENG = "mingcheng";
	public static final String CHUANGJIAN_USER_ID = "chuangjianUserId";
	public static final String CHUANGJIANSHI = "chuangjianshi";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TBanji transientInstance)
	{
		log.debug("saving TBanji instance");
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

	public void delete(TBanji persistentInstance)
	{
		log.debug("deleting TBanji instance");
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

	public TBanji findById(java.lang.Integer id)
	{
		log.debug("getting TBanji instance with id: " + id);
		try
		{
			TBanji instance = (TBanji) getHibernateTemplate().get(
					"com.model.TBanji", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TBanji instance)
	{
		log.debug("finding TBanji instance by example");
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
		log.debug("finding TBanji instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TBanji as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByChinaProvince(Object chinaProvince)
	{
		return findByProperty(CHINA_PROVINCE, chinaProvince);
	}

	public List findByChinaCity(Object chinaCity)
	{
		return findByProperty(CHINA_CITY, chinaCity);
	}

	public List findByYuanxiaoId(Object yuanxiaoId)
	{
		return findByProperty(YUANXIAO_ID, yuanxiaoId);
	}
	public List findByZhuanye(Object zhuanye){
		return findByProperty(ZHUANYE, zhuanye);
	}

	public List findByMingcheng(Object mingcheng)
	{
		return findByProperty(MINGCHENG, mingcheng);
	}

	public List findByChuangjianUserId(Object chuangjianUserId)
	{
		return findByProperty(CHUANGJIAN_USER_ID, chuangjianUserId);
	}

	public List findByChuangjianshi(Object chuangjianshi)
	{
		return findByProperty(CHUANGJIANSHI, chuangjianshi);
	}

	public List findAll()
	{
		log.debug("finding all TBanji instances");
		try
		{
			String queryString = "from TBanji";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TBanji merge(TBanji detachedInstance)
	{
		log.debug("merging TBanji instance");
		try
		{
			TBanji result = (TBanji) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TBanji instance)
	{
		log.debug("attaching dirty TBanji instance");
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

	public void attachClean(TBanji instance)
	{
		log.debug("attaching clean TBanji instance");
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

	public static TBanjiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TBanjiDAO) ctx.getBean("TBanjiDAO");
	}
}