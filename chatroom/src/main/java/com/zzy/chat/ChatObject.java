package com.zzy.chat;

public class ChatObject {

    private String userName;
    private String message;
    private String type;	//1：客户发�? 0：坐席发�?
    public ChatObject() {
    }

    public ChatObject(String userName, String message) {
        super();
        this.userName = userName;
        this.message = message;
    }

    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

    
}
