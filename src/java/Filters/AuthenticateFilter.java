/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Filters;



import User.Account;
import User.UserDAO;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 *
 * @author huynh
 */

@WebFilter(
        urlPatterns = "/*",
        filterName = "FilterLogin"
)           
public class AuthenticateFilter implements Filter{
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }  
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,  
        FilterChain chain) throws IOException, ServletException {  
        
     HttpServletRequest httpRequest = (HttpServletRequest) request;
     
        HttpSession session = httpRequest.getSession(false);
        
        Cookie[] cookies = httpRequest.getCookies();
        
        String username =null;
        
        for(Cookie c: cookies){
            if(c.getName().equals("username")){
                username = c.getValue();
                if(username != null){
                    break;
                }
            }
        }
        
        if (username != null) {
            Account user = new UserDAO().checkExistedUsername(username);

            session = httpRequest.getSession(true); // create a new session
            session.setAttribute("user", user);

        }
       
        chain.doFilter(request, response);
        
    }  
    
    @Override
    public void destroy() {
        Filter.super.destroy();
    }  
}