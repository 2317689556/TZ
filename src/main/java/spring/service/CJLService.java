package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.CJLMapper;
import spring.pojo.PbUser;

import javax.annotation.Resource;

@Service
public class CJLService {
    @Resource
    private CJLMapper cjlMapper;
}