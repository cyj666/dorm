package com.dorm.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.log4j.Logger;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.apache.shiro.web.util.WebUtils;
import org.aspectj.weaver.tools.Trace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.annotation.Lazy;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.dorm.pojo.Employee;
import com.dorm.pojo.User;
import com.dorm.service.EmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.jdbc.exceptions.jdbc4.MySQLDataException;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

@Controller
public class EmployeeController {
	
	public static final Logger log = Logger.getLogger(EmployeeController.class);
	
	@Autowired
	@Lazy //延迟加载，为了使@RequiresPermissions注解生效
	EmployeeService employeeService;

	
	@RequiresUser
	//@RequiresRoles(value={"admin"})
	@RequiresPermissions(value= {"get:employee"})
	@RequestMapping(value="getAllEmployee",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	@ResponseBody
	public String getAllEmployee(@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {		
		PageHelper.startPage(pageNum, pageSize);
		List<Employee> list = employeeService.getAllEmployeeDetail();
		PageInfo<Employee> p = new PageInfo<>(list);
		long total = p.getTotal();
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";		
		return JSON;
	}
	
	
	 @ExceptionHandler({Exception.class})
	 @ResponseStatus(code=HttpStatus.UNAUTHORIZED)
	 @ResponseBody
	 public String processUnauthorizedException(ServletRequest request,ServletResponse response) {	 		
		String result = "{\"success\":false,\"msg\":\"您无权操作！\"}";
		return result;	 
	    }
	
	/* @ExceptionHandler({MySQLIntegrityConstraintViolationException.class})
	 @ResponseStatus(code=HttpStatus.INTERNAL_SERVER_ERROR)
	 @ResponseBody
	 public String processSQLException(ServletRequest request,ServletResponse response) {	 		
		String result = "{\"success\":false,\"msg\":\"数据库操作异常！检查工号是否唯一？\"}";
		return result;	 
	    }*/
	 
	@RequiresUser
	//@RequiresRoles(value={"admin"})
	@RequiresPermissions(value= {"get:employee"})
	@RequestMapping(value="/getEmployee",produces="application/json;charset=utf-8")
	@ResponseBody
	public String getEmployee(@RequestParam(value="employeeName",required=false)String employeeName,
			@RequestParam(value="employeeNo",required=false)String employeeNo,			
			@RequestParam(value="employeeJob",required=false)String employeeJob,
			@RequestParam(value="employeeWorkplace",required=false)String employeeWorkplace,
			@RequestParam(value="page",defaultValue="1")int pageNum,
			@RequestParam(value="rows",defaultValue="5")int pageSize) {
		//List<Employee> employees = new ArrayList<>();
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		employee.setEmployeeNo(employeeNo);
		employee.setEmployeeJob(employeeJob);
		employee.setEmployeeWorkplace(employeeWorkplace);
		PageHelper.startPage(pageNum, pageSize);
		List<Employee> employees = employeeService.getEmployees(employee);
		PageInfo<Employee> p = new PageInfo<>(employees);
		long total = p.getTotal();
		for (Employee e : p.getList()) {
			
		}
		String json = JSON.toJSONString(p.getList(),SerializerFeature.WriteDateUseDateFormat);		
		String JSON = "{\"total\":"+total+",\"rows\":"+json+"}";
		return JSON;
		
	}
	
	
	@RequiresUser
	//@RequiresRoles(value={"admin"})
	@RequiresPermissions(value= {"delete:employee"})
	@RequestMapping(value="/deleteEmployee",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteEmployee(@RequestParam(value="ids")int[] ids) {
		List<Employee> eList = new ArrayList<>();
		for (int i : ids) {
			Employee employee = new Employee();
			employee.setEmployeeId(i);
			eList.add(employee);
		}
		employeeService.deleteEmployeeByList(eList); //批量删除
		String result = "{\"success\":true,\"msg\":\"删除成功！\"}";
		return result;
		
	}
	
	
	@RequiresUser
	//@RequiresRoles(value={"admin"})
	@RequiresPermissions(value= {"add:employee"})
	@RequestMapping(value="addEmployee",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String addEmployee(@RequestParam(value="employeeName")String employeeName,
			@RequestParam(value="employeeNo")String employeeNo,
			@RequestParam(value="employeeSex")String employeeSex,
			@RequestParam(value="employeeJob")String employeeJob,
			@RequestParam(value="employeeWorkplace")String employeeWorkplace,
			@RequestParam(value="employeeFamily")String employeeFamily,
			@RequestParam(value="employeeRemark")String employeeRemark) {
		Employee employee = new Employee();
		String result;
		employee.setEmployeeName(employeeName);
		employee.setEmployeeNo(employeeNo);
		employee.setEmployeeSex(employeeSex);
		employee.setEmployeeJob(employeeJob);
		employee.setEmployeeFamily(employeeFamily);
		employee.setEmployeeWorkplace(employeeWorkplace);
		employee.setEmployeeRemark(employeeRemark);	
		try {
			employeeService.addEmployee(employee);
			result = "{\"success\":true,\"msg\":\"添加成功\"}";
		} catch (Exception e) {
			// TODO: handle exception
			log.error("添加数据出现异常！异常原因如下："+e);
			result = "{\"success\":true,\"msg\":\"添加失败\"}";
		}
		
		return result;
	}
	
	
	//@CacheEvict(key="'getAllEmployee'",beforeInvocation=false)
	@RequiresUser
	//@RequiresRoles(value={"admin"})
	@RequiresPermissions(value= {"update:employee"})
	@RequestMapping(value="updateEmployee",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String updateEmployee(@RequestParam(value="employeeName")String employeeName,
			@RequestParam(value="employeeNo")String employeeNo,
			@RequestParam(value="employeeSex")String employeeSex,
			@RequestParam(value="employeeJob")String employeeJob,
			@RequestParam(value="employeeWorkplace")String employeeWorkplace,
			@RequestParam(value="employeeFamily")String employeeFamily,
			@RequestParam(value="employeeRemark")String employeeRemark,
			@RequestParam(value="employeeId")Integer employeeId) {
		Employee employee = new Employee();
		String result;
		employee.setEmployeeId(employeeId);
		employee.setEmployeeName(employeeName);
		employee.setEmployeeNo(employeeNo);
		employee.setEmployeeSex(employeeSex);
		employee.setEmployeeJob(employeeJob);
		employee.setEmployeeFamily(employeeFamily);
		employee.setEmployeeWorkplace(employeeWorkplace);
		employee.setEmployeeRemark(employeeRemark);	
		employeeService.updateEmployee(employee);
		result = "{\"success\":true,\"msg\":\"修改成功\"}";
		return result;
	}
	
	
	
}
