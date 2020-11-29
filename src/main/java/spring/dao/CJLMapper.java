package spring.dao;

import org.apache.ibatis.annotations.Param;
import spring.pojo.PbClient;
import spring.pojo.PbEnterprise;
import spring.pojo.PbUser;

public interface CJLMapper {

    int wtradd(PbClient client);

    int qyadd(PbEnterprise enterprise);

    int gradd(PbUser pbUser);

    PbUser LoginGr(@Param("userNum") String userNum, @Param("userPassword") String userPassword);
}