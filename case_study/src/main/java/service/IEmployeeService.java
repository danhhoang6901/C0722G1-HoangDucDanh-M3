package service;

import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> displayAll();

    boolean add(Employee employee);

    Employee findById(int id);

    void update(int id, Employee employee);

    boolean remove(int id);
}
