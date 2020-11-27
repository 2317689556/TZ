package spring.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import spring.pojo.PbObjectInfo;
import spring.service.ZFService;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class ZFController {

    @Resource
    private ZFService zfService;

    @RequestMapping("/findInfo")
    @ResponseBody
    public List<PbObjectInfo> findInfo() {

        return zfService.findInfo();
    }
    @RequestMapping("/findInfoOrder")
    @ResponseBody
    public List<PbObjectInfo> findInfoOrder() {

        return zfService.findInfoOrder();
    }
}
