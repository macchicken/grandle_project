package example;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWorldSecAction extends ActionSupport{

	 private static final long serialVersionUID = 1L;
	 
	    private MessageStore messageStore;
	    private String userName;
	    
	    private static int helloCount = 0;

	    public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public int getHelloCount() {
	    	return helloCount;
	    }
	    public void setHelloCount(int helloCount) {
	    	HelloWorldSecAction.helloCount = helloCount;
	    }

	    public String execute() throws Exception {
	    	helloCount++;
	        messageStore = new MessageStore();
	        if (userName!=null&&!"".equals(userName.trim())){
	        	messageStore.setMessage(messageStore.getMessage()+" "+userName);
	        }
	        return SUCCESS;
	    }
	 
	    public MessageStore getMessageStore() {
	        return messageStore;
	    }
	 
	    public void setMessageStore(MessageStore messageStore) {
	        this.messageStore = messageStore;
	    }
}
