package cn.mjx.coach.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import cn.mjx.appointment.vo.Appointment;

public class Coach {
private int cid;
private String cphone;
private String cname;
private String cnumber;
private String cmodel;
private String cdrivetime;
private String cdesc;
private String cpwd;
private int cage;
private String csex;
public int getCage() {
	return cage;
}
public void setCage(int cage) {
	this.cage = cage;
}
public String getCsex() {
	return csex;
}
public void setCsex(String csex) {
	this.csex = csex;
}
private Date cdate;
private int cstate;
private String cemail;
private Set<Appointment> appointment=new HashSet<Appointment>();
public Set<Appointment> getAppointment() {
	return appointment;
}
public void setAppointment(Set<Appointment> appointment) {
	this.appointment = appointment;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCphone() {
	return cphone;
}
public void setCphone(String cphone) {
	this.cphone = cphone;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCnumber() {
	return cnumber;
}
public void setCnumber(String cnumber) {
	this.cnumber = cnumber;
}
public String getCmodel() {
	return cmodel;
}
public void setCmodel(String cmodel) {
	this.cmodel = cmodel;
}
public String getCdrivetime() {
	return cdrivetime;
}
public void setCdrivetime(String cdrivetime) {
	this.cdrivetime = cdrivetime;
}
public String getCdesc() {
	return cdesc;
}
public void setCdesc(String cdesc) {
	this.cdesc = cdesc;
}
public String getCpwd() {
	return cpwd;
}
public void setCpwd(String cpwd) {
	this.cpwd = cpwd;
}
public Date getCdate() {
	return cdate;
}
public void setCdate(Date cdate) {
	this.cdate = cdate;
}
public int getCstate() {
	return cstate;
}
public void setCstate(int cstate) {
	this.cstate = cstate;
}
public String getCemail() {
	return cemail;
}
public void setCemail(String cemail) {
	this.cemail = cemail;
}
@Override
public String toString() {
	return "Coach [cid=" + cid + ", cphone=" + cphone + ", cname=" + cname
			+ ", cnumber=" + cnumber + ", cmodel=" + cmodel + ", cdrivetime="
			+ cdrivetime + ", cdesc=" + cdesc + ", cpwd=" + cpwd + ", cage="
			+ cage + ", csex=" + csex + ", cdate=" + cdate + ", cstate="
			+ cstate + ", cemail=" + cemail + ", appointment=" + appointment
			+ "]";
}


}
