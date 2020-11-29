package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.CJLMapper;
import spring.pojo.PbClient;
import spring.pojo.PbEnterprise;
import spring.pojo.PbUser;

import javax.annotation.Resource;

@Service
public class CJLService {
    @Resource
    private CJLMapper cjlMapper;

    public int wtradd(PbClient client) {
        return cjlMapper.wtradd(client);
    }

    public int qyadd(PbEnterprise enterprise) {
        return cjlMapper.qyadd(enterprise);
    }

    public int gradd(PbUser pbUser) {
        return cjlMapper.gradd(pbUser);
    }

    public PbUser LoginGr(String userNum, String userPassword) {
        return cjlMapper.LoginGr(userNum,userPassword);
    }
}