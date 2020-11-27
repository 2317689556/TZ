package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import spring.pojo.PbUser;
import spring.pojo.utils.MD5Utils;
import spring.pojo.utils.VerifyCodeUtils;
import spring.service.CJLService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("cjl")
public class CJLController {

    @Resource
    private CJLService cjlService;

    //图片验证码
    @RequestMapping("/autoImage")
    public void autoImage(HttpServletResponse response, HttpSession session) throws IOException {
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setContentType("image/jpeg");
        //生成随机字符串
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
        //存入会话session
        //删除以前的
        session.removeAttribute("verCode");
        session.setAttribute("verCode", verifyCode.toLowerCase());
        //生成图片
        int w = 100, h = 38;
        VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
    }

    //登录__验证图片验证码
    @ResponseBody
    @RequestMapping("/checkCodestext")
    public boolean checkCodestext(String codestext, HttpSession session) {
        String verCode = (String) session.getAttribute("verCode");

        if (verCode == null) {
            return false;
        } else if (!codestext.equalsIgnoreCase(verCode)) {
            return false;
        }
        return true;
    }
}
