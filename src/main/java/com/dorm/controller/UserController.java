package com.dorm.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.ExpiredCredentialsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Role;
import com.dorm.pojo.User;
import com.dorm.service.RoleService;
import com.dorm.service.UserService;

@Controller
public class UserController {
	
	
	@Autowired
	UserService userService;
	
	@Autowired
	RoleService roleService;
	
	@RequiresPermissions(value= {"get:user"})
	@RequestMapping(value="getAllUser",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	@ResponseBody
	public String getAllUser() {
		//User user = userService.getUserById(1);
		List<User> list = userService.getAllUser();	
		list = userService.getAllUserDetails();
		String json = JSON.toJSONString(list,SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+list.size()+",\"rows\":"+json+"}";
		return JSON;
	}
	
	@RequiresPermissions(value= {"get:user"})
	@RequestMapping("/getUser")
	@ResponseBody
	public String getUser(@RequestParam(value="id",defaultValue="1")int id,
			@RequestParam(value="username",defaultValue="admin")String username) {
		User user = userService.getUserById(id);
		return user.toString();
		
	}

	
	
	@RequestMapping(value="login",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String login(@RequestParam(value="username")String username,
			@RequestParam(value="password")String password,
			@RequestParam(value="captcha")String captcha,
			HttpServletRequest request,HttpServletResponse response,Model model) {
		HttpSession session = request.getSession();
		String randomString = captcha.toUpperCase();
		String msg = null;
		User user =  new User();
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		try {
			if (!session.getAttribute("randomString").equals(randomString)) {
				msg="验证码出错！请检查。";
				model.addAttribute("message", msg);	
				String result = "{\"success\":false,\"msg\":\"验证码出错！请检查。\"}";
				return result;
			}

			//默认记住我			
			token.setRememberMe(true);
			token.setHost(request.getRemoteAddr());
			Subject subject = SecurityUtils.getSubject();
		    subject.login(token); 
		    msg="登录成功！登录IP:"+token.getHost();		    
		    user =  userService.getUserByUsername(username);
		    user.setLastIp(request.getRemoteAddr());
		    user.setLastTime(new Date());
		    userService.updateUser(user);
	        model.addAttribute("message", msg);	
	        //model.addAttribute("user", user);	
	        String result = "{\"success\":true,\"msg\":\""+msg+"。\"}";
			return result;  
		} catch (IncorrectCredentialsException e) {  
	        msg ="帐号"+ token.getPrincipal()+"登录密码错误。";  
	        model.addAttribute("message", msg);  
	        System.out.println(msg);  
	    } catch (ExcessiveAttemptsException e) {  
	        msg = "登录失败次数过多";  
	        model.addAttribute("message", msg);  
	        System.out.println(msg);  
	    } catch (LockedAccountException e) {  
	        msg ="帐号"+ token.getPrincipal() +"已被锁定. " ;  
	        model.addAttribute("message", msg);  
	        System.out.println(msg);  
	    } catch (DisabledAccountException e) {  
	        msg = "帐号"+ token.getPrincipal() +"已被禁用";  
	        model.addAttribute("message", msg);  
	        System.out.println(msg);  
	    } catch (ExpiredCredentialsException e) {  
	        msg = "帐号"+ token.getPrincipal() +"已过期";
	        model.addAttribute("message", msg);  
	        System.out.println(msg);  
	    } catch (UnknownAccountException e) {  
	        msg = "帐号"+ token.getPrincipal() +"不存在";
	        model.addAttribute("message", msg);  
	        System.out.println(msg);  
	    } catch (UnauthorizedException e) {  
	        msg = "您没有得到相应的授权！";  
	        model.addAttribute("message", msg);  
	        System.out.println(msg);  
	    } catch (AuthenticationException e) {
			// TODO: handle exception
	    	 msg = "验证错误";  
		     model.addAttribute("message", msg);  
		     System.out.println(msg);
		} catch (Exception e) {
			// TODO: handle exception
	    	 msg = "未知错误";  
		     model.addAttribute("message", msg);  
		     System.out.println(msg);
		} 			
		
		String result = "{\"success\":false,\"msg\":\""+msg+"。\"}";
		return result;
		
	}
	
	@RequiresUser
	@RequestMapping(value = "/logout", method = RequestMethod.GET,produces="text/html;charset=utf-8") 
	@ResponseBody
	public String logout(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {  		
		String result = "false";
		try {
			response.setCharacterEncoding("UTF-8");
			Subject subject = SecurityUtils.getSubject();
			subject.logout();
			result = "您已成功登出";
		} catch (Exception e) {
			// TODO: handle exception
			result = "登出发生异常";
		}
	    return result;
	}  
	
	
	@RequestMapping(value="saveUser",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String saveUser(@RequestParam(value="username")String username,
			@RequestParam(value="password")String password,
			@RequestParam(value="password2")String password2,
			@RequestParam(value="status")Integer status,
			@RequestParam(value="roleId")Integer roleId) {
		User user = new User();
		String result;
		if (!password.equals(password2)) {			
			result = "{\"success\":false,\"msg\":\"两次密码不一致\"}";
			return result;
		}		
		if (userService.getUserByUsername(username)!=null) {
			result = "{\"success\":false,\"msg\":\"新增用户失败，原因：账号重复\"}";
			return result;		
		}
		user.setUsername(username);
		user.setPassword(new SimpleHash("MD5", password).toString());
		user.setCreateTime(new Date());
		user.setLocked(false);
		user.setStatus(status);
		userService.addUser(user);	
		user = userService.getUserByUsername(username);
		userService.addUserRole(user.getUserId(), roleId);
		result = "{\"success\":true,\"msg\":\"添加成功\"}";
		return result;
	}
	
	@RequestMapping(value="deleteUser",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteUser(@RequestParam(value="ids")Integer[] ids) {
		User user = new User();
		for (Integer i : ids) {
			user.setUserId(i);
			userService.deleteUser(user);
			userService.deleteUserRole(i, null);
		}		
		String result;		
		result = "{\"success\":true,\"msg\":\"删除成功\"}";
		return result;
	}
	
	@RequestMapping(value="updateUser",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateUser(
			@RequestParam(value="userId")Integer userId,
			@RequestParam(value="status")Integer status,
			@RequestParam(value="roleId",required=false)Integer[] roleId) {
		User user = new User();
		user = userService.getUserById(userId);
		user.setStatus(status);
		userService.updateUser(user);
		user = userService.getUserDetails(user.getUsername());
		Set<Role> roles = user.getRoleSet();
		//先从用户角色中间表中删除所有对应关系，在依次添加
		for (Role role : roles) {			
			userService.deleteUserRole(userId, role.getRoleId());
		}
		for (Integer i : roleId) {
			userService.addUserRole(userId, i);
		}
		String result;		
		result = "{\"success\":true,\"msg\":\"修改成功\"}";
		return result;
	}
	
	@RequestMapping(value = "/resetPwd", method = RequestMethod.POST,produces="text/html;charset=utf-8") 
	@ResponseBody
	public String resetPwd(@RequestParam(value="userId")Integer userId) {
		User user = userService.getUserById(userId);
		user.setPassword(new SimpleHash("MD5", "000001").toString());  //自定义初始密码为000001
		userService.updateUser(user);
		return "000001";
	}
	
	@ExceptionHandler({Exception.class})
	 @ResponseStatus(code=HttpStatus.UNAUTHORIZED)
	 public String processUnauthenticatedException(ServletRequest request,ServletResponse response) {
	   // log.info("==========进入了异常处理方法，使用@ExceptionHandler处理异常");
	    /*ModelAndView mv = new ModelAndView();
	    mv.addObject("ex", ex);	    
	    // 为了区分，跳转掉另一个视图
	    mv.setViewName("error/404");*/
		String result = "{\"success\":false,\"msg\":\"请先登录！\"}";
		try {
			WebUtils.issueRedirect(request, response, "login?kickout=1");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index";	    
	    }
}
