package cn.mjx.record.vo;

import java.util.Date;

import cn.mjx.appointment.vo.Appointment;
import cn.mjx.students.vo.Students;

public class Record {
private int rid;
private Date rdate;
private Students students;
private Appointment appointment;
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
public Date getRdate() {
	return rdate;
}
public void setRdate(Date rdate) {
	this.rdate = rdate;
}
public Students getStudents() {
	return students;
}
public void setStudents(Students students) {
	this.students = students;
}
public Appointment getAppointment() {
	return appointment;
}
public void setAppointment(Appointment appointment) {
	this.appointment = appointment;
}
}


