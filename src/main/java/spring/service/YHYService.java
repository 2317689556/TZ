package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.YHYMapper;
import spring.pojo.Yhy;

import javax.annotation.Resource;
import java.util.List;

@Service
public class YHYService {

    @Resource
    private YHYMapper yhyMapper;

    public List<Yhy> findById(Integer seqId){
        return yhyMapper.findById(seqId);
    }
}
