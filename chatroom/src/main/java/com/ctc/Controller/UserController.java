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
@RequestMapping(value="/user")
public class UserController {

	@Resource
	UserService userServiceImpl;
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login()
	{
		return "/user/login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@RequestParam("userName") String userName,
			            @RequestParam("passWord") String passWord,
			            HttpSession session,Model model)
	{
		List<User> list=userServiceImpl.checkLogin(userName, passWord);
		boolean flag=list.isEmpty();
		session.setAttribute("flag", flag);
		if(null != list && 0 < list.size()){
			model.addAttribute("userName", userName);
			return "/chat/chatroom";
		}
		return "redirect:/login";		
	}

	@RequestMapping(value="/addUser",method=RequestMethod.GET)
	public String userAdd()
	{
		return "/user/userAdd";
	}
	
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public String userAdd(@ModelAttribute("user") User user)
	{
		userServiceImpl.addUser(user);
		return "redirect:/user/login";
	}

	@RequestMapping(value="/userManage",method=RequestMethod.GET)
	public String userManage(Model model)
	{
		
		model.addAttribute("pagers", userServiceImpl.userList());
		return "userManage";
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(Model model)
	{
		
		return "/user/index";
	}
	
	@RequestMapping(value="/userShow/{id}",method=RequestMethod.GET)
	public String userShow(@PathVariable int id,Model model)
	{
		User user=userServiceImpl.showUser(id);
		model.addAttribute(user);
		return "/user/userShow";
		
	}
	
	@RequestMapping(value="/userUpdate/{id}" ,method=RequestMethod.GET)
	public String userUpdate(@PathVariable int id,Model model)
	{
		User user=userServiceImpl.showUser(id);
		model.addAttribute(user);
		return "/user/userUpdate";
		
	}
	
	@RequestMapping(value="/userUpdate", method=RequestMethod.POST)
	public String userUpdate(@ModelAttribute("user") User user,Model model)
	{
		userServiceImpl.updateUser(user);
		return "redirect:/userUpdate/"+user.getId();
		
	}
	
	@RequestMapping(value="/userDelete/{id}", method=RequestMethod.GET)
	public String userDelete(@PathVariable int id)
	{
		userServiceImpl.deleteUser(id);
		return "redirect:/userManage";
	}


}
