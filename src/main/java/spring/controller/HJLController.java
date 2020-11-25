package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import spring.service.HJLService;

@Controller
public class HJLController {
    @Autowired
    private HJLService hjlService;

}
