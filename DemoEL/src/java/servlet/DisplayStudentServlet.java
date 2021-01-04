/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class DisplayStudentServlet extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        List<Student> studentList = new ArrayList<>();
        Student student = new Student(1, "Nguyen Minh Huy", "huy@vn.vn", "JV36");
        studentList.add(student);
        Student student1 = new Student(2, "Nguyen Minh Toan", "toan@vn.vn", "JV35");
        studentList.add(student1);
        Student student2 = new Student(3, "Nguyen Minh Nam", "nam@vn.vn", "JV27");
        studentList.add(student2);
        session.setAttribute("studentlist", studentList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
