package score;

public class ScoreVO {
	private String  id, department_id, semester, lecture_title,teacher_name,subjectcredit, year, lecture_year;
	private int lecture_num, info_cd;
	private double  semesterpoint;
	
	
	
	
	
	public int getInfo_cd() {
		return info_cd;
	}
	public void setInfo_cd(int info_cd) {
		this.info_cd = info_cd;
	}
	public String getLecture_year() {
		return lecture_year;
	}
	public void setLecture_year(String lecture_year) {
		this.lecture_year = lecture_year;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getSubjectcredit() {
		return subjectcredit;
	}
	public void setSubjectcredit(String subjectcredit) {
		this.subjectcredit = subjectcredit;
	}
	
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getLecture_title() {
		return lecture_title;
	}
	public void setLecture_title(String lecture_title) {
		this.lecture_title = lecture_title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	
	public int getLecture_num() {
		return lecture_num;
	}
	public void setLecture_num(int lecture_num) {
		this.lecture_num = lecture_num;
	}
	public double getSemesterpoint() {
		return semesterpoint;
	}
	public void setSemesterpoint(double semesterpoint) {
		this.semesterpoint = semesterpoint;
	}
	
	
	
	
}
