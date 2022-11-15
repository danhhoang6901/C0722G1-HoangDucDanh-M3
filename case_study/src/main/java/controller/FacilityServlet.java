package controller;

import model.Employee;
import model.Facility;
import service.IFacilityService;
import service.impl.FacilityService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FacilityServlet", urlPatterns = {"/facility"})
public class FacilityServlet extends HttpServlet {
    private IFacilityService facilityService = new FacilityService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":

                break;
            case "edit":
                break;
            case "search":
                searchFacility(request,response);
                break;
            default:
                listFacility(request, response);
                break;
        }
    }

    private void searchFacility(HttpServletRequest request, HttpServletResponse response) {
        String nameSearch = request.getParameter("search");
        List<Facility> facilityList = facilityService.searchFacility(nameSearch);
        request.setAttribute("facilityList", facilityList);
        request.setAttribute("saveSearch", nameSearch);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                break;
            case "delete":
                deleteFacility(request, response);
                break;
            case "edit":
                break;
            default:
                listFacility(request, response);
                break;
        }

    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean check = false;
        check = facilityService.remove(id);
        String mess = "Deletion failed";
        if (check) {
            mess = "Delete successfully";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);
        listFacility(request, response);
    }

    private void listFacility(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.displayAll();
        request.setAttribute("facilityList", facilityList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
