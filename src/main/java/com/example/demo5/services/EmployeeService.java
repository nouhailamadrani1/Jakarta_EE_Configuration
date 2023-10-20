package com.example.demo5.services;



import com.example.demo5.entities.Employe;
import com.example.demo5.entities.Post;
import com.example.demo5.repositories.EmployeeRepository;

public class EmployeeService {
    private EmployeeRepository employeeRepository;

    public EmployeeService() {
        this.employeeRepository = new EmployeeRepository();
    }

    public boolean registerEmployee(String username, String password, String confirmPassword, String nom, String prenom, String email, String telephone, String post) {
        if (!password.equals(confirmPassword)) {
            return false;
        }

        if (!isValidEmail(email)) {
            return false;
        }

        if (username == null || username.isEmpty()) {
            return false;
        }

        Employe employe = new Employe();
        employe.setUsername(username);
        employe.setPassword(password);
        employe.setNom(nom);
        employe.setPrenom(prenom);
        employe.setEmail(email);
        employe.setTelephone(telephone);
        employe.setPost(Post.valueOf(post));

        return employeeRepository.saveEmployee(employe);
    }

    private boolean isValidEmail(String email) {
        String regex = "^[A-Za-z0-9+_.-]+@(.+)$";
        return email.matches(regex);
    }

    public Employe getEmployeeById(int idEmployee){
        Employe employee = employeeRepository.getEmployeeById(idEmployee);

        if (employee != null) {
            return employee;
        }
        return null;
    }

}
