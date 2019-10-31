package com.qfedu.controller;

import com.qfedu.common.MyException;
import com.qfedu.pojo.User;
import com.qfedu.service.UserService;
import com.qfedu.vo.JsonBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2019/6/15.
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login.do")
    public JsonBean login (String bankcard, String password, HttpSession session  ){

        Integer count = (Integer)session.getAttribute("count");
        if(count == null){
            count = 0;
        }
        try {
            User user3 = userService.login(bankcard, password);
            session.removeAttribute("count");
            session.setAttribute("user", user3);
            return new JsonBean(1, null);
        }catch(MyException e){
            // 密码错误
            if(e.getErrorCode() == 2){

                if(count == 3){
                    return new JsonBean(0, "账户已冻结");
                }

                count++;
                if(count == 3){
                    // 冻结账户
                    User u = new User();
                    u.setBankcard(bankcard);
                    u.setState(0);
                    userService.update(u);
                }
                session.setAttribute("count", count);
            }
            return new JsonBean(0, e.getErrorMsg());
        }
        catch (Exception e) {

            e.printStackTrace();
            return new JsonBean(0, e.getMessage());
        }

    }

    @RequestMapping("/logout.do")
    public JsonBean logout(HttpSession session){
        User user = (User)session.getAttribute("user");
        if(user != null){
            session.invalidate();
        }
        return new JsonBean(1, null);
    }

    }


