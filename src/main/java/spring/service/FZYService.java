package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.FZYMapper;
import spring.pojo.Fzytest;
import spring.pojo.PbObjectInfo;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FZYService {

    @Resource
    private FZYMapper fzyMapper;


    public List<Fzytest> AbnormalFindAllById(Integer id) {
        return fzyMapper.AbnormalFindAllById(id);
    }
}
