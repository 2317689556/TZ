package spring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import spring.pojo.Fzytest;
import spring.pojo.PbObjectInfo;
import spring.service.FZYService;
import spring.utils.Result;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("PbObject")
public class FZYController {
    @Autowired
    private FZYService fzyService;

    @RequestMapping("PbObjectFindAllById")
    public String PbObjectFindAllById(Integer id, HttpSession session){
        System.out.println(id);
        List<Fzytest> list = fzyService.AbnormalFindAllById(id);
        System.out.println(list);
        session.setAttribute("list",list);
        return "project";

    }
}
