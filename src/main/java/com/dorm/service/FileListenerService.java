package com.dorm.service;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.WatchEvent;

import org.springframework.stereotype.Service;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.watch.WatchMonitor;
import cn.hutool.core.io.watch.Watcher;

@Service
public class FileListenerService {

	public FileListenerService() {
		// TODO Auto-generated constructor stub
		File file = FileUtil.file("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Data\\dorm");
		WatchMonitor watchMonitor = WatchMonitor.create(file, WatchMonitor.ENTRY_MODIFY);
		watchMonitor.setWatcher(new Watcher() {
			
			@Override
			public void onOverflow(WatchEvent<?> event, Path currentPath) {
				// TODO Auto-generated method stub
				System.err.println("超出内存");
			}
			
			@Override
			public void onModify(WatchEvent<?> event, Path currentPath) {
				// TODO Auto-generated method stub
				System.err.println("文件修改");
			}
			
			@Override
			public void onDelete(WatchEvent<?> event, Path currentPath) {
				// TODO Auto-generated method stub
				System.err.println("文件删除");
			}
			
			@Override
			public void onCreate(WatchEvent<?> event, Path currentPath) {
				// TODO Auto-generated method stub
				System.err.println("文件创造");
			}
		});
		
		//设置监听目录的最大深入，目录层级大于制定层级的变更将不被监听，默认只监听当前层级目录
		watchMonitor.setMaxDepth(3);
		//启动监听
		watchMonitor.start();
	}
}
