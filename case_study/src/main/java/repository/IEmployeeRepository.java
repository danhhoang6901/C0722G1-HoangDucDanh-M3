package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> displayAll();

    boolean add(Employee employee);


    boolean update( Employee employee);

    boolean remove(int id);
}
