
public class MyServlet extends HttpServlet implements SingleThreadModel{  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
              
        out.print("welcome");  
        try{Thread.sleep(10000);}catch(Exception e){e.printStackTrace();}  
        out.print(" to servlet");  
        out.close();  
        }  
    }