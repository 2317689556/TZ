package spring.dao;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import spring.pojo.*;

import java.util.List;

@Repository
public interface YHYMapper {

    List<Yhy> findById(Integer seqId);

    User login(@Param("passid") String passid,@Param("password") String password);
}
