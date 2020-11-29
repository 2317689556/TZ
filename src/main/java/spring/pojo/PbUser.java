package spring.pojo;

import lombok.Data;

@Data
public class PbUser {

  private Integer userId;//用户ID
  private String userName;//用户姓名
  private String passid;//账号
  private String userIdcard;//身份证号码
  private String password;//密码
  private String userPhone;//用户电话
  private String userBankAccount;//银行卡号
  private String userBankName;//用户银行账户名



  private Integer userClient;//委托人
  private String userAddress;//用户地址
}
