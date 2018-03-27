package com.dorm.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

public class TomcatListener implements ServletContextListener {

	private static final Logger log = Logger.getLogger(TomcatListener.class);
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		log.debug("--------------Tomcat服务器开始启动-----------------");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		log.debug("--------------Tomcat服务器即将关闭-----------------");
	}

}
