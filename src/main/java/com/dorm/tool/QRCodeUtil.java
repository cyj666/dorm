package com.dorm.tool;

import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;

import org.apache.commons.lang.StringUtils;

import com.google.zxing.Binarizer;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;

public class QRCodeUtil {
	private static final int MAX_QRCODE_SIXE = 1500;
	
	public static void main(String[] args) throws FileNotFoundException, IOException {
		System.out.println(readToString(ImageIO.read(new FileInputStream("D:\\kk.jpg"))));
	}
	 
    public static String readToString(BufferedImage sourceImage) {
        BufferedImage image = toGrayImage(sourceImage);
        if (sourceImage.getWidth() > MAX_QRCODE_SIXE && sourceImage.getHeight() > MAX_QRCODE_SIXE) {// second
            image = resizeToMaxSize(sourceImage);
        }
        String result = readDirectly(image);
        if (StringUtils.isNotBlank(result)) {
            return result;
        }
        int minSize = 170;
        int imgSize = Math.min(image.getWidth(), image.getHeight());
        int level = 1;
        while (imgSize > minSize) {
            BufferedImage newImage = new BufferedImage((int) (image.getWidth() * Math.pow(0.9, level)),
                    (int) (image.getHeight() * Math.pow(0.9, level)), image.getType());
            newImage.getGraphics().drawImage(image, 0, 0, newImage.getWidth(), newImage.getHeight(), 0, 0, image.getWidth(),
                    image.getHeight(), null);
            result = readDirectly(newImage);
            if (StringUtils.isNotBlank(result)) {
                return result;
            }
            imgSize = Math.min(newImage.getWidth(), newImage.getHeight());
            level++;
        }
        return "";
    }
 
    /**
     * 将图片转成灰阶。
     *
     * @param image
     * @return
     */
    private static BufferedImage toGrayImage(BufferedImage image) {
        BufferedImage result = image;
        if (BufferedImage.TYPE_BYTE_GRAY != image.getType()) {
            BufferedImage newImage = new BufferedImage(image.getWidth(), image.getHeight(), BufferedImage.TYPE_BYTE_GRAY);
            newImage.getGraphics().drawImage(image, 0, 0, null);
            result = newImage;
        }
        /*黑白处理
Raster raster = result.getRaster();
        DataBufferByte buffer = (DataBufferByte) raster.getDataBuffer();
        byte[] data = buffer.getData();
        for (int i = 0; i < data.length; i++) {
            byte value = 0;
            if (data[i] < 32) {
                value = -1;
            }
            buffer.setElem(i, value);
        }*/
        return result;
    }
 
    /**
     * 图片若过大，则缩放图片。
     *
     * @param image
     * @return
     */
    private static BufferedImage resizeToMaxSize(BufferedImage image) {
        int height = MAX_QRCODE_SIXE;
        int width = MAX_QRCODE_SIXE;
        if (image.getWidth() > image.getHeight()) {
            width = (int) (height * (((double) image.getWidth()) / image.getHeight()));
        } else {
            height = (int) (width * (((double) image.getHeight()) / image.getWidth()));
        }
        BufferedImage newImage = new BufferedImage(width, height, BufferedImage.TYPE_BYTE_GRAY);
        newImage.getGraphics().drawImage(image, 0, 0, newImage.getWidth() + 1, newImage.getHeight() + 1, 0, 0, image.getWidth(),
                image.getHeight(), null);
        return newImage;
    }
 
    private static String readDirectly(BufferedImage image) {
        LuminanceSource source = new BufferedImageLuminanceSource(image);
        Binarizer binarizer = new HybridBinarizer(source);
        BinaryBitmap binaryBitmap = new BinaryBitmap(binarizer);
        Map<DecodeHintType, Object> hints = new HashMap<DecodeHintType, Object>();
        hints.put(DecodeHintType.CHARACTER_SET, "UTF-8");
        try {
            return new MultiFormatReader().decode(binaryBitmap, hints).getText();
        } catch (NotFoundException e) {
            return "";
        }
    }
}
