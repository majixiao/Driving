package cn.mjx.students.vo;

import java.util.HashSet;
import java.util.Set;

import cn.mjx.record.vo.Record;

public class Students {
	private int sid;
	private String sname;
	private String sphone;
	private String ssex;
	private int sage;
	private String spw;
	private String semail;
	private Set<Record> records=new HashSet<Record>();
	
	public Set<Record> getRecords() {
		return records;
	}
	public void setRecords(Set<Record> records) {
		this.records = records;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSphone() {
		return sphone;
	}
	public void setSphone(String sphone) {
		this.sphone = sphone;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	public int getSage() {
		return sage;
	}
	public void setSage(int sage) {
		this.sage = sage;
	}
	public String getSpw() {
		return spw;
	}
	public void setSpw(String spw) {
		this.spw = spw;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	@Override
	public String toString() {
		return "Students [sid=" + sid + ", sname=" + sname + ", sphone="
				+ sphone + ", ssex=" + ssex + ", sage=" + sage + ", spw=" + spw
				+ ", semail=" + semail + "]";
	}
	
}
