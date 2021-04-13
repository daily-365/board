package web.dto;

public class MemberDTO {

private String	userId;
private String userPw;
private String	userName;
private String	userGender;
private String	userBirth;
private String	userPhone;
private String	userMail;

private int verify;


public int getVerify() {
	return verify;
}
public void setVerify(int verify) {
	this.verify = verify;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getUserPw() {
	return userPw;
}
public void setUserPw(String userPw) {
	this.userPw = userPw;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserGender() {
	return userGender;
}
public void setUserGender(String userGender) {
	this.userGender = userGender;
}
public String getUserBirth() {
	return userBirth;
}
public void setUserBirth(String userBirth) {
	this.userBirth = userBirth;
}
public String getUserPhone() {
	return userPhone;
}
public void setUserPhone(String userPhone) {
	this.userPhone = userPhone;
}
public String getUserMail() {
	return userMail;
}
public void setUserMail(String userMail) {
	this.userMail = userMail;
}


	
}
