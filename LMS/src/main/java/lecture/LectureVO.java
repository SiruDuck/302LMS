package lecture;

import java.sql.Date;

public class LectureVO {

	private String  capacity, reception_status, sortation, lecture_title, lectur_room, teacher_name, semester, department_id, lecture_time, enrolment;
	private int lecture_num;
	private Date lecture_startdate, lecture_enddate;
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getReception_status() {
		return reception_status;
	}
	public void setReception_status(String reception_status) {
		this.reception_status = reception_status;
	}
	public String getSortation() {
		return sortation;
	}
	public void setSortation(String sortation) {
		this.sortation = sortation;
	}
	public String getLecture_title() {
		return lecture_title;
	}
	public void setLecture_title(String lecture_title) {
		this.lecture_title = lecture_title;
	}
	public String getLectur_room() {
		return lectur_room;
	}
	public void setLectur_room(String lectur_room) {
		this.lectur_room = lectur_room;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getLecture_time() {
		return lecture_time;
	}
	public void setLecture_time(String lecture_time) {
		this.lecture_time = lecture_time;
	}
	public String getEnrolment() {
		return enrolment;
	}
	public void setEnrolment(String enrolment) {
		this.enrolment = enrolment;
	}
	public int getLecture_num() {
		return lecture_num;
	}
	public void setLecture_num(int lecture_num) {
		this.lecture_num = lecture_num;
	}
	public Date getLecture_startdate() {
		return lecture_startdate;
	}
	public void setLecture_startdate(Date lecture_startdate) {
		this.lecture_startdate = lecture_startdate;
	}
	public Date getLecture_enddate() {
		return lecture_enddate;
	}
	public void setLecture_enddate(Date lecture_enddate) {
		this.lecture_enddate = lecture_enddate;
	}
	
	
	}
