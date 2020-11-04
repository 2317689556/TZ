package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.*;
import spring.response.BaseResponse;
import spring.service.UserService;
import spring.response.StatusCode;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

//用户
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    UserService userService;


    //奥德赛 董莽修改
    @RequestMapping("login")
    public String login(user user, HttpSession session) {
        System.out.println("进来了");
        spring.pojo.user user1 = userService.login(user);
        if (user1 != null) {
            session.setAttribute("USER", user1);
            return "index";
        } else {
            return "login";
        }
    }

    /*轮播图查询*/
    @RequestMapping("lunbo")
    @ResponseBody
    public BaseResponse lunbo(){
        List<aoyoCommodityImg> list = userService.lunbo();
        return new BaseResponse(200,"成功！",list);
    }

    /*活动图查询*/
    @RequestMapping("huodong")
    @ResponseBody
    public BaseResponse huodong(){
        List<aoyoPlatformImage> list = userService.hudong();
        return new BaseResponse(200,"成功！",list);
    }

    /*保养套餐查询*/
    @RequestMapping("taocan")
    @ResponseBody
    public BaseResponse taocan(){
        List<aoyoCommoditySuit> list = userService.taocan();
        return new BaseResponse(200,"成功！",list);
    }



    //查询所有的省
    @RequestMapping("selectProv")

    public List<aoyoProvince> selectedProv(){

        return userService.selectedProv();
    }

    /*selectCity*/
    @RequestMapping("selectCity")

    public List<aoyoCity> selectCity(Integer asd){
        System.out.println(asd+"_____________________________");

        return userService.selectCity(asd);
    }

    /*selectareas*/
    @RequestMapping("selectAreas")

    public List<aoyoArea> selectAreas(String asd){
        System.out.println(asd+"_____________________________");

        return userService.selectAreas(asd);
    }

    /*查询所有的标签页*/
    @RequestMapping("selectAddLabelAll")
    public List<aoyoAddressLabel> selectAddLabelAll( ){

        return userService.selectAddLabelAll();
    }

    /*添加新的地址简直是太难了*/
    @RequestMapping("addressInsert")
    public BaseResponse addressInsert(aoyoAddress aoyoAddress){

        System.out.println(aoyoAddress.toString());

        int i  = userService.addressInsert(aoyoAddress);
        if(i>0){
            return  new BaseResponse(StatusCode.Success,i);
        }

        return new BaseResponse(StatusCode.Fail,i);
    }

    /*优惠券查询*/
    @RequestMapping("youhuiquan")
    @ResponseBody
    public BaseResponse youhuiquan(){
        List<aoyoCoupon> list = userService.youhuiquan();
        return new BaseResponse(200,"成功！",list);
    }


    /*首页分类查询*/
    @RequestMapping("fenlei")
    @ResponseBody
    public BaseResponse fenlei(){
        List<aoyoPanel> list = userService.fenlei();
        return new BaseResponse(200,"成功！",list);
    }

    /*购物车列表查询*/
    @RequestMapping("goshopping")
    @ResponseBody
    public BaseResponse goshopping(){
        List<goshopping> list = userService.goshopping();
        System.out.println(list);
        return new BaseResponse(200,"成功！",list);
    }


}
