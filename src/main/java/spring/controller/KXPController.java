package spring.controller;

import org.springframework.stereotype.Controller;
import spring.service.KXPService;

import javax.annotation.Resource;

/**
 * @program: TZ
 * @description:
 * @author: 孔祥鹏
 * @create: 2020-11-25 13:50
 **/
@Controller
public class KXPController {
    @Resource
    private KXPService kxpService;



}

