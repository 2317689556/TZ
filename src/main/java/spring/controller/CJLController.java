package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.service.CJLService;

@Controller
@RequestMapping("cjl")
public class CJLController {
    @Autowired
    private CJLService cjlService;


}
