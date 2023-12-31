package com.carSystem.action.user;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.carSystem.entity.Brand;
import com.carSystem.entity.Comment;
import com.carSystem.entity.Login;
import com.carSystem.entity.Order;
import com.carSystem.entity.Person;
import com.carSystem.service.LoginService;
import com.carSystem.service.OrderService;
import com.carSystem.service.PersonService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/user")
public class UserInfoAction {

	@Autowired
	private PersonService personService;
	
	@Autowired
	private LoginService loginSevice;
	
	@Autowired
	private OrderService orderService;
	
	//添加addpinglun
	@RequestMapping("/addpinglun")
	public String addpinglun(Comment comment ,Map<String, Object> map){
		orderService.addComment(comment);
		return "user/order/commentfinish";
	}
	
	//订单详情查看
		@RequestMapping("OrderDetails")
		public String orderDetails(Map<String, Object> map, String order_id){
			Order order = (Order) orderService.queryOrderById(order_id);
			map.put("orderDetails", order);
			return "user/order/order_details";
		}
	
	
	//初始化用户更新页面
	@RequestMapping("/updateInfoInit")
	public String updateInfoInit(HttpSession session, Map<String, Object> map){
		Login login = (Login) session.getAttribute("loginSession");
		if(login == null){
			return "redirect:/loginInitAction";
		}else if( !login.getLogin_permission().equals("user")){
			return "redirect:/loginInitAction";
		}
		Person person = personService.queryPersonById(login.getLogin_id());
		map.put("updatePersonInfo", person);
		return "user/userInfo/updateInfo";
	}
	
	//保存用户修改后的个人信息
	@RequestMapping("/saveUpdatePersonInfo")
	public String saveUpdatePersonInfo(Person person, Map<String, Object> map){
		personService.saveUpdatePersonInfo(person);
		return "redirect:/user/updateInfoInit";
	}
	
	//利用ajax确定修改后的电话号码没有被注册
	@RequestMapping("/ajaxTextTelExist")
	public void ajaxGetStu_name(HttpServletRequest request, HttpServletResponse response, String person_tel) throws UnsupportedEncodingException{
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		boolean boolTel = personService.textTelExist(person_tel);
		String json = new Gson().toJson(boolTel);
		try {
			response.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//修改用户的密码
	@RequestMapping("/changePassword")
	public String changePassword(String oldPwd, String newPwd, Map<String, Object> map, HttpSession session){
		Login login = (Login) session.getAttribute("loginSession");
		if(login == null){
			return "redirect:/loginInitAction";
		}else if( !login.getLogin_permission().equals("user")){
			return "redirect:/loginInitAction";
		}
		
		if( ! login.getLogin_password().equals(oldPwd)){	//输入密码错误
			map.put("changePwdError", "您输入的原密码错误");
			return "user/userInfo/changePassword";
		}
		
		login.setLogin_password(newPwd);
		loginSevice.saveLogin(login);
		map.put("changePwdSuccess", "恭喜您，修改密码成功");
		return "user/userInfo/changePassword";
	}
}
