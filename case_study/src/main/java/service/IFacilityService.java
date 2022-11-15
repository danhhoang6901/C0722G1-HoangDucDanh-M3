package service;

import model.Facility;

import java.util.List;

public interface IFacilityService {
    List<Facility> displayAll();

    boolean add(Facility facility);

    boolean remove(int id);

    List<Facility> searchFacility(String nameSearch);
}
