package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import spring.pojo.*;
import spring.service.YHYService;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/yhy")
public class YHYController {

    @Resource
    private YHYService yhyService;

    /*标的详细信息*/
    @RequestMapping("findById/{seqId}")
    public String findById(Model model,@PathVariable Integer seqId){

        List<Yhy> y=yhyService.findById(seqId);
        model.addAttribute("y",y);
        System.out.println(y);
        return "bidding";
    }


    /*登录*/
    @RequestMapping("login")
    @ResponseBody
    public  User login(String passid,String password){
        User u=yhyService.login(passid,password);
        return u;
    }
}
