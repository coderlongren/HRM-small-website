package top.dreamyy.hrm.domain;
/**
* @author 作者 : coderlong
* @version 创建时间：2017年12月28日 下午3:10:49
* 类说明: 
*/
public class WorkInfo {
	private String name;
	private String job;
	private String dept;
	private double salary;
	private String startTime;
	private String endTime;
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public WorkInfo(String name, String job, String dept, double salary, String startTime, String endTime) {
		super();
		name = name;
		this.job = job;
		this.dept = dept;
		this.salary = salary;
		this.startTime = startTime;
		this.endTime = endTime;
	}
	public WorkInfo() {
		
	}
	@Override
	public String toString() {
		return "WorkInfo [Name=" + name + ", job=" + job + ", dept=" + dept + ", salary=" + salary + ", startTime="
				+ startTime + ", endTime=" + endTime + "]";
	}

	
	
}
