package com.springmvc.dao;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.model.User;

@Repository
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int saveUser(User user) {
		int id = (Integer) this.hibernateTemplate.save(user);
		return id;
	}

	public User loginUser(String email, String password) {
		String sql = "from User where email=:em and password=:pwd";
		User us = (User) hibernateTemplate.execute(s -> {
			Query q = (Query) s.createQuery(sql);
			q.setString("em", email);
			q.setString("pwd", password);
			return q.uniqueResult();
		});

		return us;
	}

}
