package service.impl;

import model.Employee;
import repository.IEmployeeRepository;
import repository.impl.EmployeeRepository;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private IEmployeeRepository employeeRepository = new EmployeeRepository();

    @Override
    public List<Employee> displayAll() {
        return employeeRepository.displayAll();
    }

    @Override
    public boolean add(Employee employee) {
        return employeeRepository.add(employee);
    }


    @Override
    public boolean update(Employee employee) {
        return employeeRepository.update(employee);
    }

    @Override
    public boolean remove(int id) {
        return employeeRepository.remove(id);
    }

    @Override
    public Employee findById(int id) {
        return employeeRepository.findById(id);
    }

    @Override
    public List<Employee> searchEmployee(String search) {
        return employeeRepository.searchEmployee(search);
    }
}
