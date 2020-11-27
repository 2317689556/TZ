package spring.dao;

import spring.pojo.PbObjectInfo;

import java.util.List;

public interface ZFMapper {
    List<PbObjectInfo> findInfo();

    List<PbObjectInfo> findInfoOrder();
}
