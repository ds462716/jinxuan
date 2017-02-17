package com.meeting.core.servlet;

import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.core.service.AuthorityService;
import com.meeting.core.service.RegisterService;

/**
 * 2016/9/13 00:39:21
 * @author 白云飞
 *
 */
public class AuthorityServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String index(HttpServletRequest req , HttpServletResponse resp){
		return "index.jsp";
	}
	
	
	/**
	 * 登录
	 * @param req
	 * @param resp
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String login(HttpServletRequest req , HttpServletResponse resp){
		AuthorityService service = new AuthorityService();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Map user = service.getUser(username, password);
		if(user!=null){
			req.getSession().setAttribute("user", user);
			List<Map<String,Object>> userFuncs = service.getUserFuncs(user.get("id").toString());
			if(userFuncs==null||userFuncs.size()==0){
				req.setAttribute("errormsg", "对不起，该用户无权访问系统，请联系管理员予以授权！");
				return "login.jsp";
			}
			Set<String> userUrls = new HashSet<String>();
			for(Map<String,Object> uf : userFuncs){
				if(uf.get("url")!=null)
					userUrls.add(uf.get("url").toString());
			}
			req.getSession().setAttribute("auths", userUrls);
			return "redirect:report.do?method=report";
		} else {
			req.setAttribute("errormsg", "对不起，用户不存在！");
			return "login.jsp";
		}
	}
	
	/**
	 * 退出
	 * @param req
	 * @param resp
	 * @return
	 */
	public String logout(HttpServletRequest req , HttpServletResponse resp){
		req.getSession().invalidate();
		return "login.jsp";
	}
	
	/**
	 * 没有权限时跳转的页面
	 * @param req
	 * @param resp
	 * @return
	 */
	public String noauth(HttpServletRequest req , HttpServletResponse resp){
		return "noauth.jsp";
	}
	
	/**
	 * 跳转到用户管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String user(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/user.jsp";
	}
	
	/**
	 * 跳转到角色管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String role(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/role.jsp";
	}
	
	/**
	 * 跳转到模块管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String func(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/func.jsp";
	}
	
	/**
	 * 跳转到修改密码页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String pwd(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/pwd.jsp";
	}
	
	/**
	 * 跳转到会员管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String register(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/register.jsp";
	}
	
	/**
	 * 跳转到订单管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String order(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/order.jsp";
	}
	
	/**
	 * 跳转到订单管理(BC)
	 * @param req
	 * @param resp
	 * @return
	 */
	public String bcorder(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/bcorder.jsp";
	}
	/**
	 * 跳转到Email管理
	 * @param req
	 * @param resp
	 * @return
	 */
	public String email(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/email.jsp";
	}

	public String download(HttpServletRequest req , HttpServletResponse resp){
		String fileid = req.getParameter("fileid");
		RegisterService service = new RegisterService();
		InputStream in = null;
		OutputStream out = null;
		Map file = null;
		try {
			file = service.getThesis(fileid);
			if(file==null){
				req.getSession().removeAttribute("lunwen");
				return "redirect:index.jsp?nofile=true";
			}
			in = ((Blob)file.get("file")).getBinaryStream();
			out = resp.getOutputStream();
			resp.setContentType("application/octet-stream");
			String filename = file.get("filename")+"."+file.get("type");
			filename = new String(filename.getBytes("utf-8"),"ISO-8859-1");
			resp.addHeader("Content-Disposition", "attachment; filename="+filename);
			resp.setCharacterEncoding("UTF-8");
			int b = -1;
			while((b=in.read())!=-1){
				out.write(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
