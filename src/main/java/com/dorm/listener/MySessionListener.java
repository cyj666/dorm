package com.dorm.listener;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;

public class MySessionListener implements SessionListener {

	
	@Override
	public void onStart(Session session) {
		// TODO Auto-generated method stub
		 System.out.println("会话创建：" + session.getId());
	}

	@Override
	public void onStop(Session session) {
		// TODO Auto-generated method stub
		System.out.println("退出会话：" + session.getId());  
	}

	@Override
	public void onExpiration(Session session) {
		// TODO Auto-generated method stub
		System.out.println("会话过期：" + session.getId());
	}

}
