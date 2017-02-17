package com.meeting.core.service;

import java.io.InputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.time.DateUtils;
import org.apache.commons.mail.EmailAttachment;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.meeting.core.bean.Register;
import com.meeting.core.bean.Thesis;
import com.meeting.core.db.DBUtil;
import com.meeting.core.email.MailInfo;
import com.meeting.core.email.MailUtil;
import com.meeting.core.util.StringUtil;

/**
 * 2016/9/14 22:14:29
 * @author 白云飞
 *
 */
public class RegisterService {
	
	private DBUtil db;
	
	public RegisterService() {
		db = new DBUtil();
	}
	
	public Map getThesisByRegisterId(String registerid) {
		String sql = "select status , id,filename,type,registerid, registeremail, date_format(uploadtime,'%Y/%m/%d %H:%i') as uploadtime, comments from t_thesis where registerid = ? ";
		return db.queryOne(sql,new Object[]{registerid});
	}
	
	public boolean insertThesis(Thesis lunwen , InputStream in){
		String sql = "insert into t_thesis(file,registerid,registeremail,uploadtime,filename,type,comments) values(?,?,?,?,?,?,?) ";
		return db.execute_upload(sql, in, new Object[]{lunwen.getRegisterid(),lunwen.getRegisteremail(),new Date(),lunwen.getFilename(),lunwen.getType(),lunwen.getComments()});
	}
	
	public boolean updateThesis(Thesis lunwen , InputStream in){
		String sql = "update t_thesis set file = ? , filename = ? , type = ? , comments = ? where id = ? ";
		return db.execute_upload(sql, in, new Object[]{lunwen.getFilename(),lunwen.getType(),lunwen.getComments(),lunwen.getId()});
	}
	
	public Map getThesis(String fileid) throws SQLException {
		String sql = "select file , filename , type , id from t_thesis where id = ?";
		return db.queryBlob(sql,new Object[]{fileid});
	}

	public boolean register(Register reg,boolean isSendMail,InputStream file , String fileName){
		/*String sql = "insert into t_register"
				+ "(username,nickname,password,telphone,email,sex,company,job,journalname,message"
				+ ",degree,postcode,address,zsyq,invoice,sfcjsx,sxxl,fptt"
				+ ",officephone,fax,gzqk,title,sffblw,gjbh,gjtm,gjzt,sfztlw,sfsqhyfy,fytm,fynrzy,sfzs,zskssj,zsjssj,yqhfszt"
				+ ",registertime) "
				+ "values(?,?,?,?,?,?,?,?,?,?"
				+ ",?,?,?,?,?,?,?,?"
				+ ",?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?"
				+ ",?)";
		boolean success = db.execute(sql, new Object[]{
				reg.getUsername(),reg.getNickname(),StringUtil.MD5(reg.getPassword()),
				reg.getTelphone(),reg.getEmail(),reg.getSex(),
				reg.getCompany(),reg.getJob(),reg.getJournalname(),reg.getMessage()
				,reg.getDegree(),reg.getPostcode(),reg.getAddress(),reg.getZsyq(),reg.getInvoice(),reg.getSfcjsx(),reg.getSxxl(),reg.getFptt()
				,reg.getOfficephone(),reg.getFax(),reg.getGzqk(),reg.getTitle(),reg.getSffblw()
				,reg.getGjbh(),reg.getGjtm(),reg.getGjzt(),reg.getSfztlw(),reg.getSfsqhyfy()
				,reg.getFytm(),reg.getFynrzy(),reg.getSfzs(),reg.getZskssj(),reg.getZsjssj(),reg.getYqhfszt()
				,new Date()});*/
		String sql = "insert into t_register"
				+ "(nickname,password,telphone,email,sex,job"
				+ ",company,registertime) "
				+ "values(?,?,?,?,?,?,?,?)";
		boolean success = db.execute(sql, new Object[]{
				reg.getNickname(),StringUtil.MD5(reg.getPassword()),
				reg.getTelphone(),reg.getEmail(),reg.getSex()
				,reg.getJob(),reg.getCompany()
				,new Date()});
		if(success) {
			WebContext ctx = WebContextFactory.get();
			Map sreg = db.queryOne("select * from t_register where email = ? ", new Object[]{reg.getEmail()});
			ctx.getSession().setAttribute("register", sreg);
			//文件上传
			/*if(file!=null&&fileName!=null){
				Thesis thesis = new Thesis();
				thesis.setRegisterid(sreg.get("id").toString());
				thesis.setRegisteremail(sreg.get("email").toString());
				thesis.setUploadtime(new Date());
				thesis.setComments("");
				int index = fileName.lastIndexOf(".");
				thesis.setFilename(fileName.substring(fileName.lastIndexOf("\\")+1,index));
				thesis.setType(fileName.substring(index+1));
				
				if(ctx.getSession().getAttribute("thesis")!=null){
					Map lm = (Map)ctx.getSession().getAttribute("thesis");
					thesis.setId(Integer.parseInt(lm.get("id").toString()));
				}
				if(thesis.getId() == 0){
					insertThesis(thesis,file);
				} else {
					updateThesis(thesis,file);
				}
				ctx.getSession().setAttribute("thesis", this.getThesisByRegisterId(sreg.get("id").toString()));
			}*/
			
			
			if(isSendMail)
				sendEmailToRegister(reg,"emailtemplate.html");
		}
		return success;
	}
	
