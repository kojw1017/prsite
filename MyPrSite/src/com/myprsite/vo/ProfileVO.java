package com.myprsite.vo;

import java.util.ArrayList;

public class ProfileVO {
	String id,area_select,introduce,
	job_select_input_content,category_tech1_input_content,
	univercity,univercity_major,attendance_status,
	certificate_name,certificate_date,certificate_agency,
	company,department,position,career_year,career_month;
	//String job_select_input_content,category_tech1_input_content;
	String face_file,univercity_file,certificate_file,career_file;
	String s_face_file,s_univercity_file,s_certificate_file,s_career_file;
	//String univercity,univercity_major;
	//String certificate_name,certificate_date,certificate_agency;
	//String company,department,position;
	ArrayList<String> face_list;
	ArrayList<String> face_id_list;
	
	public ArrayList<String> getFace_id_list() {
		return face_id_list;
	}

	public void setFace_id_list(ArrayList<String> face_id_list) {
		this.face_id_list = face_id_list;
	}

	public ArrayList<String> getFace_list() {
		return face_list;
	}

	public void setFace_list(ArrayList<String> face_list) {
		this.face_list = face_list;
	}

	public String getS_face_file() {
		return s_face_file;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setS_face_file(String s_face_file) {
		this.s_face_file = s_face_file;
	}

	public String getS_univercity_file() {
		return s_univercity_file;
	}

	public void setS_univercity_file(String s_univercity_file) {
		this.s_univercity_file = s_univercity_file;
	}

	public String getS_certificate_file() {
		return s_certificate_file;
	}

	public void setS_certificate_file(String s_certificate_file) {
		this.s_certificate_file = s_certificate_file;
	}

	public String getS_career_file() {
		return s_career_file;
	}

	public void setS_career_file(String s_career_file) {
		this.s_career_file = s_career_file;
	}

	public String getFace_file() {
		return face_file;
	}

	public void setFace_file(String face_file) {
		this.face_file = face_file;
	}

	public String getUnivercity_file() {
		return univercity_file;
	}

	public void setUnivercity_file(String univercity_file) {
		this.univercity_file = univercity_file;
	}

	public String getCertificate_file() {
		return certificate_file;
	}

	public void setCertificate_file(String certificate_file) {
		this.certificate_file = certificate_file;
	}

	public String getCareer_file() {
		return career_file;
	}

	public void setCareer_file(String career_file) {
		this.career_file = career_file;
	}

	public String getUnivercity() {
		return univercity;
	}

	public void setUnivercity(String univercity) {
		this.univercity = univercity;
	}

	public String getUnivercity_major() {
		return univercity_major;
	}

	public void setUnivercity_major(String univercity_major) {
		this.univercity_major = univercity_major;
	}

	public String getCertificate_name() {
		return certificate_name;
	}

	public void setCertificate_name(String certificate_name) {
		this.certificate_name = certificate_name;
	}

	public String getCertificate_date() {
		return certificate_date;
	}

	public void setCertificate_date(String certificate_date) {
		this.certificate_date = certificate_date;
	}

	public String getCertificate_agency() {
		return certificate_agency;
	}

	public void setCertificate_agency(String certificate_agency) {
		this.certificate_agency = certificate_agency;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getCategory_tech1_input_content() {
		return category_tech1_input_content;
	}

	public void setCategory_tech1_input_content(String category_tech1_input_content) {
		this.category_tech1_input_content = category_tech1_input_content;
	}

	public String getJob_select_input_content() {
		return job_select_input_content;
	}

	public void setJob_select_input_content(String job_select_input_content) {
		this.job_select_input_content = job_select_input_content;
	}

	

	public String getArea_select() {
		return area_select;
	}

	public void setArea_select(String area_select) {
		this.area_select = area_select;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}



	

	public String getAttendance_status() {
		return attendance_status;
	}

	public void setAttendance_status(String attendance_status) {
		this.attendance_status = attendance_status;
	}

	public String getCareer_year() {
		return career_year;
	}

	public void setCareer_year(String career_year) {
		this.career_year = career_year;
	}

	public String getCareer_month() {
		return career_month;
	}

	public void setCareer_month(String career_month) {
		this.career_month = career_month;
	}

	
}
