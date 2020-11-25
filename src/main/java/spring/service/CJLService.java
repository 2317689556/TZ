package spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.dao.CJLMapper;

@Service
public class CJLService {
    @Autowired
    private CJLMapper cjlMapper;


}
