package service.impl;

import model.Facility;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public List<Facility> displayAll() {
        return facilityRepository.displayAll();
    }

    @Override
    public boolean add(Facility facility) {
        return facilityRepository.add(facility);
    }

    @Override
    public boolean remove(int id) {
        return facilityRepository.remove(id);
    }

    @Override
    public List<Facility> searchFacility(String nameSearch) {
        return facilityRepository.searchFacility(nameSearch);
    }
}
