package spring.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;
import spring.pojo.Fzytest;
import spring.pojo.PbObjectInfo;

import java.util.List;

public interface FZYMapper {

    List<Fzytest> AbnormalFindAllById(@Param("id") Integer id);
}
