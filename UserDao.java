package com.springmvc.dao;

import java.util.List;

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
	public void saveUser(User user) {
		this.hibernateTemplate.saveOrUpdate(user);
	}

	public User login(String useremail, String password) {
		String hql = "FROM User WHERE useremail = :useremail AND password = :password";

		return hibernateTemplate.execute(session -> {
			Query<User> query = session.createQuery(hql, User.class);
			query.setParameter("useremail", useremail);
			query.setParameter("password", password);

			// Cast the result to User
			return (User) query.uniqueResult();
		});
	}

	public List<User> getAll() {
		return this.hibernateTemplate.loadAll(User.class);

	}

	@Transactional
	public void deleteEmpolyee(int userid) {
		User user1 = this.hibernateTemplate.load(User.class, userid);
		System.out.println(user1);
		this.hibernateTemplate.delete(user1);
	}

	public User getUser(int userid) {
		return this.hibernateTemplate.get(User.class, userid);
	}

}
