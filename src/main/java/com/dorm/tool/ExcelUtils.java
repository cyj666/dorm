package com.dorm.tool;

import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.Raster;
import java.io.UnsupportedEncodingException;

import cn.hutool.core.io.FileUtil;
import cn.hutool.extra.qrcode.QrCodeUtil;

public class ExcelUtils {
	
	/* public static void main(String[] args) {
		 ExcelReader reader = ExcelUtil.getReader(FileUtil.file("D:\\系统文件\\Desktop\\2018年各平台所有人员KPI-1222.xlsx"),2);
		// List<List<Object>> readAll = reader.read();
		 List<Map<String,Object>> readAll = reader.readAll();
		 System.out.println(readAll.get(2));
		 System.out.println(readAll);
	}*/
	
	public static void main(String[] args) throws UnsupportedEncodingException {
		int a = 1;
		String s = "中国";
		String decode = QrCodeUtil.decode(FileUtil.file("d:/test2.jpg"));
		System.out.println(decode);
		/*System.out.println(Convert.bytesToInt(s.getBytes("UTF-8")));*/
	}
	
	
	
	
	private static BufferedImage toGrayImage(BufferedImage image) {
        BufferedImage result = image;
        if (BufferedImage.TYPE_BYTE_GRAY != image.getType()) {
            BufferedImage newImage = new BufferedImage(image.getWidth(), image.getHeight(), BufferedImage.TYPE_BYTE_GRAY);
            newImage.getGraphics().drawImage(image, 0, 0, null);
            result = newImage;
        }
        Raster raster = result.getRaster();
        DataBufferByte buffer = (DataBufferByte) raster.getDataBuffer();
        byte[] data = buffer.getData();
        for (int i = 0; i < data.length; i++) {
            byte value = 0;
            if (data[i] < 32) {
                value = -1;
            }
            buffer.setElem(i, value);
        }
        return result;
    }
}







