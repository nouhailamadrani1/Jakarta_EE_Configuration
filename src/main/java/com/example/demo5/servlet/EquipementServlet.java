import com.example.demo5.entities.Equipement;
import com.example.demo5.services.EquipementService;

import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/equipements")
public class EquipementServlet extends HttpServlet {
    @Inject
    private EquipementService equipementService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Equipement> equipmentList = equipementService.getAllEquipements();

        request.setAttribute("equipmentList", equipmentList);
        request.getRequestDispatcher("/equipment.jsp").forward(request, response);
    }
}
