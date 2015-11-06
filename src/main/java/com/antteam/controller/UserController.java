package com.antteam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anttam.service.IUserService;
import com.antteam.bean.User;
import com.antteam.utils.Pagination;
import com.antteam.utils.PaginationBean;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/queryListPage")
	public ModelAndView queryItemsPage(){
		ModelAndView mv =new ModelAndView();
		mv.setViewName("user/queryList");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/queryList")
	public Map<Object,Object> queryItems(HttpServletRequest request,HttpServletResponse response,PaginationBean<User> queryBean){
		Map<Object,Object> map=new HashMap<Object, Object>();
		try {
			List<User> numberList=userService.query(queryBean);
			int total=userService.count(queryBean);
			map.put("total", total);//total代表一共有多少数据  
	        map.put("rows", numberList);//row是代表显示的页的数据	
		} catch (Exception e) {
			e.printStackTrace();
		}
        return map;

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
	
	@RequestMapping(value="/addPage",method=RequestMethod.GET)
	public ModelAndView addPage(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("user/editPage");
		return mv;
	}
	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public boolean save(User user){
		try {
			if(user!=null && user.getId()!=null){
				userService.updateByPrimaryKeySelective(user);
			}else{
				user.setPassword("123456");
				userService.insertSelective(user);
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
}
