package service;

import model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> displayAll();

    boolean add(Employee employee);


    boolean update( Employee employee);

    boolean remove(int id);
}
