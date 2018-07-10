package com.dorm.tool;

import java.awt.Color;
import java.awt.Font;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.imageio.stream.FileImageOutputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.xmlbeans.impl.common.IOUtil;

import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.ImageUtil;

public class ImgUtil {

	public static void show(String url,HttpServletRequest request,HttpServletResponse response) throws IOException {
		File file = new File(url);
		InputStream is = new FileInputStream(file);
		OutputStream out = response.getOutputStream();
		//ImageUtil.pressText(is, out, "牛啤酒",Color.GREEN,new Font("宋体", Font.ITALIC, 50), 30, 100, 1F);
		ImageUtil.gray(is, out);
		int n = 0;
		while ((n=is.read())!=-1) {
			out.write(n);
		}
		out.flush();
		out.close();
	}
}
