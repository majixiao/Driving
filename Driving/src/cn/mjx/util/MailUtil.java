package cn.mjx.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil {
	/*
	 * 发送邮件的方法 to：收件人 code:激活码 发送邮件Transport
	 */
	public static  void sendMail(String to, String code) {
		// 1.获得连接
		Properties prop = new Properties();
		prop.setProperty("mail.debug", "true");
		// 设置邮件服务器主机名
		prop.setProperty("mail.host", "smtp.qq.com");
		// 发送服务器需要身份验证
		prop.setProperty("mail.smtp.auth", "true");
		// 发送邮件协议名称
		prop.setProperty("mail.transport.protocol", "smtp");

		// props.setProperty(key, value);
		Session session = Session.getInstance(prop, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("111111111111@qq.com",
						"yanzhengma");//邮箱账号 以及邮箱开启pop服务时的验证码
			}

		});
		// 2.创建邮件对象
		Message message = new MimeMessage(session);
		// 设置发件人
		try {
			message.setFrom(new InternetAddress("1111111111111@qq.com"));
			// 设置收件人
			message.addRecipient(RecipientType.TO, new InternetAddress(to));
			// 设置主题
			message.setSubject("来自驾校预约的邮件！！");
			// 设置正文内容
			message.setContent("<h1>你的密码是:" + code
					+ "'><font color='red'>请勿泄露！！</font></h1>",
					"text/html;charset=UTF-8");
			// 发送邮件
			Transport.send(message);

		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
