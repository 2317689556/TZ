package spring.pojo;

import lombok.Data;

@Data
public class PbClient {

  private Integer clId;
  private String clUnitName;//单位名称
  private String clPhone;//联系人手机号
  private String passid;//代码证
  private String clFrName;//法人姓名
  private String password;//登录密码
  private String clFrIdCard;//法人身份证
  private String clAddress;//单位地址
  private String clFrphone;//法人手机号

  private String clName;
  private String clContactsIdCard;;
  private String clNum;
}
