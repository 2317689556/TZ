package spring.pojo;

import lombok.Data;

@Data
public class PbUser {

  private Integer userId;//用户ID
  private String userNum;//账号
  private String userPassword;//密码
  private String userName;//用户姓名
  private String userIdcard;//身份证号码
  private String userBankAccount;//银行卡号
  private String userBankName;//用户银行账户名
  private long userClient;//委托人
  private String userAddress;//用户地址
  private String userPhone;//用户电话


}
