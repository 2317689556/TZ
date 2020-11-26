package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.ZFMapper;
import spring.pojo.PbObjectInfo;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ZFService {
    @Resource
    private ZFMapper zfMapper;

    public List<PbObjectInfo> findInfo(){
        return zfMapper.findInfo();
    }

    public List<PbObjectInfo> findInfoOrder() {
        return zfMapper.findInfoOrder();
    }
}
