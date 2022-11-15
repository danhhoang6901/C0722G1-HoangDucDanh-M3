package repository;

import model.Customer;
import model.CustomerType;
import model.Employee;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> displayAll();

    boolean add(Customer customer);


    boolean update(Customer customer);

    boolean remove(int id);

    Customer findBbyId(int id);

    List<CustomerType> findAll();

    List<Customer> searchCustomer(String search);
}
