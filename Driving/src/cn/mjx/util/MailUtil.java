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
	 * �����ʼ��ķ��� to���ռ��� code:������ �����ʼ�Transport
	 */
	public static  void sendMail(String to, String code) {
		// 1.�������
		Properties prop = new Properties();
		prop.setProperty("mail.debug", "true");
		// �����ʼ�������������
		prop.setProperty("mail.host", "smtp.qq.com");
		// ���ͷ�������Ҫ�����֤
		prop.setProperty("mail.smtp.auth", "true");
		// �����ʼ�Э������
		prop.setProperty("mail.transport.protocol", "smtp");

		// props.setProperty(key, value);
		Session session = Session.getInstance(prop, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("111111111111@qq.com",
						"yanzhengma");//�����˺� �Լ����俪��pop����ʱ����֤��
			}

		});
		// 2.�����ʼ�����
		Message message = new MimeMessage(session);
		// ���÷�����
		try {
			message.setFrom(new InternetAddress("1111111111111@qq.com"));
			// �����ռ���
			message.addRecipient(RecipientType.TO, new InternetAddress(to));
			// ��������
			message.setSubject("���Լ�УԤԼ���ʼ�����");
			// ������������
			message.setContent("<h1>���������:" + code
					+ "'><font color='red'>����й¶����</font></h1>",
					"text/html;charset=UTF-8");
			// �����ʼ�
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
