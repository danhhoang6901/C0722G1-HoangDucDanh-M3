package repository;

import model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> displayAll();

    boolean add(Employee employee);

    Employee findById(int id);

    void update(int id, Employee employee);

    boolean remove(int id);
}
