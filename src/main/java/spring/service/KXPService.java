package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.KXPMapper;

import javax.annotation.Resource;

/**
 * @program: TZ
 * @description:
 * @author: 孔祥鹏
 * @create: 2020-11-25 13:51
 **/
@Service
public class KXPService {
    @Resource
    private KXPMapper kxpMapper;

}

