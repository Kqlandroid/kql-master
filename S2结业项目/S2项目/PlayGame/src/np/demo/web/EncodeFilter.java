package np.demo.web;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodeFilter implements Filter {
private String encode=null;
	public void destroy() {
		encode=null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		if(null==request.getCharacterEncoding()){
			request.setCharacterEncoding(encode);
			
		}
		if(null!=response.getCharacterEncoding()){
			response.setCharacterEncoding(encode);
		}
		if(null==response.getCharacterEncoding()){
			response.setCharacterEncoding(encode);
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		String encode=config.getInitParameter("encode");
		if(this.encode==null){
			this.encode=encode;
		}
	}

}
