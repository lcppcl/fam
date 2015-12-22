package cn.fam.filter;

  
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
  
  
public class CharsetFilter implements Filter {  
	private FilterConfig filterConfig = null;
    private String defaultCharset = "UTF-8";

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        
        String charset = filterConfig.getInitParameter("charset");
        if(charset==null){
            charset = defaultCharset;
        }
        
        request.setCharacterEncoding(charset);  //post
        response.setCharacterEncoding(charset);
        response.setContentType("text/html;charset=" + charset);
        
        chain.doFilter(request, response);
        
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig;

    }
    
    public void destroy() {
        // TODO Auto-generated method stub

    }

} 