	public boolean sendEmailToRegister(Register reg , String templateFile){
		Map ms = db.queryOne("select * from t_mailset where isactive = 1 ", null);
		MailUtil.init(ms);
		MailInfo mailInfo = new MailInfo();
        List<String> toList = new ArrayList<String>();
        toList.add(reg.getEmail());
        
//        List<String> ccList = new ArrayList<String>();
//        ccList.add("403274468@qq.com");
        
        List<String> bccList = new ArrayList<String>();
        bccList.add(MailUtil.getSenderEmail());
        
        //添加附件
        EmailAttachment att = new EmailAttachment();
        //暂时不带附件发送，需要时打开
//        att.setPath("C:\\Program Files\\meeting\\emails\\会议通知.docx");
//        att.setName("第八届全国地图学与地理信息系统学术大会通知.docx");
//        List<EmailAttachment> atts = new ArrayList<EmailAttachment>();
//        atts.add(att);
//        mailInfo.setAttachments(atts);
        
        mailInfo.setToAddress(toList);//收件人
//        mailInfo.setCcAddress(ccList);//抄送人
        mailInfo.setBccAddress(bccList);//密送人

		Map email = db.queryOne("select * from t_emails where status = 1 order by id desc limit 1", null);

        mailInfo.setSubject(email.get("title").toString());//会议主题
		String mailMessage = email.get("contentHtml").toString();//会议内容
		//使用模板发送邮件  需要时候打开
//        String mailMessage = StringUtil.readFile2String(templateFile, this.getClass());

        mailMessage = mailMessage.replaceAll(":nickname", reg.getNickname()).replaceAll(":currentDate", new SimpleDateFormat("yyyy年MM月dd日").format(new Date()));
        mailMessage = mailMessage.replaceAll(":securityCode", reg.getId()+"");
        mailInfo.setContent(mailMessage);
        MailUtil.sendEmail(mailInfo);
		return true;
	}
	
	public boolean hasRegisterByTel(Register reg){
		String sql = "select count(*) as hasone from t_register where email = '"+reg.getEmail()+"' ";
		Map m = db.queryOne(sql, null);
		int count = 0;
		if(m.get("hasone")==null)
			return false;
		count = Integer.parseInt(m.get("hasone").toString());
		return count!=0;
	}
	
	public String login(Register reg) throws Exception{
		String errorMsg = null;
		String sql = "select * from t_register where email = ? and password = ? ";
		Map register = db.queryOne(sql, new Object[]{reg.getEmail(),StringUtil.MD5(reg.getPassword())});
		WebContext ctx = WebContextFactory.get();
		if(register!=null&&register.get("id")!=null){
			ctx.getSession().setAttribute("register", register);
			ctx.getSession().setAttribute("thesis", this.getThesisByRegisterId(register.get("id").toString()));
			ctx.getSession().setAttribute("orderList", db.queryForList("select * from t_order where orderregisterid = ? ",new Object[]{register.get("id")}));
		} else {
			errorMsg = "用户名或密码错误！";
			ctx.getHttpServletRequest().setAttribute("errormsg", errorMsg);
		}
		return errorMsg;
	}
	
