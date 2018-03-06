package com.dorm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorm.mapper.EmployeeMapper;
import com.dorm.pojo.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeMapper employeeMapper;
	
	@Override
	public Employee getEmployeeByName(String employeeName) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		employee = employeeMapper.getEmployee(employee);
		return employee;
	}

	@Override
	public Employee getEmployeeByNo(String employeeNo) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeNo(employeeNo);
		employee = employeeMapper.getEmployee(employee);
		return employee;
	}

	@Override
	public Employee getEmployeeById(int employeeId) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeId(employeeId);
		employee = employeeMapper.getEmployee(employee);
		return employee;
	}

	@Override
	public List<Employee> getEmployeeBySex(String employeeSex) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeSex(employeeSex);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		return employees;
	}

	@Override
	public List<Employee> getEmployeeByWorkplace(String employeeWorkplace) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeWorkplace(employeeWorkplace);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		return employees;
	}

	@Override
	public List<Employee> getEmployeeByJob(String employeeJob) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeJob(employeeJob);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		return employees;
	}

	@Override
	public List<Employee> getEmployeeByNames(String employeeName) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		List<Employee> employees = employeeMapper.getEmployees(employee);
		return employees;
	}


	@Override
	public void addEmployee(Employee employee) {
		// TODO Auto-generated method stub
		employeeMapper.addEmployee(employee);
	}

	@Override
	public void deleteEmployeeByName(String employeeName) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		employeeMapper.deleteEmployee(employee);
	}

	@Override
	public void deleteEmployeeByNo(String employeeNo) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeNo(employeeNo);
		employeeMapper.deleteEmployee(employee);
	}

	@Override
	public void deleteEmployeeById(int employeeId) {
		// TODO Auto-generated method stub
		Employee employee = new Employee();
		employee.setEmployeeId(employeeId);
		employeeMapper.deleteEmployee(employee);
	}

	@Override
	public void updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		employeeMapper.updateEmployee(employee);
	}

	@Override
	public void addEmployeeByList(List<Employee> employees) {
		// TODO Auto-generated method stub
		employeeMapper.addEmployeeByList(employees);
	}

	@Override
	public void deleteEmployeeByList(List<Employee> employees) {
		// TODO Auto-generated method stub
		employeeMapper.deleteEmployeeByList(employees);
	}

	@Override
	public void updateUserByList(List<Employee> employees) {
		// TODO Auto-generated method stub
		employeeMapper.updateEmployeeByList(employees);
	}

	@Override
	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		return employeeMapper.getAllEmployee();
	}

	@Override
	public List<Employee> getEmployeeByIdList(List<Integer> employeeIds) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployeeByIdList(employeeIds);
	}

	@Override
	public List<Employee> getEmployeeByNameArray(String[] employeeNames) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployeeByNameArray(employeeNames);
	}

	@Override
	public List<Employee> getEmployeeByNoArray(String[] employeeNo) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployeeByNoArray(employeeNo);
	}

	@Override
	public List<Employee> getEmployees(Employee employee) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployees(employee);
	}

}
