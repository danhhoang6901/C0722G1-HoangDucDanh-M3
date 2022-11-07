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
    public Employee findById(int id) {
        return null;
    }

    @Override
    public void update(int id, Employee employee) {

    }

    @Override
    public boolean remove(int id) {
        return employeeRepository.remove(id);
    }
}
