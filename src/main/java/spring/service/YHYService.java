package spring.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import spring.dao.YHYMapper;
import spring.pojo.*;

import javax.annotation.Resource;
import java.util.List;

@Service
public class YHYService {

    @Resource
    private YHYMapper yhyMapper;

    public List<Yhy> findById(Integer seqId){
        return yhyMapper.findById(seqId);
    }



    public User login(String passid,String password){
        return yhyMapper.login(passid,password);
    }
}