	public String loginWithoutPwd(Register reg) throws Exception{
		String errorMsg = null;
		String sql = "select * from t_register where telphone = ? ";
		Map register = db.queryOne(sql, new Object[]{reg.getTelphone()});
		WebContext ctx = WebContextFactory.get();
		if(register!=null&&register.get("id")!=null){
			ctx.getSession().setAttribute("register", register);
			ctx.getSession().setAttribute("thesis", this.getThesisByRegisterId(register.get("id").toString()));
			ctx.getSession().setAttribute("orderList", db.queryForList("select * from t_order where orderregisterid = ? ",new Object[]{register.get("id")}));
		} else {
			errorMsg = "对不起，改手机用户还没有报名注册！";
			ctx.getHttpServletRequest().setAttribute("errormsg", errorMsg);
		}
		return errorMsg;
	}
	
	public void logout(){
		WebContext ctx = WebContextFactory.get();
		ctx.getSession().invalidate();
	}
	
	public boolean updateRegisterPaystatus(Register reg){
		boolean success = db.execute("update t_register set zfflag = 0 where id = ? ", new Object[]{reg.getId()});
		WebContext ctx = WebContextFactory.get();
		ctx.getSession().setAttribute("register", db.queryOne("select * from t_register where id = ? ", new Object[]{reg.getId()}));
		return success;
	}
	
	public boolean updateRegisterInvoice(String invoice , String fptt , String rid){
		Object[] params = new Object[]{invoice,fptt,rid};
		boolean success = db.execute("update t_register set invoice = ? , fptt = ? where id = ? ", params);
		WebContext ctx = WebContextFactory.get();
		ctx.getSession().setAttribute("register", db.queryOne("select * from t_register where id = ? ", new Object[]{params[2]}));
		return success;
	}
	
	public List getRegisters(){
		return db.queryForList("select * from t_register");
	}
	
	public boolean deleteRegister(String id){
		return db.execute("delete from t_register where id = ?", new Object[]{id});
	}
	
	public boolean updateRegisterStatus(String id,String status){
		return db.execute("update t_register set status = ? where id = ? ", new Object[]{status,id});
	}


	public boolean uploadFile(Register reg,InputStream file , String fileName){
		WebContext ctx = WebContextFactory.get();
		Map sreg = db.queryOne("select * from t_register where id = ? ", new Object[]{reg.getId()});
		//文件上传
		if(file!=null&&fileName!=null){
			Thesis thesis = new Thesis();
			thesis.setRegisterid(sreg.get("id").toString());
			thesis.setRegisteremail(sreg.get("email").toString());
			thesis.setUploadtime(new Date());
			thesis.setComments("");
			int index = fileName.lastIndexOf(".");
			thesis.setFilename(fileName.substring(fileName.lastIndexOf("\\")+1,index));
			thesis.setType(fileName.substring(index+1));

			if(ctx.getSession().getAttribute("thesis")!=null){
				Map lm = (Map)ctx.getSession().getAttribute("thesis");
				thesis.setId(Integer.parseInt(lm.get("id").toString()));
			}
			if(thesis.getId() == 0){
				insertThesis(thesis,file);
			} else {
				updateThesis(thesis,file);
			}
			ctx.getSession().setAttribute("thesis", this.getThesisByRegisterId(sreg.get("id").toString()));
			//更新用户信息
			db.execute("update t_register set zfflag = ?,usertype = ?, zsyq = ? where id = ? ", new Object[]{1,reg.getUsertype(),reg.getZsyq(),sreg.get("id").toString()});
		}
		return true;
	}

	public static void main(String[] args) throws ParseException{
		RegisterService s = new RegisterService();
		Register reg = new Register();
		reg.setEmail("462716@qq.com");
		reg.setNickname("dbangel");
		s.sendEmailToRegister(reg,"emailtemplate.html");
		
//		System.out.println(DateUtils.parseDate("2016-12-27 18:00", new String[]{"yyyy-MM-dd HH:mm"}));
	}
}
