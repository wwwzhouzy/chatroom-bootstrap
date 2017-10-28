package com.ctc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ctc.Model.User;
import com.ctc.Service.UserService;

/**
 * 
 * @author Tency
 * 
 * Date 2016/11
 */
@Controller
@RequestMapping(value="/chat")
public class ChatController {

	
	@RequestMapping(value="/chatroom",method=RequestMethod.GET)
	public String login()
	{
		return "chatroom";
	}
	


}
