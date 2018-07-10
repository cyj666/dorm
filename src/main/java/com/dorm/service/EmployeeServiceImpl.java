package com.dorm.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.controller.UserController;
import com.dorm.mapper.EmployeeMapper;
import com.dorm.mapper.RoomMapper;
import com.dorm.pojo.Employee;
import com.dorm.pojo.Room;
import com.dorm.pojo.RoomEmployeeDetails;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeMapper employeeMapper;
	
	@Autowired
	RoomEmployeeDetailsService roomEmployeeDetailsService;
	
	public static final Logger log = Logger.getLogger(UserController.class);
	
	
	@Override
	public Employee getEmployeeByName(String employeeName) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		employee = employeeMapper.getEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询");
		return employee;
	}

	@Override
	public Employee getEmployeeByNo(String employeeNo) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeNo(employeeNo);
		employee = employeeMapper.getEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询");
		return employee;
	}

	@Override
	public Employee getEmployeeById(int employeeId) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeId(employeeId);
		employee = employeeMapper.getEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询");
		return employee;
	}

	@Override
	public List<Employee> getEmployeeBySex(String employeeSex) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeSex(employeeSex);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询");
		return employees;
	}

	@Override
	public List<Employee> getEmployeeByWorkplace(String employeeWorkplace) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeWorkplace(employeeWorkplace);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询");
		return employees;
	}

	@Override
	public List<Employee> getEmployeeByJob(String employeeJob) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeJob(employeeJob);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询");
		return employees;
	}

	@Override
	public List<Employee> getEmployeeByNames(String employeeName) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询");
		return employees;
	}


	@Override
	public void addEmployee(Employee employee) {
		// TODO Auto-generated method stub
		employeeMapper.addEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"添加了员工"+employee);
	}

	@Override
	public void deleteEmployeeByName(String employeeName) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		employeeMapper.deleteEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"删除了员工"+employee);
	}

	@Override
	public void deleteEmployeeByNo(String employeeNo) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeNo(employeeNo);
		employeeMapper.deleteEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"删除了员工，工号为"+employeeNo);
	}

	@Override
	public void deleteEmployeeById(int employeeId) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeId(employeeId);
		employeeMapper.deleteEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"删除了员工，ID"+employeeId);
	}

	@Override
	public void updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		employeeMapper.updateEmployee(employee);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"更新了员工账号"+employee);
	}

	@Override
	public void addEmployeeByList(List<Employee> employees) {
		// TODO Auto-generated method stub
		employeeMapper.addEmployeeByList(employees);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"批量新增了员工账号"+employees);
	}

	@Override
	public void deleteEmployeeByList(List<Employee> employees) {
		// TODO Auto-generated method stub
		employeeMapper.deleteEmployeeByList(employees);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"批量删除了员工账号"+employees);
	}

	@Override
	public void updateUserByList(List<Employee> employees) {
		// TODO Auto-generated method stub
		employeeMapper.updateEmployeeByList(employees);
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"批量更新了员工账号"+employees);
	}

	@Override
	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询员工操作");
		return employeeMapper.getAllEmployee();
	}

	@Override
	public List<Employee> getEmployeeByIdList(List<Integer> employeeIds) {
		// TODO Auto-generated method stub
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询员工操作");
		return employeeMapper.getEmployeeByIdList(employeeIds);
	}

	@Override
	public List<Employee> getEmployeeByNameArray(String[] employeeNames) {
		// TODO Auto-generated method stub
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询员工操作");
		return employeeMapper.getEmployeeByNameArray(employeeNames);
	}

	@Override
	public List<Employee> getEmployeeByNoArray(String[] employeeNo) {
		// TODO Auto-generated method stub
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询员工操作");
		return employeeMapper.getEmployeeByNoArray(employeeNo);
	}

	@Override
	public List<Employee> getEmployees(Employee employee) {
		// TODO Auto-generated method stub
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询员工操作");
		return employeeMapper.getEmployees(employee);
	}

	@Override
	public boolean isLive(String employeeNo) {
		// TODO Auto-generated method stub
		List<RoomEmployeeDetails> list = roomEmployeeDetailsService.getLivingByEmployeeNo(employeeNo);
		if (list.size()==0||list==null) {
			return false;
		}else {
			return true;
		}
		
	}

	@Override
	public List<Employee> getAllEmployeeDetail() {
		// TODO Auto-generated method stub
		List<Employee> list = employeeMapper.getAllEmployeeDetail();
		log.fatal("用户"+SecurityUtils.getSubject().getPrincipal()+"进行了查询员工操作");
		return list;
	}

	
	@Override
	public List<Employee> getEmployeeByRoom(Room room) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployeeByRoom(room);
	}

	@Override
	public List<Employee> getEmployeesDetail(Employee employee) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployeesDetail(employee);
	}

	@Override
	public List<Employee> getAllEmployeeDetail2() {
		// TODO Auto-generated method stub
		return employeeMapper.getAllEmployeeDetail2();
	}

	@Override
	public List<Employee> getEmployeesDetail2(Employee employee) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployeesDetail2(employee);
	}

}
