package spring.pojo;

import lombok.Data;

@Data
public class PbEnterprise {

  private Integer epId;//企业ID
  private String epQyname;//企业名称
  private String epName;//联系人姓名
  private String passid;//社会信用代码证
  private String epPhone;//联系人手机号
  private String password;//企业密码
  private String epContactsIdCard;//联系人身份证
  private String epBankAccount;//银行账号
  private String epAddress;//企业地址
  private String epBankName;//账户名
  private String epFrName;//法人姓名
  private String epFrIdCard;//法人身份证
}
