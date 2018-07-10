package com.dorm.mapper;

import java.util.List;

import com.dorm.pojo.Employee;
import com.dorm.pojo.Room;

public interface EmployeeMapper {

	public Employee getEmployee(Employee employee);
	public List<Employee> getEmployees(Employee employee);
	public List<Employee> getAllEmployee();
	public List<Employee> getAllEmployeeDetail();
	public List<Employee> getAllEmployeeDetail2();
	public List<Employee> getEmployeeByIdList(List<Integer> employeeIds);
	public List<Employee> getEmployeeByNameArray(String[] employeeNames);
	public List<Employee> getEmployeeByNoArray(String[] employeeNo);
	public List<Employee> getEmployeeByRoom(Room room);
	public List<Employee> getEmployeesDetail(Employee employee);
	public List<Employee> getEmployeesDetail2(Employee employee);
	
	public void addEmployee(Employee employee);
	public void addEmployeeByList(List<Employee> employees);
	
	public void deleteEmployee(Employee employee);
	public void deleteEmployeeByList(List<Employee> employees);
	
	public void updateEmployee(Employee employee);
	public void updateEmployeeByList(List<Employee> employees);//批量更新，注意会更新所有字段，所以要确保实体类中的属性值在操作
}
