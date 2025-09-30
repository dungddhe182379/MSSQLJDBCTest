import dao.AdminDao;
import model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet để test kết nối database và lấy dữ liệu
 */
@WebServlet(name = "TestServlet", urlPatterns = {"/test"})
public class TestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            out.println("<html><head><title>Test Database</title></head><body>");
            out.println("<h1>Test Kết Nối Database</h1>");
            
            // Test tạo AdminDao
            AdminDao adminDao = new AdminDao();
            out.println("<p>✅ Tạo AdminDao thành công</p>");
            
            // Test lấy dữ liệu
            List<Account> accountList = adminDao.getAll();
            out.println("<p>✅ Gọi getAll() thành công</p>");
            out.println("<p><strong>Số lượng account:</strong> " + accountList.size() + "</p>");
            
            if (accountList.isEmpty()) {
                out.println("<p>⚠️ Không có dữ liệu trong database</p>");
            } else {
                out.println("<h2>Danh sách Account:</h2>");
                out.println("<table border='1'>");
                out.println("<tr><th>ID</th><th>Username</th><th>First Name</th><th>Last Name</th><th>Email</th></tr>");
                
                for (Account account : accountList) {
                    out.println("<tr>");
                    out.println("<td>" + account.getUserId() + "</td>");
                    out.println("<td>" + account.getUserName() + "</td>");
                    out.println("<td>" + account.getFirstName() + "</td>");
                    out.println("<td>" + account.getLastName() + "</td>");
                    out.println("<td>" + account.getEmail() + "</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
            }
            
            out.println("</body></html>");
            
        } catch (Exception e) {
            out.println("<p>❌ Lỗi: " + e.getMessage() + "</p>");
            out.println("<pre>");
            e.printStackTrace(out);
            out.println("</pre>");
        } finally {
            out.close();
        }
    }
}