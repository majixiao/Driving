package cn.mjx.appointment.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import cn.mjx.coach.vo.Coach;
import cn.mjx.record.vo.Record;

public class Appointment {
	private int pid;
	private String pname;
	private int pnumber;
	private Date pdate;
	private int premaining;
	private Date pstarttime;

	private String pdesc;
	private Coach coach;
	private Set<Record> records = new HashSet<Record>();

	public Set<Record> getRecords() {
		return records;
	}

	public void setRecords(Set<Record> records) {
		this.records = records;
	}

	public Date getPstarttime() {
		return pstarttime;
	}

	public void setPstarttime(Date pstarttime) {
		this.pstarttime = pstarttime;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPnumber() {
		return pnumber;
	}

	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public int getPremaining() {
		return premaining;
	}

	public void setPremaining(int premaining) {
		this.premaining = premaining;
	}

	public String getPdesc() {
		return pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public Coach getCoach() {
		return coach;
	}

	public void setCoach(Coach coach) {
		this.coach = coach;
	}

	@Override
	public String toString() {
		return "Appointment [pid=" + pid + ", pname=" + pname + ", pnumber="
				+ pnumber + ", pdate=" + pdate + ", premaining=" + premaining
				+ ", pstarttime=" + pstarttime + ", pdesc=" + pdesc
				+ ", coach=" + coach + "]";
	}

}
