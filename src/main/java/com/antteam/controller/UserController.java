package com.antteam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anttam.service.IUserService;
import com.antteam.bean.User;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/queryListPage",method = RequestMethod.GET)
	public ModelAndView queryItemsPage(){
		ModelAndView mv =new ModelAndView();
		mv.setViewName("user/queryList");
		return mv;
	}
	
	@RequestMapping(value="/editPage/{id}",method=RequestMethod.GET)
	public ModelAndView editPage(@PathVariable Integer id){
		ModelAndView mv=new ModelAndView();
		try {
			if(id!=null && id>0){
				User user=userService.selectByPrimaryKey(id);
				mv.addObject("obj",user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("user/editPage");
		return mv;
	}
}
