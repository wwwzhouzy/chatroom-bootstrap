package com.zzy.chat;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.corundumstudio.socketio.AckRequest;
import com.corundumstudio.socketio.Configuration;
import com.corundumstudio.socketio.SocketIOClient;
import com.corundumstudio.socketio.SocketIOServer;
import com.corundumstudio.socketio.listener.DataListener;

public class ChatLauncher implements ServletContextListener{

    public static void main(String[] args) throws InterruptedException {

        Configuration config = new Configuration();
        config.setHostname("localhost");
        config.setPort(9092);

        final SocketIOServer server = new SocketIOServer(config);
        server.addEventListener("chatevent", ChatObject.class, new DataListener<ChatObject>() {
            @Override
            public void onData(SocketIOClient client, ChatObject data, AckRequest ackRequest) {
                // broadcast messages to all clients
                server.getBroadcastOperations().sendEvent("chatevent", data);
            }
        });

        server.start();

        Thread.sleep(Integer.MAX_VALUE);

        server.stop();
    }
    
    public void chatStart() throws InterruptedException {
    	 Configuration config = new Configuration();
         config.setHostname("localhost");
         config.setPort(9092);

         final SocketIOServer server = new SocketIOServer(config);
         server.addEventListener("chatevent", ChatObject.class, new DataListener<ChatObject>() {
             @Override
             public void onData(SocketIOClient client, ChatObject data, AckRequest ackRequest) {
                 // broadcast messages to all clients
                 server.getBroadcastOperations().sendEvent("chatevent", data);
             }
         });

         server.start();
         System.out.println("========netty启动成功");
         /*Thread.sleep(Integer.MAX_VALUE);

         server.stop();*/
    }
    
    @Override  
    public void contextInitialized(ServletContextEvent arg0) {  
    	System.out.println("========启动开始");
	    try{
	    	chatStart();
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
    }  
      
    @Override  
    public void contextDestroyed(ServletContextEvent arg0) {  
        // TODO Auto-generated method stub  
          
    }  

}
