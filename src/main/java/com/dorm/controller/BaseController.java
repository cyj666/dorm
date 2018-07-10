package com.dorm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.UnauthenticatedException;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.context.request.async.WebAsyncTask;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Room;
import com.dorm.pojo.RoomEmployeeDetails;
import com.dorm.pojo.User;
import com.dorm.service.EmployeeService;
import com.dorm.service.RoomEmployeeDetailsService;
import com.dorm.service.RoomService;
import com.dorm.service.UserService;
import com.dorm.tool.CaptchaUtil;
import com.dorm.tool.ImgUtil;

@Controller
public class BaseController {

	@Autowired
	UserService userService;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	RoomService roomService;
	
	@Autowired
	RoomEmployeeDetailsService roomEmployeeDetailsService;
	
	/*测试代码*/
	/*@RequestMapping("/test")
	@ResponseBody
	public String test() {
		return "hello world"; 
	}*/
	
	
	
	/**
	 * 验证码实现
	 */
	@RequestMapping(value = "/captchaCode", method = RequestMethod.GET)
	@ResponseBody
	public void captcha(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CaptchaUtil.outputCaptcha(request, response);
	}
	
	/**
	 * 测试
	 */
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	@ResponseBody
	public void test(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ImgUtil.show("D:\\lly.jpg", request, response);
	}
	
	
	/*测试代码*/
	/*@RequestMapping(value="/getDetils",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getDetils() {
		RoomEmployeeDetails details = new RoomEmployeeDetails();
		details.setRoomNo("610");
		List<RoomEmployeeDetails> list = roomEmployeeDetailsService.getDetails(details);
		for (RoomEmployeeDetails roomEmployeeDetails : list) {
			roomEmployeeDetails.setRoomNo("611");
			roomEmployeeDetailsService.updateRoom(roomEmployeeDetails);
			list = roomEmployeeDetailsService.getDetails(details);
		}
		
		return list.toString();
		
	}*/
	
	
	@RequestMapping("/{active}")
	public String getUrl(@PathVariable String active) {
		return active;
	}
	
	
	@RequestMapping("main")
	public String getUrl2() {
		return "/system/main";
	}
	
	/*自定义跳转方式*/
	@RequestMapping(value="BaseController.do",method=RequestMethod.GET)
	public String getUrl4(@RequestParam(value="url")String url) {
		
		return "/system/"+url;
	}
	
	
	 @ExceptionHandler({UnauthenticatedException.class})
	 @ResponseStatus(value=HttpStatus.FORBIDDEN,reason="账号未登录,请先登录")
	 @ResponseBody
	 public ModelAndView processUnauthenticatedException(NativeWebRequest request, Exception ex) {
	   // log.info("==========进入了异常处理方法，使用@ExceptionHandler处理异常");
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("ex", ex);	    
	    // 为了区分，跳转掉另一个视图
	    mv.setViewName("error/404");
	    return mv;
	    }
	

	 @ExceptionHandler({UnauthorizedException.class})
	 @ResponseStatus(value=HttpStatus.UNAUTHORIZED,reason="账号未登录,请先登录")
	 @ResponseBody
	 public ModelAndView processUnauthenticatedException2(NativeWebRequest request, Exception ex) {
	   // log.info("==========进入了异常处理方法，使用@ExceptionHandler处理异常");
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("ex", ex);	    
	    // 为了区分，跳转掉另一个视图
	    mv.setViewName("error/404");
	    return mv;
	    }
	 
	 
	@RequiresUser
	@RequestMapping(value="buss",method=RequestMethod.GET)
	public String getUrl5(@RequestParam(value="url")String url) {
		
		return "/buss/"+url;
	}
		
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String getUrl6() {		
		return "/system/login";
	}
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String getUrl11() {	
		if (SecurityUtils.getSubject().getPrincipal()==null) {
			return "/system/login";
		}
		return "/system/main";
	}
				
	
	/*测试SpringMVC异步处理，用于优化系统响应速度 */
	@RequestMapping(value="18",produces="text/html;charset=utf-8")
	@ResponseBody
	public Callable<String> getUrl18(@CookieValue(value="JSESSIONID") final String id) {
		final List<Room> rooms = roomService.getAllRoomDetails();	
		return new Callable<String>() {

			@Override
			public String call() throws Exception {
				// TODO Auto-generated method stub
				Thread.sleep(2000);
				return rooms.toString();
			}
		};
	}
	
	/*测试SpringMVC异步处理， 用于优化系统响应速度 */
	/**
	 * 自定义超时时间
	 * @return
	 */
	/*@RequestMapping(value="19",produces="text/html;charset=utf-8")
	@ResponseBody
	public WebAsyncTask<String> getUrl19() {
		Callable<String> callable = new Callable<String>() {

			@Override
			public String call() throws Exception {
				// TODO Auto-generated method stub
				Thread.sleep(4000);
				return "试试callable";
			}
		};
		return new WebAsyncTask<>(5000, callable);
	}*/
	
	@RequestMapping(value="/excel",produces="text/html;charset=utf-8",method=RequestMethod.GET)
	@ResponseBody
	public String getExcelTest(@RequestParam(required=true,value="arr")String arr) {
		
		return arr;
		
	}
	

	
}
