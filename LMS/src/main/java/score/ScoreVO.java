package score;

public class ScoreVO {
	private String  id, department_id, semester, lecture_title;
	private int lecture_num;
	private double  semesterpoint;
	
	
	
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
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
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
