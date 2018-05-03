package com.dorm.service;

import java.util.List;

import com.dorm.pojo.Employee;

public interface EmployeeService {

	public Employee getEmployeeByName(String employeeName);   
	public Employee getEmployeeByNo(String employeeNo);
	public Employee getEmployeeById(int employeeId);
	
	public List<Employee> getEmployeeBySex(String employeeSex);
	public List<Employee> getEmployeeByWorkplace(String employeeWorkplace);
	public List<Employee> getEmployeeByJob(String employeeJob);
	public List<Employee> getEmployeeByNames(String employeeName);  //防止同名
	public List<Employee> getEmployees(Employee employee); 
	public List<Employee> getAllEmployee();
	public List<Employee> getAllEmployeeDetail();
	
	public List<Employee> getEmployeeByIdList(List<Integer> employeeIds);//批量查询ID
	public List<Employee> getEmployeeByNameArray(String[] employeeNames);//批量查询姓名
	public List<Employee> getEmployeeByNoArray(String[] employeeNo);//批量查询NO
	
	public void addEmployee(Employee employee);
	public void addEmployeeByList(List<Employee> employees);
	
	public void deleteEmployeeByName(String employeeName);
	public void deleteEmployeeByNo(String employeeNo);
	public void deleteEmployeeById(int employeeId);
	public void deleteEmployeeByList(List<Employee> employees);
	
	public void updateEmployee(Employee employee);//根据employeeId删除
	public void updateUserByList(List<Employee> employees);
	
	public boolean isLive(String employeeNo);
	
}
